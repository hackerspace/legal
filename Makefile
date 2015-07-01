files = stanovy.pdf zadost_o_clenstvi.pdf zadost_o_ukonceni.pdf zadost_o_preruseni.pdf

all: $(files)
	#xpdf -remote latex -reload

$(files): %.pdf: %.latex
	pdflatex -interaction nonstopmode $< | grep -v CVSId

clean:
	-rm -f *.log *.aux *.out *.toc *.bbl *.blg
