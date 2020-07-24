upperIntro = \relative c' {
  r1

  e8 e  e16[ e'8]  d[ b]  a[ b16 a b]
  e,8 e  e16[ e'8]  d[ b]  e[ d16 b a]
  e8 e  e16[ e'8]  d[ b]  a16[ b8 g16 a]
  e16 r16  e16 r16  r2.
}

lowerIntro = \relative c, {
  <e e'>4  e16[ e' e, e'] e,[ e']  <e, e'>16 r8 <e e'>16 r8

  <e, e'>16 r16 r8 r2.
  <e e'>16 r16 r8 r2.
  <e e'>16 r16 <e e'> r16 r2.
  <e e'>16 r16 <e e'> r16 r2.
}

upperAa = \relative c' {
  e8 e  e16[ e'8]  d[ b]  a[ b16 a b]
  e,8 e  e16[ e'8]  d[ b]  e[ d16 b a]
  e8 e  e16[ e'8]  d[ b]  a16[ b8 g16 a]
  e16[ fis g]  fis[ g a]  g[ a b]  a[ b d]  b[ d <e, e'>8]

  e'8 e  e16[ e'8]  d[ b]  a[ b16 a b]
  e,8 e  e16[ e'8]  d[ b]  e[ d16 b a]
  e8 e  e16[ e'8]  d[ b]  a16[ b8 g16 a]
  e16[ fis g]  fis[ g a]  g[ a b]  a[ b d]  b[ d <e, e'>8]
}

lowerAa = \relative c {
  e,16 e' e, e' e, e' e, e' e, e' e, e' e, e' e, e'
  c16 c' c, c' c, c' c, c' c, c' c, c' c, c' c, c'
  a,16 a' a, a' a, a' a, a' a, a' a, a' a, a' a, a'
  <e, e'>8. <d d'> <c c'> <b b'> <e, e'>4

  e''16[ b' e b e b]  e,[ b' e b e b]  e, b' e b
  c,16[ g' c g c g]  c,[ g' c g c g]  c, g' c g
  a,16[ e' a e a e]  a,[ e' a e a e]  a, e' a e
  <e, e'>8. <d d'> <c c'> <b b'> <e, e'>4
}

upperB = \relative c'' {
  e8. b' r r8  e,16 a b a e
  g8  r4 r4 r16  e16 g a g e
  fis8. d  r4 r8  d8 d16 e(
  e8) b8. a b g a8

  e8  e16[ b'8]  e,16[ a8]  e16[ g8]  e16[ fis g fis8]
  e8  e16[ b'8]  e,16[ a8]  e16[ g8]  e16[ c'8 b16 c]
  e,8  e16[ b'8]  e,16[ a8]  e16[ g8]  e16[ fis g fis8]
  e8  e16[ b'8]  e,16[ a8]  e16[ fis8]  e16[ e'8] <e, e'>16[ <e e'>]
}

lowerB = \relative c {
  e16[ b' e b e b]  e,[ b' e b e b]  e, b' e b
  c,16[ g' c g c g]  c,[ g' c g c g]  c, g' c g
  d16[ a' d a d a]  d,[ a' d a d a]  d, a' d a
  e16[ b' e b e b]  e,[ b' e b e b]  e, b' e b

  e,16[ b' e b e b]  e,[ b' e b e b]  e, b' e b
  d,16[ a' d a d a]  d,[ a' d a d a]  d, a' d a
  c,16[ g' c g c g]  c,[ g' c g c g]  c, g' c g
  b,16[ fis' b fis b fis]  b,[ fis' b fis b fis]  b, fis' b fis
}

upperAb = \relative c' {
  <e e'>8 <e e'>  <e e'>16 <e' e'>8 <d d'> <b b'>  <a a'> <b b'>16 <a a'> <b b'>

  <e, e'>8 <e e'>  <e e'>16 <e' e'>8 <d d'> <b b'>
    <e e'> <d d'>16 <b b'> <a a'>

  <e e'>8 <e e'>  <e e'>16 <e' e'>8 <d d'> <b b'>
    <a a'>16 <b b'>8 <g g'>16 <a a'>

  <e e'>16[ <fis fis'> <g g'>]  <fis fis'>[ <g g'> <a a'>]
    <g g'>[ <a a'> <b b'>]  <a a'>[ <b b'> <d d'>]  <b b'>[ <d d'> <e e'>8]
}

lowerAb = \relative c {
  e16[ b' e b e b]  e,[ b' e b e b]  e, b' e b
  c,16[ g' c g c g]  c,[ g' c g c g]  c, g' c g
  a,16[ e' a e a e]  a,[ e' a e a e]  a, e' a e
  <e, b' e>8. <d a' d> <c g' c> <b fis' b> r8 <e, b' e>
}
