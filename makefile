#  makefile
#  
#  Copyright 2017 tiziano <tiziano.detogni@gmail.com>
#  
# Makefile - Statically build websites using (python) asciidoc
#
# mostra come compilare tutti i file *.adoc (senza altre dipendenze accessorie)
#

ADOC_FILES = $(shell find $(SRC_DIR) -name "*.adoc")
HTML_FILES = $(ADOC_FILES:.adoc=.html)

.PHONY: all clean distclean

all: $(HTML_FILES)

.ONESHELL:
%.html: %.adoc
	@echo "Building " $< "->" $@ "dir=" $(<D) 
	@cd $(<D) 
#	@pwd
	@asciidoc -darticle $(<F)
#	@asciidoc -v -darticle $<

clean:
	-rm $(HTML_FILES)

