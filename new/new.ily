upperA = \relative c'' {
  \repeat unfold 2 {
    b'8[ a g8] e16 g8[ a8 b8] a16 g e
    b'8[ a g8] e16 g8[ a8 e8] g16 d8
    b'8[ a g8] fis16 g8[ a8 fis8] g16 e8
    c8.[ d] e[ fis] g8 a
  }
}

upperB = \relative c'' {
  \repeat unfold 2 {
    b'8. a g fis g8 a
    g8. fis e d d8 d
    d8. d d fis e8 d
    c8. b b d b16 d g a
  }
}

lowerAB = \relative c' {
  \repeat unfold 4 {
    g16[ d' g d g d]  g,[ d' g d g d]  g,[ d' g d]
    e,16[ b' e b e b]  e,[ b' e b e b]  e,[ b' e b]
    d,16[ a' d a d a]  d,[ a' d a d a]  d,[ a' d a]
    c,16[ g' c g c g]  c,[ g' c g c g]  c,[ g' c g]
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
  g8 <d' g>  r8  <d g>4  r16
  fis,8 <d' fis>  r8  <d fis>4  r16
  e,8 <b' e>  r8  <b e>4  r16
  c,,2  r8.
}
