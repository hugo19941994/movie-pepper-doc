.PHONY: thesis all clean

all: thesis clean

thesis: thesis.tex
	pdflatex --shell-escape thesis.tex
	makeindex thesis
	makeglossaries thesis
	biber thesis
	pdflatex --shell-escape thesis.tex
	pdflatex --shell-escape thesis.tex

clean:
	latexmk -c
	rm -f *~ *.dvi *.log *.bak *.aux *.toc *.ps *.eps *.blg *.bbl
	rm -f *.glg *.glo *.gls *.idx *.ild *.ind *.ist *.ilg *.iso *.out
	rm -f *.acn *.acr *.alg
	rm -f *.xdy
	rm -f *.pstex *.pstex_t
	rm -f thesis.run.xml
	rm -f thesis.bbl
	rm -f thesis.glsdefs
	rm -rf _minted-thesis
