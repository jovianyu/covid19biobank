#!/usr/bin/env python
# coding: utf-8

import xlrd
import glob
import csv
from datetime import datetime

STR_BIOBANK = "C:/Users/jovia/Box/COVID-19 Biobank/"

# Function to check if a value is an Excel value is a number
def is_number(s):
  try:
    float(s)
    return True
  except ValueError:
    return False

# Convert Luminex well coordinates from Excel sheets into a string to match output
def lumify(plate, x, y, reverse = False):
    if reverse:
        return str(x+y*8+1) + "(" + str(plate) + "," + chr(ord('@')+(x+1)) + str(y+1) + ")"
    else:
        return str(x*12+y+1) + "(" + str(plate) + "," + chr(ord('@')+(x+1)) + str(y+1) + ")"
    
# Since there are 3 files with identical header rows for the 30-plex samples, using
# logical variable to identify when it's already been printed into output CSV file
logHeader = False

# Storing output in luminex_30plex.csv in data folder
with open('data/cytokine/luminex_6plex.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    
    # For loop through 3 separate experiment days
    for intFolder in range(1,5):
        strCytokineFolder = STR_BIOBANK + "Cytokines/Raw luminex data/6Plex_Day" + str(intFolder)

        # First, opening Excel sheet with key for what each well represents
        strFile = glob.glob(strCytokineFolder + "/*.xls*")[0]
        print(strFile)
        sheet = xlrd.open_workbook(strFile).sheet_by_index(0)
        
        # 2 sets of dictionaries
        # 1 for mapping the Luminex coordinate to the sample info
        # 1 for mapping the experimental sample number to the sample info
        # Only reason for this elaborate schema is due to different schema used in each Excel sheet...
        coorddate = dict()
        coordsample = dict()
        coordbmp = dict()
        welldate = dict()
        wellsample = dict()
        wellbmp = dict()
        
        # Going through each row of each sheet. Skipping plate information on first pass.
        i = 0
        while i < sheet.nrows:
            if "Plate" in sheet.cell_value(i,0):
                i = i + 10
            j = 0
            
            # Due to the fact that the key for what sample # corresponds to what details is on a
            # random column, walking through each column to find the relevant one
            while j < sheet.ncols:
                # Skipping through empty cells...
                if sheet.cell_type(i, j) in (xlrd.XL_CELL_EMPTY, xlrd.XL_CELL_BLANK) or is_number(sheet.cell_value(i,j)):
                    j = j + 1
                else:
                    # If this is the system where there are NO plate duplicates denoting what samples
                    # are where, then read in each sample:information mapping
                    if "ID" in sheet.cell_value(i, j):
                        i = i + 1
                        while i < sheet.nrows:
                            c = sheet.cell_value(i,j)
                            if is_number(c):
                                c = str(int(c))
                            welldate[c] = "" if sheet.cell_value(i,j + 1) == "" else datetime(*xlrd.xldate_as_tuple(int(sheet.cell_value(i,j + 1)), 0))
                            wellsample[c] = sheet.cell_value(i,j + 2)
                            wellbmp[c] = sheet.cell_value(i,j + 3)
                            i = i + 1
                    # If this is the system where there ARE plate duplicates denoting what samples
                    # are where, then read in each the BMP sample info to parse date/patient
                    else:
                        i = i + 1
                        while i < sheet.nrows:
                            c = sheet.cell_value(i,j)
                            welldate[c] = "" if sheet.cell_value(i,j + 1) == "" else datetime(*xlrd.xldate_as_tuple(int(sheet.cell_value(i,j + 1)), 0))
                            wellsample[c] = str(int(sheet.cell_value(i,j + 2))) if is_number(sheet.cell_value(i,j + 2)) else sheet.cell_value(i,j + 2)
                            i = i + 1
                    j = sheet.ncols
            i = i + 1
        i = 0
        # Second time going through the Excel sheet
        while i < sheet.nrows:
            cell = sheet.cell_value(i,0)
            # For each plate
            if "Plate" in cell:
                plate = cell[6:]
                i = i + 2
                # If the plate has actual sample numbers, convert above info to coordinate system
                if is_number(sheet.cell_value(i,12)):
                    for x in range(0, 8):
                        for y in range(0, 12):
                            c = sheet.cell_value(i+x,1+y)
                            if is_number(c):
                                c = str(int(c))
                            if c in welldate.keys() and lumify(plate, x, y, (intFolder==2) | (intFolder==4)) not in coorddate.keys():
                                coorddate[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = welldate[c]
                                coordsample[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = wellsample[c]
                            if lumify(plate, x, y, (intFolder==2) | (intFolder==4)) not in coordbmp.keys():
                                coordbmp[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = c
                # If plate just has BMP sample info again, due to the few weirdly named BMP samples
                # match sample to patient/date
                else:
                    for x in range(0, 8):
                        for y in range(0, 12):
                            c = sheet.cell_value(i+x,1+y)
                            coordbmp[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = c
                            if is_number(c[0:4]):
                                cList = c.split("-")
                                coorddate[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = datetime(int("20" + cList[2][4:6]), int(cList[2][0:2]), int(cList[2][2:4]))
                                if "CTC" in cList[1]:
                                    coordsample[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = str(wellsample[c])
                                else:
                                    coordsample[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = str(int("".join([c for c in cList[1] if c.isdigit()])))
                            else:
                                if c in welldate.keys() and lumify(plate, x, y, (intFolder==2) | (intFolder==4)) not in coorddate.keys():
                                    coorddate[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = welldate[c]
                                    coordsample[lumify(plate, x, y, (intFolder==2) | (intFolder==4))] = str(wellsample[c])
                i = i + 8
            else:
                i = i + 1 
        # Reading in the actual Luminex output data
        strLuFile = glob.glob(strCytokineFolder + "/ACab*.csv")[0]
        print(strLuFile)
        dictLuminex = dict()
        with open(strLuFile, newline='', encoding="utf-8") as luminexdata:
            lumReader = csv.reader(luminexdata, delimiter=',')
            strData = ""
            for row in lumReader:
                # Marching through rows to add all Luminex data to dictionary
                if len(row) <= 1:
                    strData = ""
                if len(row) > 1:
                    if (row[0] == "DataType:"):
                        strData = row[1]
                        continue
                if strData != "":
                    # Everything "Units" and beyond is not per-well and not as useful, so breaking here
                    if strData == "Units":
                        break
                    else:
                        dictify = ("Avg" in strData) | ("Rep" in strData)
                    # Getting the header row in
                    if row[0] == "Location":
                        dictLuminex[strData] = []
                        dictLuminex[strData].append(row)
                    elif row[0] == "Sample":
                        dictLuminex[strData] = dict()
                        dictLuminex[strData]["HEADER"] = row[1:len(row)]
                    # Prior to removal of >/< signs, marking limits (> = MAX, < = MIN)
                    # Getting each of the result rows, removing >/< signs, converting NaN (controls) to 0
                    else:
                        if not dictify:
                            newRow = row[0:2] + \
                              [row[x].replace(" ", "").replace(">", "").replace("<", "").replace("NaN", "0").replace("N/A", "0") for x in range(2,len(row)-1)] + \
                              ["MIN" if row[x].find("<") > -1 else ("MAX" if row[x].find(">") > -1 else "") for x in range(2,len(row)-1)] + \
                              [row[len(row)-1]]
                            dictLuminex[strData].append(newRow)
                        else:
                            dictLuminex[strData][row[0]] = row[1:len(row)]
        # Filtering on the only Luminex results we care about for QC
        listLumResults = ["Result", "Count"]
        listLumResultsRepl = ["%CV Replicates"]
        # Only writing the header line once, should be the same across runs (hopefully)
        if not logHeader:
            logHeader = True
            # Adding in day that the Luminex was run, the BMP tube label name, the date the sample 
            # was collected, and the patient ID
            # Marking each cytokine with which section it's from
            # - Converting to lower case
            # - Removing symbols
            # - Concatenating with an underscore
            # - Doing it for each result group
            header = []
            for x in listLumResults:
                header = header + [y + "_" + x.lower().replace(" ", "-").replace("%", "") for y in dictLuminex[x][0][2:len(dictLuminex[x][0])-1]] + \
                  ["LIMIT" + y + "_" + x.lower().replace(" ", "-").replace("%", "") for y in dictLuminex[x][0][2:len(dictLuminex[x][0])-1]]
            for x in listLumResultsRepl:
                header = header + [y + "_" + x.lower().replace(" ", "-").replace("%", "") for y in dictLuminex[x]["HEADER"][0:int((len(dictLuminex["Result"][i])-3)/2)]]
            header = ["luminex_day", "bmp_sample", "date", "id"] + dictLuminex["Result"][0][0:2] + header + \
              [dictLuminex["Result"][0][len(dictLuminex["Result"][0])-1]]
            writer.writerow(header)
        # Writing actual results to to file, same process as above
        for i in range(1,len(dictLuminex["Result"])):
            sample = str(coordsample[dictLuminex["Result"][i][0]] if dictLuminex["Result"][i][0] in coordsample.keys() else "ControlSta")
            if ("Control" not in sample) & ("Sta" not in sample):
                row = ["6Plex" + str(intFolder),
                         coordbmp[dictLuminex["Result"][i][0]] if dictLuminex["Result"][i][0] in coordbmp.keys() else "",
                         coorddate[dictLuminex["Result"][i][0]] if dictLuminex["Result"][i][0] in coorddate.keys() else "",
                         coordsample[dictLuminex["Result"][i][0]] if dictLuminex["Result"][i][0] in coordsample.keys() else ""] + \
                        dictLuminex["Result"][i][0:2] + \
                        [y for x in listLumResults for y in dictLuminex[x][i][2:len(dictLuminex[x][i])-1]]
                additionalRow = []
                for x in listLumResultsRepl:
                  if dictLuminex["Result"][i][1] in dictLuminex[x].keys():
                    additionalRow = [y for y in dictLuminex[x][dictLuminex["Result"][i][1]][0:int((len(dictLuminex["Result"][i])-3)/2)]]
                  else:
                    additionalRow = ["" for y in dictLuminex[x]["HEADER"][0:int((len(dictLuminex["Result"][i])-3)/2)]]
                writer.writerow(
                    row + \
                    additionalRow + \
                    [dictLuminex["Result"][i][len(dictLuminex["Result"][i])-1]]
                )


