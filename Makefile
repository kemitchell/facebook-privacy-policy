all: privacy.pdf privacyshield.pdf

%.latex: %.md
	pandoc --standalone -o $@ $<

%.pdf: %.latex
	xelatex $<
	xelatex $<
