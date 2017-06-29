TEX = pdflatex
BIB = bibtex
LIB = paper
SOURCES = paper.tex

main:
	$(TEX) $(SOURCES)
	$(BIB) $(LIB)
	$(TEX) $(SOURCES)
	$(TEX) $(SOURCES)

clean:
	rm -vf *.aux *.bbl *.blg *.log $(LIB).pdf
