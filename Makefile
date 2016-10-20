thesis.pdf: thesis.dvi
	latex thesis.tex
	dvipdf thesis.dvi

thesis.dvi: thesis.tex library.bib
	latex thesis.tex

clean:
	rm thesis.aux thesis.bcf thesis.idx thesis.dvi thesis.lof thesis.log thesis.nlo thesis.out thesis.run.xml thesis.toc 
