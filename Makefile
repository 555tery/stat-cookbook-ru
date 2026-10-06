DOC  := stat-cookbook.tex

RERUN := "(undefined references|Rerun to get (cross-references|the bars|point totals) right|Table widths have changed. Rerun LaTeX.|Linenumber reference failed)"
RERUNBIB := "No file.*\.bbl|Citation.*undefined"

all: figs doc

figs:
	@$(MAKE) -C $@

doc: $(DOC:.tex=.pdf)

%.pdf: %.tex
	pdflatex $<
	@egrep -q $(RERUNBIB) $*.log && bibtex $* && pdflatex $<; true
	@egrep -q $(RERUN) $*.log && pdflatex $<; true
	@egrep -q $(RERUN) $*.log && pdflatex $<; true

# Build Russian plots and the translation with Tectonic (XeTeX-based).
ru:
	STAT_COOKBOOK_LANG=ru Rscript --vanilla figs/distributions.R
	tectonic --keep-logs ru/stat-cookbook-ru.tex

latexmk:
	-latexmk -pvc -pdf $(DOC)

purge:
	-rm -f *.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk}

clean: purge
	$(MAKE) -C figs $@
	-rm -f $(DOC:.tex=.pdf)

.PHONY: all figs ru purge clean
