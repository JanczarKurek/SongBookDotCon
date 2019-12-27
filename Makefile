LILY=lilypond

SRCROOT=./songs

all: result/result.pdf

result/result.pdf: build/result.tex
	cd build; pdflatex -interaction=nonstopmode result.tex
	mkdir -p result
	cp build/result.pdf result/result.pdf

build/result.tex: result.lytex
	lilypond-book result.lytex --output build

result.lytex:
	./book_builder.sh

clean:
	rm -rf result.lytex build/ result/
