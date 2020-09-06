\version "2.20.0"

\header {
  title = "Forest light"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "forestlight.ily"

upper = \relative c'' {
  \clef treble
  \time 4/4
  \key gis \minor
  \tempo 4 = 65

  \upperA
  \bar "||"

  \key cis \minor
  \upperB

  \bar "|."
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key gis \minor

  \lowerA

  \key cis \minor
  \lowerB
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
