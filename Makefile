all: recipes.pdf

%.pdf: %.tex
	latexmk -pdf -shell-escape $<

clean:
	latexmk -C
	rm -fr _minted-*/
