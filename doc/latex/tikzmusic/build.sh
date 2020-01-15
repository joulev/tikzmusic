#!/bin/bash

# Run this in a bash environment. If you don't have a bash environment, try to have one.

set -e

CYAN='\033[0;36m'
NC='\033[0m'
FILENAME='tikzmusic'

echo -e "\n${CYAN}XeLaTeX (1)${NC}\n"
xelatex --shell-escape ${FILENAME}

echo -e "\n${CYAN}XeLaTeX (2)${NC}\n"
xelatex --shell-escape ${FILENAME}

echo -e "\n${CYAN}MakeIndex${NC}\n"
makeindex ${FILENAME}

echo -e "\n${CYAN}XeLaTeX (3)${NC}\n"
xelatex --shell-escape ${FILENAME}

echo -e "\n${CYAN}XeLaTeX (4)${NC}\n"
xelatex --shell-escape ${FILENAME}

echo -e "\n${CYAN}Removing files${NC}\n"
rm -f \
	*.aux \
	*.toc \
	*.bbl \
	*.blg \
	*.bib \
	*.bcf \
	*.run.xml \
	*.idx \
	*.ilg \
	*.ind \
	*.out \
	*.tcbtemp \
	*.listing
clear