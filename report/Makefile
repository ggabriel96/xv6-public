all: tex

tex: report.tex
	latex report.tex

pdf: tex
	dvips report.dvi
	ps2pdf report.ps
	evince report.pdf &

clean:
	rm report.dvi report.ps report.pdf
