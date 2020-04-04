upperIntro = \relative c'' {
  r2 | r2 | r2 | r2 |
  c2 | bes | f | g |
  <c, ees> | <ees g> | <c f> | <c g'> |
  <ees g> | <g bes> | <f a> | g |
  <c, ees> | <bes d> | <a ees'> | r2 |
}

lowerIntro = \relative c {
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


upperAa = \relative c'' {
  c4 c8. d16
  bes8 g-. g4
  a8 bes16 a g8-. f-.
  g8-. ees-. c4

  c'4 c8. d16
  bes8 g-. g4
  a8 bes16 a g8 f
  g8-. ees'-. c4

  <c ees>4 <c ees>8. <d f>16
  <bes d>8 <g bes>-. g4
  <f a>8 bes16 a g8 f
  g8-. bes-. c4

  <c ees>4 <c ees>8. <d f>16
  <bes d>8 <g bes> <g bes g'>4
  <f a>8 bes16 a g8 f
  g8-. ees-. c4
}

lowerAa = \relative c {
  \repeat unfold 4 {
    <c ees g c>4 <c ees g c>
    <bes ees g bes>4 <bes ees g bes>
    <c f c'>4 <c f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }
}


upperBa = \relative c'' {
  c16 d ees f g8 f16 g 
  g aes g f g4
  aes16 bes aes g f g aes g
  f8 ees \autoBeamOff c8. g16 \autoBeamOn

  c16 d ees f g8 f16 g 
  g aes g f <g bes>4
  aes16 bes aes r g aes g r
  f8 ees c4

  c16 d ees f g8 f16 g 
  g aes g f g4
  aes16 bes aes g f g aes g
  f16 ees d8 \autoBeamOff c8. c16 \autoBeamOn

  bes'16 c bes aes g8 g16 aes
  g f ees8 \autoBeamOff g8. bes,16 \autoBeamOn
  bes bes c d ees g f ees
  d8 bes c4
}


lowerBa = \relative c {
  \repeat unfold 3 {
    c8 g' c g
    ees bes' ees bes
    f c' f c
    c, g' c g
  }

  c,8 g' c g
  ees bes' ees bes
  f c' f c
  g d' g4
}


upperAb = \relative c'' {
  <c c'>4 <c c'>8. <d d'>16
  <bes bes'>8 <g g'>-. <g g'>4
  <a a'>8 <bes bes'>16 <a a'> <g g'>8 <f f'>
  <g g'>8-. <bes bes'>-. <c c'>4

  <c ees c'>4 <c ees c'>8. <d f d'>16
  <bes d bes'>8 <g bes g'>-. <g' bes g'>4
  <f, a>8 bes16 a g8 f
  g8-. ees-. c4
}

lowerAb = \relative c {
  \repeat unfold 2 {
    <c ees g c>4 <c ees g c>
    <bes ees g bes>4 <bes ees g bes>
    <c f c'>4 <c f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }
}
