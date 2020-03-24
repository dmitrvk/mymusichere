harmonica.pdf: harmonica/*.ly
	lilypond harmonica/main.ly
	mv main.pdf $@
