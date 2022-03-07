xelatex main &
bibtex main &
makeindex main.nlo -s nomencl.ist -o main.nls &
xelatex main &
xelatex main
del *.aux /s
del *.bak /s
del *.log /s
del *.bbl /s
del *.dvi /s
del *.blg /s
del *.thm /s
del *.toc /s
del *.out /s
del *.lof /s
del *.lol /s
del *.lot /s
del *.nav /s
del *.snm /s
del *.fdb_latexmk /s
del *.synctex.gz /s