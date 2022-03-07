TEX = xelatex
BIB = bibtex
PAC_NAME = seumasterthesis
MAIN_FILE = main

main: ${MAIN_FILE}.pdf

${MAIN_FILE}.pdf: ${MAIN_FILE}.tex ${PAC_NAME}.cls ${MAIN_FILE}.bbl
	${TEX} ${MAIN_FILE}.tex
	${TEX} ${MAIN_FILE}.tex

${MAIN_FILE}.bbl: ${MAIN_FILE}.tex ${PAC_NAME}.bib
	${TEX} ${MAIN_FILE}.tex
	${BIB} ${MAIN_FILE}.aux

.PHONY: clean

clean:
	@rm -f \
		*.aux \
		*.bak \
		*.bbl \
		*.dvi \
		*.blg \
		*.thm \
		*.toc \
		*.out \
		*.lof \
		*.log \
		*.lol \
		*.lot \
		*.nav \
		*.snm \
		*.ilg \
		*.loa \
		*.nlo \
		*.nls \
		*.fdb_latexmk \
		*.synctex.gz