thesis.pdf: thesis.dvi
	latex thesis.tex
	dvipdf thesis.dvi

thesis.dvi: thesis.tex thesis.bbl
	latex thesis.tex

thesis.aux: thesis.tex
	latex thesis.tex

thesis.bbl: thesis.aux library.bib
	bibtex thesis.aux
