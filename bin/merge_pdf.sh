#!/bin/bash

# Just merges existing pdfs 

pdfunite $(ls *.pdf | sort --numeric | paste -s -d" ") merged.pdf
