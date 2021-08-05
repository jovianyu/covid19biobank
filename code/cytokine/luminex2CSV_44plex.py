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
def lumify(plate, x, y):
    return str(x*12+y+1) + "(" + str(plate) + "," + chr(ord('@')+(x+1)) + str(y+1) + ")"
    
# Since there are 3 files with identical header rows for the 30-plex samples, using
# logical variable to identify when it's already been printed into output CSV file
logHeader = False

# Storing output in luminex_44plex.csv in data folder
with open('data/cytokine/luminex_44plex.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    
    # 44Plex folder    
    strCytokineFolder = STR_BIOBANK + "Cytokines/Raw luminex data/44Plex_Day1"

    # First, opening Excel sheet with key for what each well represents
    strFile = glob.glob(strCytokineFolder + "/*.xls*")[0]
    print(strFile)
    sheet = xlrd.open_workbook(strFile).sheet_by_index(0)
    
    # 1 dictionary for mapping the experimental sample number to the sample info
    coorddate = dict()
    coordsample = dict()
    coordbmp = dict()

    # Going through each row of each sheet. Skipping plate information on first pass.
    i = 1
    while i < sheet.nrows:
        if "remove" not in sheet.cell_value(i,7):
            coordsample["Unknown" + str(int(sheet.cell_value(i,0)))] = str(int(sheet.cell_value(i,2))) if is_number(sheet.cell_value(i,2)) else sheet.cell_value(i,2)
            coordbmp["Unknown" + str(int(sheet.cell_value(i,0)))] = sheet.cell_value(i,5)
            coorddate["Unknown" + str(int(sheet.cell_value(i,0)))] = datetime(*xlrd.xldate_as_tuple(sheet.cell_value(i,3), 0)) if is_number(sheet.cell_value(i,3)) else ""
        i = i + 1

    # Reading in the actual Luminex output data
    strLuFile = glob.glob(strCytokineFolder + "/*.csv")[0]
    print(strLuFile)
    dictLuminex = dict()
    with open(strLuFile, newline='') as luminexdata:
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
            header = header + [y + "_" + x.lower().replace(" ", "-").replace("%", "") for y in dictLuminex[x]["HEADER"]]
        header = ["luminex_day", "bmp_sample", "date", "id"] + dictLuminex["Result"][0][0:2] + header + \
          [dictLuminex["Result"][0][len(dictLuminex["Result"][0])-1]]
        writer.writerow(header)
    # Writing actual results to to file, same process as above
    for i in range(1,len(dictLuminex["Result"])):
        if dictLuminex["Result"][i][1] in coorddate.keys():
            row = ["44Plex1",
                   coordbmp[dictLuminex["Result"][i][1]],
                   coorddate[dictLuminex["Result"][i][1]],
                   coordsample[dictLuminex["Result"][i][1]]] + \
                  dictLuminex["Result"][i][0:2] + \
                  [y for x in listLumResults for y in dictLuminex[x][i][2:len(dictLuminex[x][i])-1]]
            additionalRow = []
            for x in listLumResultsRepl:
              if dictLuminex["Result"][i][1] in dictLuminex[x].keys():
                additionalRow = [y for y in dictLuminex[x][dictLuminex["Result"][i][1]]]
              else:
                additionalRow = ["" for y in dictLuminex[x]["HEADER"]]
            writer.writerow(
                row + \
                additionalRow + \
                [dictLuminex["Result"][i][len(dictLuminex["Result"][i])-1]]
            )
    
