thesis.pdf: thesis.dvi paper1.bbl paper2.bbl paper3.bbl paper4.bbl conclusion.bbl intro.bbl
	latex thesis.tex
	latex thesis.tex
	dvipdf thesis.dvi

paper1.bbl: thesis.dvi
	bibtex paper1.aux

paper2.bbl: thesis.dvi
	bibtex paper2.aux

paper3.bbl: thesis.dvi
	bibtex paper3.aux

paper4.bbl: thesis.dvi
	bibtex paper4.aux

conclusion.bbl: thesis.dvi
	bibtex conclusion.aux

intro.bbl: thesis.dvi
	bibtex intro.aux

thesis.dvi: thesis.tex library.bib paper1.tex paper2.tex paper3.tex paper4.tex conclusion.tex intro.tex
	latex thesis.tex

clean:
	rm *.aux *.bcf *.idx *.dvi *.lof *.log *.nlo *.out *.run.xml *.toc *.bbl *.blg
