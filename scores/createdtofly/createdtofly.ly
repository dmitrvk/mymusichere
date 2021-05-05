\version "2.20.0"

\header {
  title = "Created to Fly"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  date = "Aug 21, 2020"
  url = "https://www.instagram.com/p/CEJvKdVHBvu/"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "piano.ily"

upper = \relative c'' {
  \clef treble
  \time 6/8
  \tempo 4 = 190
  \pianoUpper
  \bar "|."
}

lower = \relative c {
  \clef bass
  \pianoLower
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
