all: tex

tex: sbc-template.tex
	latex sbc-template.tex

pdf: tex
	dvips sbc-template.dvi
	ps2pdf sbc-template.ps
	evince sbc-template.pdf &

clean:
	rm sbc-template.aux sbc-template.dvi sbc-template.log sbc-template.pdf sbc-template.ps
