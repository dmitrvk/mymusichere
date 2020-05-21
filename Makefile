ifndef LILYPOND
LILYPOND = lilypond
endif

ARCHIVE = scores.tar.gz
LILYPOND_PARAMS = --pdf --png -dresolution=150 --loglevel=BASIC
SCORES = $(shell find -maxdepth 1 -not -name '.*' -type d | cut -d'/' -f2)
SOURCES = $(join $(SCORES), $(addprefix /, $(addsuffix .ly, $(SCORES))))

.PHONY: all help build thumbnails tar clean

all: build thumbnails
	@echo "Done."

help:
	@echo "make -- compile scores and create thumbnails"
	@echo "make build -- compile scores (create PDF, PNG and MIDI files)"
	@echo "make clean -- clean repository"
	@echo "make help -- display this message"
	@echo "make tar -- create archive with all scores"
	@echo "make thumbnails -- create thumbnails"

build:
	@$(LILYPOND) $(LILYPOND_PARAMS) $(SOURCES)
	@for score in $(SCORES); do mv $$score.pdf $$score*.png $$score.midi $$score/; done

thumbnails:
	@echo "Creating thumbnails..."
	@for score in $(SCORES); do convert -colorspace GRAY -units pixelsperinch -thumbnail 180x "$$(ls -1 $$score/*.png | head -n 1)" $$score/$$score-thumbnail.png; done

tar:
	@echo "Creating archive..."
	@tar -cvzf $(ARCHIVE) --exclude='*.midi' --exclude='*.*ly' $(SCORES)

clean:
	@-for score in $(SCORES); do rm $$score/$$score.pdf $$score/$$score*.png $$score/$$score.midi; done
	@-rm $(ARCHIVE)

