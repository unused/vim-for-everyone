PANDOC_OPTS=-V geometry:landscape -t beamer -H templates/slides-header.tex

.PHONY: presentation
presentation: slides.pdf

%.pdf: %.md
	@pandoc $(PANDOC_OPTS) -o $@ $<

.PHONY: clean
clean:
	@rm -f slides.pdf

.PHONY: watch
watch:
	@echo slides.md | entr -c 'make'
