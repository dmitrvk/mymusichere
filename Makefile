out/harmonica/harmonica.pdf: harmonica/*.ly
	-mkdir -p out/harmonica
	lilypond --pdf --png --loglevel=PROGRESS harmonica/harmonica.ly
	mv harmonica.pdf harmonica*.png out/harmonica/
	cd out/harmonica; convert -format png -thumbnail 300x300 "$$(ls -1 *.png | head -n 1)" thumbnail.png

.PHONY: clean

clean:
	rm -rf out
