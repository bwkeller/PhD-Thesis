thesis.pdf: thesis.dvi paper1.bbl paper2.bbl paper3.bbl paper4.bbl
	latex thesis.tex
	latex thesis.tex
	dvipdf thesis.dvi

paper1.bbl: paper1.aux
	bibtex paper1.aux

paper2.bbl: paper2.aux
	bibtex paper2.aux

paper3.bbl: paper3.aux
	bibtex paper3.aux

paper4.bbl: paper4.aux
	bibtex paper4.aux

thesis.dvi: thesis.tex library.bib paper1.tex paper2.tex paper3.tex paper4.tex
	latex thesis.tex

clean:
	rm *.aux *.bcf *.idx *.dvi *.lof *.log *.nlo *.out *.run.xml *.toc *.bbl *.blg
