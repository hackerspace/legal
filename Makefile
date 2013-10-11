files = stanovy.pdf

all: $(files)
	#xpdf -remote latex -reload

$(files): %.pdf: %.latex
	pdflatex -interaction nonstopmode $< | grep -v CVSId

clean:
	-rm -f *.log *.aux *.out *.toc *.bbl *.blg
