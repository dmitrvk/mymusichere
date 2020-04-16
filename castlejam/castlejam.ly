\version "2.20.0"

\header {
  title = "Castle Jam"
  subtitle = "from Stronghold game"
  subsubtitle = "piano cover"
  arranger = "Arranged by Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  status = "unfinished"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "castlejam.ily"

upper = \relative c'' {
  \clef treble
  \time 2/4
  \key c \minor
  \tempo 4 = 75

  \upperIntro
  \upperAa
  \upperBa
  \upperAb
  \upperBb
  \upperC
  \upperD
  \bar "||" \break
  \upperCoda
  \bar "|."
}

lower = \relative c {
  \clef bass
  \time 2/4
  \key c \minor

  \lowerIntro
  \lowerAa
  \lowerBa
  \lowerAb
  \lowerBb
  \lowerC
  \lowerD
  \lowerCoda
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
