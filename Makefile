all: main.pdf

%.pdf: *.tex *.bib
	latexmk -pdf -interaction=nonstopmode $(@:%.pdf=%.tex)

clean:
	latexmk -C main.tex

.PHONY: all clean
