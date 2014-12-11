all:
	mkdir -p build
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
	BIBINPUTS=build:.  biber build/template.bcf
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
	mv build/template.pdf template.pdf

clean:
	rm -rf build
