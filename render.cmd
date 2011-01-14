@echo off

pdflatex main.tex
bibtex   main
pdflatex main.tex
pdflatex main.tex

del *.aux *.bak *.log *.blg *.bbl *.toc *.out