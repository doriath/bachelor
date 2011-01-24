.PHONY : all

main: main.tex
	pdflatex $<
	pdflatex $<
	bibtex   $@
	pdflatex $<

clean:
	rm -f *.aux *.bak *.log *.blg *.bbl *.toc *.out
