upperA = \relative c'' {
  \repeat volta 2 {
    b'8[ a g8] e16 g8[ a8 b8] a16 g e
    b'8[ a g8] e16 g8[ a8 e8] g16 d8
    b'8[ a g8] fis16 g8[ a8 e8] g16 d8
    c8.[ d] e[ fis] g8 a
  }
}

upperB = \relative c'' {
  \repeat volta 2 {
    b'16[ b, d]  a'[ b, d]  g[ b, d]  fis[ b, d]  g[ b, a' b,]
    g'16[ g, b]  fis'[ g, b]  e[ g, b]  d[ g, b]  d[ g, b d]
    fis,16[ a d]  fis,[ a d]  fis[ fis, a]  e'[ fis, a]  d[ fis, a d]
    c16[ e, g]  b[ g a]  b[ a b]  d[ b d]  g[ d g a]
  }
}

lowerAB = \relative c' {
  \repeat unfold 2 {
    \repeat volta 2 {
      g16[ d' g d g d]  g,[ d' g d g d]  g,[ d' g d]
      e,16[ b' e b e b]  e,[ b' e b e b]  e,[ b' e b]
      d,16[ a' d a d a]  d,[ a' d a d a]  d,[ a' d a]
      c,16[ g' c g c g]  c,[ g' c g c g]  c,[ g' c g]
    }
  }
}

upperCoda = \relative c'' {
  b'8[ a g8]  e16 g8[ a8]
  b8[ a g8]  e16 g8[ a8]
  b8[ a g8]  fis16 g8[ a8]
  r2  r8.
  \bar "|."
}

lowerCoda = \relative c' {
  g8 <d' g>  r8 r8.  <d g>8
  fis,8 <d' fis>  r8 r8.  <d fis>8
  e,8 <b' e>  r8 r8.  <b e>8
  c,,2  r8.
}
