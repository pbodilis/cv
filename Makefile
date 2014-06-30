
# Choix du compilateur et options de compilations
PDFLATEX = pdflatex

# définitions des sources, objects, et executable final
SOURCES=cv_kerlu_fr3.tex cv_kerlu_en2.tex
TARGETS=$(SOURCES:.tex=.pdf)
TARGETFR=Pierre_Bodilis_CV_FR.pdf
TARGETEN=Pierre_Bodilis_CV_EN.pdf

RM = *.log *.nav *.toc *.snm *.aux *.out *~

.PHONY : all $(SOURCES) clean distclean
# règles de compilations
all: $(SOURCES) fr 
	rm -f $(RM)

$(SOURCES):
	${PDFLATEX} $@
	${PDFLATEX} $@

fr:
	cp cv_kerlu_fr3.pdf $(TARGETFR)

en:
	cp cv_kerlu_en2.pdf $(TARGETEN)

clean:
	rm -f $(RM)

distclean: clean
	rm -f $(TARGETS)
