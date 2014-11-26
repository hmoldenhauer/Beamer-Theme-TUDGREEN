all:
	mkdir -p build
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
ifdef build/template.bcf
	BIBINPUTS=build:.  biber build/template.bcf
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
endif
	TEXINPUTS=build:.: lualatex --output-directory=build template.tex
	mv build/template.pdf template.pdf

clean:
	rm -rf build
