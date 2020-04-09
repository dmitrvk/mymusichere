\version "2.20.0"

\header {
  title = "Dmajsong"
  composer = "Dmitry Kalyukov"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  status = "unfinished"
  instruments = "piano"
}

upperIntro = {
  d8 e fis g a16 b a8~ a4 |
  d,8 e fis a b16 cis b8 fis4 |
  d8 e fis g16 a16 g8 fis e16 d e8 |
  d2 r2 |
}

upper = \relative c' {
  \clef treble
  \time 4/4
  \key d \major

  \upperIntro
}


lowerIntro = {
  <d, d'>1 |
  <b b'>1 |
  <g g'>2. <a a'>4 |
  <d d'>4. <a a'>8 <d, d'>2 |
}

lower = \relative c {
  \clef bass
  \time 4/4
  \key d \major

  \lowerIntro
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
