all:
	latexmk -pdf -pdflatex=pdflatex -shell-escape -output-directory=build src/talk.tex

clean:
	latexmk -C -output-directory=build src/talk.tex

watch:
	latexmk -pvc -pdf -pdflatex=pdflatex -shell-escape -output-directory=build src/talk.tex
