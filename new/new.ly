\version "2.20.0"

\header {
  title = "New"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "new.ily"

upper = \relative c'' {
  \clef treble
  \time 4/4
  \key g \major
  \tempo 4 = 85

  \upperA
  \upperB

  \time 11/8
  \tempo 4 = 70
  \upperCoda
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key g \major

  \lowerAB

  \time 11/16
  \tempo 4 = 70
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
