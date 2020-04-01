\version "2.20.0"

\header {
  title = "Castle Jam"
  subtitle = "from Stronghold game"
  arranger = "Dmitry Kalyukov"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  status = "unfinished"
}

upperIntro = {
  r2 | r2 | r2 | r2 |
  c2 | bes | f | g |
  <c, ees> | <ees g> | <c f> | <c g'> |
  <ees g> | <g bes> | <f a> | g |
  <c, ees> | <bes d> | <a ees'> | r2 |
}

upper = \relative c'' {
  \clef treble
  \time 2/4
  \key c \minor

  \upperIntro
}


lowerIntro = {
  <c, c'>4 <c' ees g c> |
  <bes, bes'> <bes' ees g bes> |
  <f, f'> <c'' f c'> |
  <c g' c>8-. <c f c'>-. <c g' c>4 |

  \repeat unfold 4 {
    <c, c'>4 <c' ees g c> |
    <bes, bes'> <bes' ees g bes> |
    <f f'> <c' f c'> |
    <c g' c>8-. <c f c'>-. <c g' c>4 |
  }
}

lower = \relative c {
  \clef bass
  \time 2/4
  \key c \minor
  \tempo 4 = 70

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
