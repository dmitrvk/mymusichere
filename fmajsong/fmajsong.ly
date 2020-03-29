\version "2.20.0"

\header {
  title = "Fmajsong"
  composer = "Dmitry Kalyukov"
  license = "Creative Commons Attribution-ShareAlike 4.0"
}

upper = \relative c'' {
  \clef treble
  \time 6/8
  \key f \major

  c4. c4 c8
  d8 c4 r4.
}

lower = \relative c {
  \clef bass
  \time 6/8
  \key f \major

  f8 <a c> <a c> f8 <a c> <a c>
  f8 <a c> <a c> f8 <a c> <a c>
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
