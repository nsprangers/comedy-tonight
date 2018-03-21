\version "2.18.2"

first = \relative c'' {
    \time 2/2
  fis2 d4 gis4~ |
    gis4 d fis4. fis8 |
    d4 ais'2.~ | ais1 | 

}

second = \relative c'' {
  d2 a4 e'4~ |
    e4 a, d4. d8 |
    a4 fis'2.~ | fis1 |
}

third = \relative c' {
  s1*2 |
  s4 c2.~ |
  <<
  {c1 }
  \\
  { 
    r4 
    \set Staff.midiInstrument = "timpani"
    ais4 \ff d,2 
  }
  >>
}

\score {
  \new Staff \with {
    midiInstrument = "trumpet"
  } {
    <>^\markup \smaller "I came up with these notes first. It's kind of whole-tone and ambiguous sounding (hopefully)."
      \first
      \bar "||" \break
      <> ^\markup \smaller "Then I paired it with a more diatonic sounding line, which now implies D, E, and F# chords."
      << \first \second >>
      \bar "||" \break
      \set Staff.midiInstrument = "french horn"
      <>^\markup \smaller "If I invert it, all the open intervals make it sound very french horn like to me"
      << \second \transpose c c, \first >>
      \bar "||" \break
      <>^\markup \smaller ""
      << \first \second \transpose c c, \first \third >>
  }

  \layout {
  %ragged-right = ##t
    indent = #0
  }

  \midi { \tempo 2 = 92 }
}
