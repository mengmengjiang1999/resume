TEX_ENGINE ?= xelatex
OUT_DIR := output/pdf

.PHONY: all pdf clean
all: pdf

pdf:
	mkdir -p $(OUT_DIR)
	$(TEX_ENGINE) -interaction=nonstopmode -halt-on-error -output-directory=$(OUT_DIR) resume.tex
	$(TEX_ENGINE) -interaction=nonstopmode -halt-on-error -output-directory=$(OUT_DIR) resume.tex

clean:
	rm -f $(OUT_DIR)/*.log $(OUT_DIR)/*.aux $(OUT_DIR)/*.out
