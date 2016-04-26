all: tex

tex: report.tex
	pdflatex report.tex

pdf: tex
	evince report.pdf &

clean:
	rm report.aux report.log report.pdf
