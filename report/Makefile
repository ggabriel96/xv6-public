all: tex

tex: report.tex
	latex report.tex

pdf: tex
	dvips report.dvi
	ps2pdf report.ps
	evince report.pdf &

clean:
	rm report.aux report.dvi report.log report.pdf report.ps
