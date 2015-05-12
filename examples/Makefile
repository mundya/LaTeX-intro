TEX=pdflatex
EXAMPLES=example-1.pdf example-2.pdf example-3.pdf

all : $(EXAMPLES) tidy


%.pdf : %.tex
	$(TEX) $<

.PHONY: tidy
tidy :
	$(RM) *.aux *.log *.synctex.gz

.PHONY: clean
clean : tidy
	$(RM) *.pdf
