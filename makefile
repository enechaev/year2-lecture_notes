CC=xelatex
CFLAGS=-synctex=1 -interaction=nonstopmode
OBJ=analysis-3
.PHONY: clean

book_template.pdf:
	$(CC) $(CFLAGS) $(OBJ) # Compile template
#	makeindex $(OBJ).nlo -s $(OBJ).ist -o $(OBJ).nls # Compile nomenclature
#	makeindex $(OBJ) # Compile index
	biber $(OBJ) # Compile bibliography
#	makeglossaries $(OBJ) # Compile glossary
	$(CC) $(CFLAGS) $(OBJ) # Compile template again
	$(CC) $(CFLAGS) $(OBJ) # Compile template again
clean:
	rm -rf svg-inkscape *.aux *.bbl *.bcf *.blg *.glo *.glsdefs *.idx *.ilg *.ind *.log *.mw *.nlo *.xml *.synctex.gz *.toc *.xdy

