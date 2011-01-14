#!/bin/bash

#
# This will work, although a proper Makefile or latexmk is recommended.
# latexmk -pvc -pdf main.tex
#

type=main
pdflatex thesis-$type.tex
bibtex   thesis-$type
pdflatex thesis-$type.tex
pdflatex thesis-$type.tex

rm -f *.aux *.bak *.log *.blg *.bbl *.toc *.out

