TEX=pdflatex
TEX_OPTIONS=-shell-escape # Needed for the source code formatting w/ Minted

slides: slides.tex
	$(TEX) $(TEX_OPTIONS) slides

tidy:
	$(RM) slides.aux
	$(RM) slides.log
	$(RM) slides.bbl
	$(RM) slides.bcf
	$(RM) slides.blg
	$(RM) slides.out
	$(RM) slides.run.xml

clean: tidy
	$(RM) slides.pdf
