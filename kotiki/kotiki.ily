upperIntro = \relative c' {
  \mf

  d8-. e-.  fis-. g-.-1  a16-4 b a8~  a4
  d,8-. e-.  fis-. a-.-1  b16-4 cis b8-.  fis8-2 r8
  d8-. e-.  fis-. g16-4 a  g8-. fis-.  e16 d e8-.
  d2 r2
}

lowerIntro = \relative c, {
  <d d'>1
  <b b'>1
  \ottava -1
  <g g'>2. <a a'>4
  <d d'>4. <a a'>8 <d, d'>8
    \repeat unfold 3 { d32 d' d, d' }
  \ottava 0
}

upperAa = \relative c' {
  d8 e  fis g-1  a16-4 b a8~  a4
  d,8 e  fis a-1  b16-4 cis b8  fis4-2
  d8 e  fis g16-4 a  g8 fis  e16 d e8-5
  d4  bes  a  r

  d8 e  fis g-1  a16-4 b a8~  a4
  d,8 e  fis a-1  b16-4 cis b8  fis4-2
  d8 e  fis g16-4 a  g8 fis  e16 d e8-2
  d4  d4  d4  d4
}

lowerAa = \relative c, {
  \repeat unfold 4 { d16 d' d,16 d' }
  \repeat unfold 4 { b,16 b' b,16 b' }
  \ottava -1
  \repeat unfold 3 { g,16 g' g,16 g' }  a,16 a' a,16 a'
  \ottava 0
  \repeat unfold 2 { d,16 d' d,16 d' }  d, <g g'> <fis fis'>8-.  <e e'> <d d'>

  \repeat unfold 3 { d16 d' d,16 d' }  d,16 d' des, des'
  \repeat unfold 3 { c,16 c' c,16 c' }  c,16 c' b, b'
  \ottava -1
  \repeat unfold 4 { bes,16 bes' bes,16 bes' }
  a, a' a, a'  d, d' d, d'  g,, g' a, a'  d,, d' d, d'
  \ottava 0
}

upperB = \relative c'' {
  \override TextSpanner.bound-details.left.text = "accel."

  a8-1 b cis d-1  e16-4 fis e8~  e4
  a,8 b cis e-1  fis16-4 g fis8  cis4-2
  a8 b cis d16 e  d8 cis b16 a b8
  a4 a  g8-4 fis e d

  a'8. b16 cis8. d16-1  e16-4 fis e8~  e4
  a,8. b16 cis8. e16-1  fis16-4 g fis8  \acciaccatura fis cis4-2
  a8 b cis4  \acciaccatura { d8  e } d8 cis b16 a b8
  a4 \startTextSpan a <a a'>8 <a a'>8 <a a'>8 <a a'>16 <a a'> \stopTextSpan
}

lowerB = \relative c, {
  \repeat unfold 4 { d16 d' d,16 d' }
  \repeat unfold 4 { cis,16 cis' cis,16 cis' }
  \ottava -1
  \repeat unfold 4 { b,16 b' b,16 b' }
  \repeat unfold 2 { a,16 a' a,16 a' }
    \ottava 0 <g g'>8 <fis fis'> <e e'> <d d'>

  \repeat unfold 4 { d16 d' d,16 d' }
  \repeat unfold 4 { cis,16 cis' cis,16 cis' }
  \ottava -1
  \repeat unfold 4 { b,16 b' b,16 b' }
  \repeat unfold 4 { a,16 a' a,16 a' }
  \ottava 0
}

upperAb = \relative c' {
  \f

  <d d'>8 <e e'>  <fis fis'> <g g'>  <a a'>16 <b b'> <a a'>8~  <a a'>4
  <d, d'>8 <e e'>  <fis fis'> <a a'>-1  <b b'>16-4 <cis cis'> <b b'>8  <fis fis'>4-2
  <d d'>8 <e e'>  <fis fis'> <g g'>16-4 <a a'>  <g g'>8 <fis fis'>  <e e'>16 <d d'> <e e'>8-5
  <d d'>4  <bes bes'>  <a a'>  r

  <d d'>8 <e e'>  <fis fis'> <g g'>  <a a'>16 <b b'> <a a'>8~  <a a'>4
  <d, d'>8 <e e'>  <fis fis'> <a a'>-1  <b b'>16-4 <cis cis'> <b b'>8  <fis fis'>4-2
  <d d'>8 <e e'>  <fis fis'> <g g'>16-4 <a a'>  <g g'>8 <fis fis'>  <e e'>16 <d d'> <e e'>8-5
  <d d'>4  <d d'>4  <d d'>4  <d d'>4
}

lowerAb = \relative c, {
  \repeat unfold 4 { d16 d' d,16 d' }
  \repeat unfold 4 { b,16 b' b,16 b' }
  \ottava -1
  \repeat unfold 3 { g,16 g' g,16 g' }  a,16 a' a,16 a'
  \ottava 0
  \repeat unfold 2 { d,16 d' d,16 d' }  d, <g g'> <fis fis'>8-.  <e e'> <d d'>

  \repeat unfold 3 { d16 d' d,16 d' }  d,16 d' des, des'
  \repeat unfold 3 { c,16 c' c,16 c' }  c,16 c' b, b'
  \ottava -1
  \repeat unfold 4 { bes,16 bes' bes,16 bes' }
  a, a' a, a'  d, d' d, d'  g,, g' a, a'  d,, d' d, d'
  \ottava 0
}

upperCoda = \relative c' {
  \override TextSpanner.bound-details.left.text = "rit."

  \mf

  d8 e  fis g16 a  g8 fis  e16 d e8
  d8 e  fis g16 a  g8 fis  e16 d e8
  d8 \> \startTextSpan e  fis g16 a  g8 fis  e16 d e8
  <d, fis d'>2  \acciaccatura { d''8 fis } d'4 r4 \stopTextSpan \!
}

lowerCoda = \relative c, {
  <d d'>2  <d d'>16 <d d'>~ <d d'>8~ <d d'>4
  <c c'>2  <c c'>16 <c c'>~ <c c'>8~ <c c'>4
  <bes bes'>2  <a a'>4 <g g'>
  <d d'>1
}

