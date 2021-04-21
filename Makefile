ifndef LILYPOND
LILYPOND = lilypond
endif

ARCHIVE = scores.tar.gz
LILYPOND_PARAMS = --pdf --png -dresolution=150 --loglevel=BASIC
SCORES = $(shell find scores -mindepth 1 -maxdepth 1 -type d | cut -d'/' -f2)
SOURCES = $(addprefix scores/, $(join $(SCORES), $(addprefix /, $(addsuffix .ly, $(SCORES)))))

.PHONY: all help build thumbnails clean

all: build thumbnails
	@echo "Done."

help:
	@echo "make -- compile scores and create thumbnails"
	@echo "make build -- compile scores (create PDF, PNG and MIDI files)"
	@echo "make clean -- clean repository"
	@echo "make help -- display this message"
	@echo "make thumbnails -- create thumbnails"

build:
	@$(LILYPOND) $(LILYPOND_PARAMS) $(SOURCES)
	@for score in $(SCORES); do mv $$score.pdf $$score*.png $$score.midi scores/$$score/; done

thumbnails:
	@echo "Creating thumbnails..."
	@for score in $(SCORES); do convert -colorspace GRAY -units pixelsperinch -thumbnail 180x "$$(ls -1 scores/$$score/*.png | head -n 1)" scores/$$score/$$score-thumbnail.png; done

clean:
	@$(find scores -type f | grep -E '.midi|.pdf|.png')
