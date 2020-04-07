upperIntro = \relative c'' {
  r2
  r2
  r2
  r2

  c2
  bes
  f
  g

  <c, ees>
  <ees g>
  <c f>
  <c g'>

  <ees g>
  <g bes>
  <f a>
  g

  <c, ees>
  <bes d>
  <a ees'>
  r2
}

lowerIntro = \relative c {
  <c, c'>4 <c' ees g c>
  <bes, bes'> <bes' ees g bes>
  <f, f'> <c'' f c'>
  <c g' c>8-. <c f c'>-. <c g' c>4

  \repeat unfold 4 {
    <c, c'>4 <c' ees g c>
    <bes, bes'> <bes' ees g bes>
    <f f'> <c' f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
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
  <g g'>8-. <ees ees'>-. <c c'>4

  <c' ees c'>4 <c ees c'>8. <d f d'>16
  <bes d bes'>8 <g bes g'>-. <g' bes g'>4
  f16 ees d c bes a g f
  g8-. ees'-. c4
}

lowerAb = \relative c {
  \repeat unfold 2 {
    <c ees g c>4 <c ees g c>
    <bes ees g bes>4 <bes ees g bes>
    <c f c'>4 <c f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }
}

upperBb = \relative c'' {
  c16 d ees f g8 f16 g 
  g aes g f g4
  aes16 bes aes g f g aes g
  f8 ees \autoBeamOff c8. g'16 \autoBeamOn

  \ottava 1
  c16 d ees f g8 f16 g 
  g aes g f g4
  aes16 bes aes r g aes g r
  f16 g ees8-. c4

  ees16 c d ees f g a bes
  c ees d c bes g bes c
  bes aes g f ees d c f
  ees8-. c-. c4

  g'16 ees d c d ees d \prall c
  bes aes g aes bes8 aes16 \prall g
  \ottava 0
  f ees d ees f8 ees16 \prall d
  c bes c ees c4
}

lowerBb = \relative c {
  \repeat unfold 4 {
    <c ees g c>4 <c ees g c>
    <bes ees g bes>4 <bes ees g bes>
    <c f c'>4 <c f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }
}

upperC = \relative c'' {
  \repeat unfold 2 {
    \tuplet 3/2 {g16-2 aes bes} \tuplet 3/2 {c bes aes}
  }
  <ees g>8 f-1 <g bes>4

  \ottava 1
  \repeat unfold 2 {
    \tuplet 3/2 {g'16-1 aes bes} \tuplet 3/2 {c bes aes}
  }
  g8-1-. ees-2-. c4
  \ottava 0

  \repeat unfold 2 {
    \tuplet 3/2 {g16-2 aes bes} \tuplet 3/2 {c bes g}
  }
  <ees g>8 ees'-. <g, bes>4

  \ottava 1
  \tuplet 3/2 {g'16-1 aes bes} \tuplet 3/2 {c-1 d-2 ees}
  \tuplet 3/2 {d-2 c-1 bes-4} \tuplet 3/2 {aes-3 g f}
  ees8-3-. d-. c4
  \ottava 0

  \tuplet 3/2 {d16-1 ees f-1} \tuplet 3/2 {g aes bes->}
  \tuplet 3/2 {aes16 g f} \tuplet 3/2 {ees-4 d c}
  bes8-1 c-. ees4

  \repeat unfold 5 {r2}
  r2
  ^"D.S. al Coda"
}

lowerC = \relative c {
  \repeat unfold 4 {
    <c ees g c>4 <c ees g c>
    <bes ees g bes>4 <bes ees g bes>
    <c f c'>4 <c f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }
}

upperCoda = \relative c'' {
  c2 \p
  bes
  f
  g

  <c, ees>
  <ees g>
  <c f>
  <c g'>

  <ees g>
  <g bes>
  <f a>
  g

  <c, ees>
  <bes d>
  <a ees'>
  r2

  r2 \pp
}

lowerCoda = \relative c {
  \repeat unfold 4 {
    <c, c'>4 <c' ees g c>
    <bes, bes'> <bes' ees g bes>
    <f f'> <c' f c'>
    <c g' c>8-. <c f c'>-. <c g' c>4
  }

  <c, c'>2
}
