#---------------------------------------------------------------------
#
# MAKE FILE FOR TEX COMPILER
#
#---------------------------------------------------------------------

NAME = main

.SUFFIXES: .tex .dvi .ps .pdf

#---------------------------------------------------------------------
# Runs latex a few times, with bibtex in there too
#---------------------------------------------------------------------

.tex.dvi:
	pdflatex  $*
	bibtex $*
	pdflatex  $*
	bibtex $*
	pdflatex $*

#---------------------------------------------------------------------
# Target 1 (default) : LaTeX output in ps
#---------------------------------------------------------------------

all: $(NAME).ps
$(NAME).dvi: $(NAME).tex 
$(NAME).ps: $(NAME).dvi

#---------------------------------------------------------------------
# Target 2 : pdf LaTeX output in pdf
#---------------------------------------------------------------------

#pdf: $(NAME).pdf
#$(NAME).pdf: $(NAME).tex 


#---------------------------------------------------------------------
#  clean temp files
#---------------------------------------------------------------------

clean:
	rm -f *.blg
	rm -f *.lof
	rm -f *.lot
	rm -f *.out
	rm -f *.toc
	rm -f *.bbl
	rm -f *.log
	rm -f *.aux
	rm -f *.end
	rm -f *.dvi
	rm -f *.ps
	rm -f *~
	rm -f *Notes.bib

veryclean:
	rm -f *.blg
	rm -f *.lof
	rm -f *.lot
	rm -f *.out
	rm -f *.toc
	rm -f *.bbl
	rm -f *.log
	rm -f *.aux
	rm -f *.end
	rm -f *.dvi
	rm -f *.ps
	rm -f $(NAME).pdf	
	rm -f *~
	rm -f *Notes.bib

#EOF
