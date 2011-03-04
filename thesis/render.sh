#!/bin/bash

#
# This will work, although a proper Makefile or latexmk is recommended.
# latexmk -pvc -pdf main.tex
#

type=main
pdflatex $type.tex
bibtex   $type
pdflatex $type.tex
pdflatex $type.tex

rm -f *.aux *.bak *.log *.blg *.bbl *.toc *.out

