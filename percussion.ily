\version "2.18.2"

\include "comedy_music.ily"

pianoRHNotes = {
  \global
    \FanfareRest
    <<
    \relative d'' \svVamp
    \relative b' \avVamp
    \relative g' \tvVamp
    <> \ff
    >>
    <<
    \relative d' \svVamp
    \relative b \avVamp
    \relative g \tvVamp
    <> \mp
    >>
}

pianoLHNotes = {
  \global
    \FanfareRest
    <<
    \relative g \bvVamp
    \relative g, \bvVamp
    >>
    \relative g \bvVamp
}

timpaniNotes = \relative c' {
  <<
    { s1*2 s2. <> \ff }
    { \bvFanfare }
  >>
    <<
    \repeat unfold 2 { \relative g \bvVamp }
  { s1*2 | <> \mp }
  >>
}

percussionOneNotes = \drummode {
  s1*3 | %4
    r2 tt2 ^\tweak self-alignment-X #RIGHT ^\markup \smaller {"sm. tamtam"}  \fermata \f
}

percussionTwoNotes = \drummode {
  \FanfareRest
}
