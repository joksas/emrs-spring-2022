MAIN_NAME = main
TEX_FILES = $(shell find . -type f -regex ".*\.tex" | tr '\r\n' ' ')
STY_FILES = $(shell find . -type f -regex ".*\.sty" | tr '\r\n' ' ')
SVG_FILES = $(shell find figures/SVG -type f -regex ".*\.svg" | tr '\r\n' ' ')
AUX_DIR = .aux
MAIN_FILE = $(AUX_DIR)/main.pdf
PDF_FILE = slides-joksas-emrs-spring-2022.pdf
BIB_OUTPUT_FILE = $(AUX_DIR)/$(MAIN_NAME).bbl
AUXILARY_FILE = $(AUX_DIR)/$(MAIN_NAME).aux

$(PDF_FILE): $(MAIN_FILE)
	cp $(MAIN_FILE) $(PDF_FILE)

$(MAIN_FILE): $(AUXILARY_FILE) $(BIB_OUTPUT_FILE)
	mv $(AUXILARY_FILE) $(AUXILARY_FILE).old
	cp $(AUXILARY_FILE).old $(AUXILARY_FILE)
	texfot xelatex -shell-escape -output-directory $(AUX_DIR) $(MAIN_NAME)
	-if cmp $(AUXILARY_FILE) $(AUXILARY_FILE).old; \
	then \
		rm $(AUXILARY_FILE); \
		mv $(AUXILARY_FILE).old $(AUXILARY_FILE); \
	else \
		rm $(AUXILARY_FILE).old; \
	fi

%.pdf: %.svg
	inkscape $*.svg --export-pdf=$*.pdf

$(BIB_OUTPUT_FILE): $(AUXILARY_FILE)
	cd $(AUX_DIR); biber $(MAIN_NAME)

$(AUXILARY_FILE): $(TEX_FILES) $(STY_FILES) $(SVG_FILES:%.svg=%.pdf)
	mkdir -p $(AUX_DIR)
	texfot xelatex -shell-escape -output-directory $(AUX_DIR) $(MAIN_NAME)
