out/harmonica/harmonica.pdf: harmonica/*.ly
	-mkdir -p out/harmonica
	lilypond --pdf --png --loglevel=PROGRESS harmonica/harmonica.ly
	mv harmonica.pdf harmonica-* out/harmonica/

.PHONY: clean

clean:
	rm -rf out
