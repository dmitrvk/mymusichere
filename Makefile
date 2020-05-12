ifndef LILYPOND
LILYPOND = lilypond
endif

ARCHIVE = scores.tar.gz
LILYPOND_PARAMS = --pdf --png -dresolution=150 --loglevel=BASIC
OUT_DIR = out
SCORES = castlejam
SOURCES = $(join $(SCORES), $(addprefix /, $(addsuffix .ly, $(SCORES))))


.PHONY: all build thumbnails tar clean


all: build thumbnails tar
	@echo "Done."

build:
	@$(LILYPOND) $(LILYPOND_PARAMS) $(SOURCES)
	@echo "Moving assets to $(OUT_DIR)/"
	@-mkdir -p $(addprefix $(OUT_DIR)/, $(SCORES))
	@for score in $(SCORES); do mv $$score.pdf $$score*.png $$score.midi $(OUT_DIR)/$$score/; done

thumbnails:
	@echo "Creating thumbnails..."
	@for score in $(SCORES); do convert -colorspace GRAY -units pixelsperinch -thumbnail 180x "$$(ls -1 $(OUT_DIR)/$$score/*.png | head -n 1)" $(OUT_DIR)/$$score/$$score-thumbnail.png; done

tar:
	@echo "Creating $(ARCHIVE)..."
	@tar -C out/ -czf $(ARCHIVE) .

clean:
	@-rm -rv out $(ARCHIVE)

