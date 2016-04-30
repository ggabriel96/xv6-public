all: tex

tex: report.tex bibtex
	latex report.tex

bibtex:
	latex report.tex
	bibtex report.aux

pdf: tex
	dvips report.dvi
	ps2pdf report.ps
	evince report.pdf &

clean:
	rm report.aux report.bbl report.blg report.dvi report.log report.pdf report.ps
