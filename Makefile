ifndef LILYPOND
LILYPOND = lilypond
endif

ARCHIVE = scores.tar.gz
LILYPOND_PARAMS = --pdf --png -dresolution=150 --loglevel=BASIC
SCORES = castlejam kotiki
SOURCES = $(join $(SCORES), $(addprefix /, $(addsuffix .ly, $(SCORES))))


.PHONY: all build thumbnails tar clean


all: build thumbnails
	@echo "Done."

build:
	@$(LILYPOND) $(LILYPOND_PARAMS) $(SOURCES)
	@for score in $(SCORES); do mv $$score.pdf $$score*.png $$score.midi $$score/; done

thumbnails:
	@echo "Creating thumbnails..."
	@for score in $(SCORES); do convert -colorspace GRAY -units pixelsperinch -thumbnail 180x "$$(ls -1 $$score/*.png | head -n 1)" $$score/$$score-thumbnail.png; done

tar:
	@echo "Creating archive..."
	@tar -cvzf scores.tar.gz --exclude='*.midi' --exclude='*.*ly' $(SCORES)

clean:
	@-for score in $(SCORES); do rm $$score/$$score.pdf $$score/$$score*.png $$score/$$score.midi; done

