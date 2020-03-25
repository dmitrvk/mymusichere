all: out/harmonica/harmonica.pdf out/fmajsong/fmajsong.pdf

out/harmonica/harmonica.pdf: harmonica/*.ly
	-mkdir -p out/harmonica
	lilypond --pdf --png --loglevel=PROGRESS harmonica/harmonica.ly
	mv harmonica.pdf harmonica*.png out/harmonica/
	cd out/harmonica; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

out/fmajsong/fmajsong.pdf: fmajsong/*.ly
	-mkdir -p out/fmajsong
	lilypond --pdf --png --loglevel=PROGRESS fmajsong/fmajsong.ly
	mv fmajsong.pdf fmajsong*.png out/fmajsong/
	cd out/fmajsong; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

.PHONY: clean

clean:
	rm -rf out
