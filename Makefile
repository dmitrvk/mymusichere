SCORES = castlejam dmajsong fmajsong harmonica
OUT_DIR = out/scores

ifndef LILYPOND
LILYPOND = lilypond
endif

LILYPOND_PARAMS = --pdf --png -dresolution=150 --loglevel=PROGRESS

PREREQUISITES = \
	$(join $(SCORES), \
	$(addprefix /, \
	$(addsuffix .ly, \
	$(SCORES))))

all: $(PREREQUISITES)
	@$(LILYPOND) $(LILYPOND_PARAMS) $(PREREQUISITES)
	@#
	@# Move artifacts to output directory
	@-mkdir -p $(addprefix $(OUT_DIR)/, $(SCORES))
	@for score in $(SCORES); do mv $$score.pdf $$score*.png $(OUT_DIR)/$$score/; done
	@#
	@# Create thumbnails
	@for score in $(SCORES); do convert -colorspace GRAY -units pixelsperinch -thumbnail 180x "$$(ls -1 $(OUT_DIR)/$$score/*.png | head -n 1)" $(OUT_DIR)/$$score/thumbnail.png; done

.PHONY: clean

clean:
	rm -r out
