LILY=lilypond

SRCROOT=./songs

all: result/result.pdf

result/result.pdf: build/result.tex
	cd build; latex -interaction=nonstopmode result.tex && dvips -Ppdf result.dvi && ps2pdf result.ps
	rm build/result.pdf # No fuckin idea why, just works
	cd build; latex -interaction=nonstopmode result.tex && dvips -Ppdf result.dvi && ps2pdf result.ps
	mkdir -p result
	cp build/result.pdf result/result.pdf

build/result.tex: result.lytex
	lilypond-book result.lytex --output build

result.lytex:
	./book_builder.sh

clean:
	rm -rf result.lytex build/ result/
