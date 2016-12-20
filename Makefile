.PHONY: all
all: getpaper-doc.pdf

getpaper-doc.pdf: getpaper-doc.tex preamble.tex abstract.tex
getpaper-doc.pdf: getpaper.tex

.PHONY: all
all: getpaper

getpaper.tex: getpaper.nw
getpaper.sh: getpaper.nw
getpaper: getpaper.sh
	${LN} $^ $@

NOTANGLE.sh?=		${NOTANGLE.mk}

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/portability.mk
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
