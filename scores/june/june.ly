\version "2.20.0"

\header {
  title = "June"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  date = "July 7, 2020"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "june.ily"

upper = \relative c'' {
  \clef treble
  \time 4/4
  \key g \major
  \tempo 4 = 85

  \upperA
  \upperB

  \time 11/16
  \upperCoda
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key g \major

  \lowerAB
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
