\version "2.20.0"

\header {
  title = "Castle Jam"
  subtitle = "from Stronghold game"
  subsubtitle = "piano cover"
  arranger = "Arranged by Dmitry Kalyukov"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  status = "unfinished"
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

  \mark \markup { \musicglyph #"scripts.segno" }

  \repeat unfold 23 {r2}
  r2
  \mark \markup { \musicglyph #"scripts.coda" }

  \repeat unfold 15 {r2}
  \mark "D.S. al Coda"
  r2

  \bar "||"
  \break
  \mark \markup { \musicglyph #"scripts.coda" Coda }

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

  \repeat unfold 23 {r2}
  r2

  \repeat unfold 15 {r2}
  r2

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
