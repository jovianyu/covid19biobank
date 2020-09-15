#!/usr/bin/env python
# coding: utf-8

## Preprocessing COVID-19 Datamart

### Getting list of file names
# - `STR_FOLDER`: Lcation of the Datamart folder
# - `STR_RAW`: Raw data folder
# - `STR_PREPROCESSED`: Output after preprocessing
# - `STR_TOY`: Output of toy data for testing
# - `INT_TOY`: Number of rows for toy data

from os import listdir
from os.path import isfile, join
STR_FOLDER = "C:/Users/jovia/Box/COVID-19 Biobank/Datamart/"
STR_RAW = "Datamart 08122020/"
STR_PREPROCESSED = "data-preprocessed/"
STR_TOY = "data-toy/"
INT_TOY = 10

strFilenames = [ f for f in listdir( STR_FOLDER + STR_RAW ) if isfile( join( STR_FOLDER + STR_RAW, f ) ) ]

### Preprocessing
# - Adding quotes to multiline strings
# - Removing ASCII null characters
# - Removing leading quotes
# - Creating preprocessed + toy data sets

for strFilename in strFilenames:
    with open( STR_FOLDER + STR_RAW + strFilename, "r", errors='ignore' ) as fRaw:
        with open( STR_FOLDER + STR_PREPROCESSED + strFilename, "w" ) as fPreprocess:
            print( "Processing: " + strFilename )
            fToy = open( STR_FOLDER + STR_TOY + strFilename, "w" )
            strHeader = fRaw.readline( )
            strExpectedDelim = strHeader.count( "|" )
            fPreprocess.write( strHeader )
            fToy.write( strHeader )
            strNextLine = fRaw.readline( )
            count = 0
            while ( len( strNextLine ) > 0 ):
                strNextLine = strNextLine.replace( "|\"", "|" ).replace( "\"", "\"\"" )
                while strNextLine.count( "|" ) < strExpectedDelim:
                    arrNextLine = strNextLine.split( "|" )
                    strNextLine = "|".join( arrNextLine[ 0:len( arrNextLine )-1 ] ) + "|\"" + arrNextLine[ len( arrNextLine )-1 ]
                    strNextNextLine = fRaw.readline( )
                    while strNextNextLine.count( "|" ) == 0:
                        strNextNextLine = strNextNextLine + fRaw.readline( )
                    arrNextNextLine = strNextNextLine.replace( "\"", "\"\"" ).split( "|" )
                    strNextLine = strNextLine + arrNextNextLine[0] + "\"|" + "|".join( arrNextNextLine[ 1:len( arrNextNextLine ) ] )
                strNextLine = strNextLine.replace('\x00', '').replace( "|\n", "|NA\n" )
#                strNextLine = strNextLine.replace( "||", "|NA|" )
#                strNextLine = strNextLine.replace( "||", "|NA|" )
#                strNextLine = strNextLine.replace( "| |", "|NA|" )
#                strNextLine = strNextLine.replace( "| |", "|NA|" )
#                strNextLine = strNextLine.replace( "| \n", "|NA\n" )
                if (count < INT_TOY):
                    fToy.write( strNextLine )
                else:
                    fToy.close( )
                count = count + 1
                fPreprocess.write( strNextLine )
                strNextLine = fRaw.readline( )
