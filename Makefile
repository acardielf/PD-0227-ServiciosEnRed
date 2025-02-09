#!/usr/bin/make -f

#TEMPLATE_TEX_PD="rsrc/templates/pd-nologo-tpl.latex"
# Colors
BLUE= \e[1;34m
LIGHTBLUE= \e[94m
LIGHTGREEN= \e[92m
LIGHTYELLOW= \e[93m

RESET= \e[0m

# Templates 
TEMPLATE_TEX_PD="./resources/templates/eisvogel.latex"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="./resources/fonts/OFLGoudyStM.otf" --pdf-engine=xelatex "
TEMPLATE_TEX_TASK="./resources/templates/eisvogel.latex"

# PDFS
PDF_PATH:=$(shell readlink -f PDFS)


# RULES

clean:
	@echo " [${BLUE} * Step : Clean ${RESET}] "
	@echo "${LIGHTBLUE} -- PDFS ${RESET}"
	rm -f PDFS/*.pdf
	rm -f PDFS/*.odt


files:
	@echo " [${BLUE} * Step : Files ${RESET}] "
	@echo "${LIGHTBLUE} * Creating folder [ PDFS ]${RESET}"
	mkdir -p PDFS

prog-didactica: files
	@echo " [ Step : prog-didactica ]"
	@echo " * [ PDF ] : Programacion Didactica ..."
	
	@pandoc --template $(TEMPLATE_TEX_PD) $(PANDOC_OPTIONS) -o "$(PDF_PATH)/ProgramacionDidactica_AW.pdf" ./PD_*.md

	@echo " * [ ODT ] : Programacion Didactica ..."
	@pandoc -o "$(PDF_PATH)/ProgramacionDidactica_AW.odt" ./PD_*.md 
	
	@echo " * [ PDF Result ] : $(PDF_PATH)/ProgramacionDidactica_AW.pdf"

