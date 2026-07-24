# Makefile for LaTeX resume

# Main document name (without extension)
DOC = resume

# LaTeX compiler
LATEX = pdflatex

# Default target
all: $(DOC).pdf

# Build PDF
$(DOC).pdf: $(DOC).tex $(DOC).cls
	$(LATEX) $(DOC).tex
	$(LATEX) $(DOC).tex

# Clean auxiliary files
clean:
	rm -f $(DOC).aux $(DOC).log $(DOC).out $(DOC).fls $(DOC).fdb_latexmk $(DOC).synctex.gz

# Clean all generated files including PDF
distclean: clean
	rm -f $(DOC).pdf

# Rebuild from scratch
rebuild: distclean all

.PHONY: all clean distclean rebuild
