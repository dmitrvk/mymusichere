\version "2.20.0"

\book {
  \paper {
    print-all-headers = ##t
  }

  \markup { \vspace #1 }

  \header {
    title = "Music for C harmonica"
    license = "Creative Commons Attribution-ShareAlike 4.0"
  }

  \include "melody.ly"
}
