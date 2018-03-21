\version "2.18.2"

\include "comedy_music.ily"

trumpetHeadAalt = \relative g' {
  r1 |
  r2 g8--( a b c |
  d4)-^ r2. |
  \autoBeamOff
  r2 r8 g,( \tuplet 3/2 { a[ b c] } |
  d4)-^ r2 
  \autoBeamOn
}

trumpetOneNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
    \relative c'' \svVamp %7
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4->\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. |
  r1 |
  \relative dis'' \avTransTwo
  s2. |
  s1*19 |
  s2.
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  \relative a' \svBHeadAalt
}

trumpetTwoNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
  \relative c'' \avVamp
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4->\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. |
  r1 |
  \relative b' \tvTransTwo
  s2. |
  s1*19 |
  s2.
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  \relative a' \svBHeadAalt
}

trumpetThreeNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
    \relative c'' \tvVamp
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4->\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. |
  r1 |
  \relative fis' \svTransTwo
  s2. |
  s1*19 |
  s2.
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  \relative a' \svBHeadAalt
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hornOneNotes = \relative c'{
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative d' \svVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        a8-.\mp a-. a4-> r4 g-> |
        a-. r c-> \f r |
    }
  \relative d' \keepWithTag #'upper \tvHeadB %29
  \relative b' \removeWithTag #'(two threeFour) \tvHeadAalt
  \relative g' \keepWithTag #'upper \tvHeadAout
}

hornTwoNotes = \relative c' {
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative b \avVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        \removeWithTag #'(main lower) \relative f' \avHeadA
    }
  \relative d' \keepWithTag #'upper \tvHeadB %29
  \relative b' \removeWithTag #'(one threeFour) \tvHeadAalt
  \relative g' \keepWithTag #'upper \tvHeadAout
}

hornThreeNotes = \relative c' {
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative g \tvVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        \removeWithTag #'(main upper) \relative c \avHeadA
    }
  \relative d \keepWithTag #'lower \tvHeadB %28
  \relative b' \removeWithTag #'(one two) \tvHeadAalt
  \relative c' \keepWithTag #'lower \tvHeadAout
}

hornFourNotes = \relative c' {
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative g \tvVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        \removeWithTag #'(main upper) \relative c \avHeadA
    } 
  \relative d \keepWithTag #'lower \tvHeadB %29
  \relative b' \removeWithTag #'(one two) \tvHeadAalt
  \relative c' \keepWithTag #'lower \tvHeadAout
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneOneNotes = \relative d' {
  \global
  \FanfareRest | %5
  <<
    { \svVamp }
    {r4 <> \ff }
  >>
  R1*2 %7
  \repeat unfold 2 { \relative d \svHeadA }
  \svHeadB
  \svHeadAalt
  s1*40
  \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
}

tromboneTwoNotes = \relative b {
  \global
    \FanfareRest
    <<
    { \avVamp }
  {r4 <> \ff }
  >>
    R1*2 %9
    R1*16 %25
    \svHeadB
    \svHeadAalt
  s1*40
  \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
}

bassTromboneNotes = \relative g, {
  \global
    \FanfareRest
    <<
    { \relative g, { \bvVamp \bvVamp } }
  { <> \ff s1 | s1 | <> \mp s1 | s1 }
  >> %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d4-> \f r4 | %17
    } %25
  \relative g \bvHeadB
  s1*48
  \relative d \bvBHeadAalt
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumNotes = \relative c' {
  \global
    \FanfareRest
    <<
    { \relative g { \tvVamp \tvVamp } }
  { s4 <> \ff s2. | s1 | s4 <> \mp}
  >>
  \repeat unfold 2 { \relative d \svHeadA } %24
  \relative d \keepWithTag #'lower \tvHeadB
  \relative b \removeWithTag #'(one two) \tvHeadAalt
}

tubaNotes = \relative c, {
  \global
    \FanfareRest %5
    <<
    { \relative g, { \bvVamp \bvVamp } }
  { <> \ff s1 | s1 | <> \mp s1 | s1 }
  >> %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d4-^ r | %17
    } %25
  \relative g \bvHeadB %33
  \relative g, \bvHeadAalt %41
  \relative a, \bvHeadOut %44
  \relative g, \bvFirstTrans %52
  s1*29 |
  \relative d \bvBHeadAalt
}

doubleBassNotes = {
  \global
    \FanfareRest
    <<
    { 
      <>^\markup \italic "arco"
        \relative g, { \bvVamp \bvVamp } 
    }
  {<> \ff s1 | s1 | <> \mp s1 | s1 }
  >>
    <>^\markup \italic "pizz."
    \repeat unfold 2 { \relative g, \bvHeadA } %25
    \relative g \bvHeadB %33
    \relative g, \bvHeadAalt %41
    \relative a, \bvHeadOut %44
    \relative g, \bvFirstTrans %52
  s1*29 |
  \relative d \bvBHeadAalt
}
