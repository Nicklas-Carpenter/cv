LATEX = xelatex -halt-on-error

.PHONY: all

all: cv_nicklas_carpenter.pdf

cv_nicklas_carpenter.pdf: pubs.bib cv_nicklas_carpenter.bbl

%.pdf: %.tex
	$(LATEX) $<

.PHONY: clean
clean:
	rm -f *.pdf *.log *.aux
