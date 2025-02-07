REPORT=report
SLIDES=slides
IMAGES=$(find img -type f)

@all: ${REPORT}.pdf

${REPORT}.pdf: ${REPORT}.tex ${IMAGES} quotes.bib
	pdflatex ${REPORT}.tex
	bibtex ${REPORT}.aux
	pdflatex ${REPORT}.tex

clean:
	rm -rf *.idx ${REPORT}.pdf ${SLIDES}.pdf *-blx.bib *.aux *.log *.run.xml *.toc *.ilg *.ind *.bbl  *.blg *.out *.nav *.snm
