\version "2.20.0"

\header {
  title = "Kotiki"
  composer = "Dmitry Kalyukov"
  instruments = "piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  date = "May 20, 2020"
}

\paper {
  top-margin = 1.5\cm
  bottom-margin = 2\cm
}

\include "kotiki.ily"

upper = \relative c'' {
  \clef treble
  \time 4/4
  \key d \major

  \tempo 4 = 80
  \upperIntro

  \tempo 4 = 90
  \upperAa
  \upperB

  \tempo 4 = 95
  \upperAb

  \upperCoda
  \bar "|."
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key d \major

  \lowerIntro
  \lowerAa
  \lowerB
  \lowerAb
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

