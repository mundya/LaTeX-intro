TEX=pdflatex
TEX_OPTIONS=-shell-escape  # Needed for the source code formatting w/ Minted

all: notes presentation

notes: notes.tex structure.tex
	$(TEX) $(TEX_OPTIONS) notes

presentation: presentation.tex structure.tex
	$(TEX) $(TEX_OPTIONS) presentation

tidy:
	$(RM) notes.aux
	$(RM) notes.log
	$(RM) presentation.aux
	$(RM) presentation.log
	$(RM) presentation.nav
	$(RM) presentation.out
	$(RM) presentation.snm
	$(RM) presentation.toc
	$(RM) structure.aux
	$(RM) structure.tex.aux

clean: tidy
	$(RM) notes.pdf
	$(RM) presentation.pdf
