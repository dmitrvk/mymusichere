\version "2.20.0"

\header {
  title = "I Go Somewhere"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  date = "July 24, 2020"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "piano.ily"

upper = \relative c'' {
  \clef treble
  \time 4/4
  \key e \minor
  \tempo 4 = 105

  \upperIntro
  \upperAa
  \upperB
  \upperAb
  \bar "|."
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key e \minor

  \lowerIntro
  \lowerAa
  \lowerB
  \lowerAb
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
