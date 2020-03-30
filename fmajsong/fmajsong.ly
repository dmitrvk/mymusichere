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

  c4. c4 c8 | d8 c4 r4. |
  f8 f f e d c | c4. r4. |

  c4. c4 c8 | d8 c bes a4 r8 |
  a8 a a a bes a | g f4 r4. |
}

lower = \relative c {
  \clef bass
  \time 6/8
  \key f \major

  \repeat unfold 4 {f8 <a c> <a c>} |
  \repeat unfold 2 {f8 <bes d f> <bes d f>} | \repeat unfold 2 {f8 <a c> <a c>}

  \repeat unfold 2 {f8 <a c> <a c>} | f8 <bes d f> <bes d f> {f8 <a c> <a c>}
  f8 <a c> <a c> f8 <bes d f> <bes d f> | f8 <a c> <a c> <f a c>4 r8 |
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
