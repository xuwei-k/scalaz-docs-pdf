.PHONY : all clean

all : scalaz-docs.pdf

clean :
	latexmk -C
	rm -r img target *.pdf *.pdf_tex book.json

scalaz-docs.pdf :
	latexmk -pdf scalaz-docs.tex

