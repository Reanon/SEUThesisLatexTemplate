xelatex main
bibtex main
makeindex main.nlo -s nomencl.ist -o main.nls
xelatex main
xelatex main
rm -f *.aux *.bak *.bbl *.dvi *.blg *.thm *.toc *.out *.lof *.log *.lol *.lot *.nav *.snm *.ilg *.loa *.nlo *.nls *.fdb_latexmk *.synctex.gz