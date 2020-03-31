LILYPOND_PARAMS=--pdf --png --loglevel=PROGRESS

ifndef LILYPOND
LILYPOND=lilypond
endif

all: out/harmonica/harmonica.pdf out/fmajsong/fmajsong.pdf out/castlejam/castlejam.pdf

out/harmonica/harmonica.pdf: harmonica/*.ly
	-mkdir -p out/harmonica
	$(LILYPOND) $(LILYPOND_PARAMS) harmonica/harmonica.ly
	mv harmonica.pdf harmonica*.png out/harmonica/
	cd out/harmonica; if [ -f harmonica.png ]; then mv harmonica.png harmonica-page1.png; fi
	cd out/harmonica; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

out/fmajsong/fmajsong.pdf: fmajsong/*.ly
	-mkdir -p out/fmajsong
	$(LILYPOND) $(LILYPOND_PARAMS) fmajsong/fmajsong.ly
	mv fmajsong.pdf fmajsong*.png out/fmajsong/
	cd out/fmajsong; if [ -f fmajsong.png ]; then mv fmajsong.png fmajsong-page1.png; fi
	cd out/fmajsong; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

out/castlejam/castlejam.pdf: castlejam/*.ly
	-mkdir -p out/castlejam
	$(LILYPOND) $(LILYPOND_PARAMS) castlejam/castlejam.ly
	mv castlejam.pdf castlejam*.png out/castlejam/
	cd out/castlejam; if [ -f castlejam.png ]; then mv castlejam.png castlejam-page1.png; fi
	cd out/castlejam; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

.PHONY: clean

clean:
	rm -rf out
