\version "2.18.2"

\include "comedy_music.ily"

trumpetHeadAalt = \relative g' {
  R1 |
  r2 g8--( a b c |
  d4)-^ r4 r2 |
  r2 g,8( a \tuplet 3/2 { b[ c cis] } |
  d4)-^ r r
}

trumpetOneNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
    \relative c'' \svVamp %7
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4-^\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. | %44
  r1 | %45
  \relative dis'' \avTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 d-> \glissando f,-. r | %57
  \textLengthOn
  <> -\markup "Harmon stem in"
  R1*3 | %60
  \textLengthOff
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  \textLengthOn
  <> -\markup "senza sord."
  R1*4 | %67
  \textLengthOff
  r2.
  << { s4 \ff } { \relative f'' \svShoutA } >>
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  %\relative a' \svBHeadAalt
  \time 6/8
  a'8-. \f r d16 d d4-> a16[ a] | %81
  d8[ b16 b d8] e16[ e a,8 e'] | %82
  r4. r4. |
  r4. r4. |
  %r4 d16[ d] d4 a16 a | %83
  %b8[ d16 d b8] e8[ cis16 cis e8]  | %84
  r4 d16 d d4 %85
  \relative a' \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes' \keepWithTag #'head \tvCHeadB %100
  \textLengthOn
  <> -\markup "Harmon no stem"
  R1*4 | %104
  \textLengthOff
  R1 | %105
  r2 g2-> | %106
  \textLengthOn
  <> -\markup \italic "senza sord." 
  R1*5 | %111
  \textLengthOff
  aes2 a->| %112
}

trumpetTwoNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
  \relative c'' \avVamp
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4-^\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. |
  r1 |
  \relative b' \tvTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 bes,-> \glissando f-. r | %57
  \textLengthOn
  <> -\markup "Harmon stem in"
  R1*3 | %60
  \textLengthOff
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  \textLengthOn
  <> -\markup "senza sord."
  R1*4 | %67
  r2.
  << { s4 \ff } { \relative f'' \svShoutA } >>
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  \time 6/8
  %a'8-.[ r d16 d] d4[ a16 a] | %81
  %d8 a16 a d8 e16 e a,8 e' | %82
  %r4 d16 d d4 a16 a | %83
  %e'8 cis16 cis e8 | %84
  %r4 a,16 a a4 %85
  r4. r4. |
  r4. r4. |
  r4 d''16[ d] d4 a16 a | %83
  b8[ d16 d b8] e8[ cis16 cis e8]  | %84
  r4 a16 a a4 %85
  \relative a' \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes' \keepWithTag #'head \tvCHeadB %100
  \relative f' \keepWithTag #'(tail upper) \avCHeadB %104
  R1*7 | %111
  aes2 ges2-> | %112
}

trumpetThreeNotes = \relative c'' {
  \transposition bes
    \global
    <> \f \svFanfare
    \relative c'' \tvVamp
    R1*2 | %9
    \repeat unfold 2 {
      R1*7 | %16
        r2 d=''4-^\f r4 | %17
    }
  \svHeadB
  \trumpetHeadAalt
  \octaveCheck d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r2. |
  r1 |
  \relative fis' \svTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 g,-> \glissando f-. r | %57
  R1 ^\markup "wah-wah" | %58
  R1*2 | %60
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  R1 ^\markup "senza sord." | %64
  R1*3 | %67
  r2.
  << { s4 \ff } { \relative f' \svShoutA } >>
  \relative f' \svShoutB
  \relative f' \svShoutA
  \relative aes \svShoutC
  \relative a' \svTransB
  \time 6/8
  a'8-. \f r a16 a a4-> fis8 | %81
  g8 d g16 g a8 e a16 a | %82
  r4 a16 a a4-> fis8 | %83
  d8 g d16 d a'8 e a16 a16 | %84
  r4 fis16 fis fis4 %85
  \relative a \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes \keepWithTag #'head \tvCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  R1*7 | %111
  fes2 ges-> | %112
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
        a-. r c-^ \f r |
    }
  \relative d' \keepWithTag #'upper \tvHeadB %29
  \relative b' \removeWithTag #'(two threeFour) \tvHeadAalt
  \relative g' \keepWithTag #'upper \tvHeadAout
  \tvTransOne %45
  \svTransTwo 
  r4 r2 | %48
  R1*8 | %56
  f4-> r4 r2 | %57
  R1*23 | %80
  \relative a \keepWithTag #'head \svBHeadAalt
  \relative a \keepWithTag #'(tail upper) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative bes' \keepWithTag #'head \svCHeadB %100
  \relative f' \keepWithTag #'(tail upper) \avCHeadB %104
  \relative g' \keepWithTag #'(head lower) \avCHeadAlt %109
  \relative fes' \keepWithTag #'upper \tvCHeadAlt %112
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
  \tvTransOne %45
  \svTransTwo 
  r4 r2 | %48
  R1*8 | %56
  f4-> r4 r2 | %57
  R1*23 | %80
  \relative a \keepWithTag #'head \svBHeadAalt
  \relative fis \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees \keepWithTag #'(head upper) \avCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  \relative bes \keepWithTag #'(head upper) \avCHeadAlt %109
  \relative des' \keepWithTag #'lower \tvCHeadAlt %112
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
  \relative b \avTransOne %45
  \relative b \tvTransTwo %48
  r4 r2 | %48
  R1*8 | %56
  f4-> r4 r2 | %57
  R1*23 | %80
  \relative a \keepWithTag #'head \svBHeadAalt
  \relative fis \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \relative a \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees' \keepWithTag #'(head lower) \avCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  \relative g \keepWithTag #'(head lower) \avCHeadAlt %109
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
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
  R1*5 | %45
  \relative b \tvTransTwo %48
  r4 r2 | %48
  R1*8 | %56
  r2 c,4-. 
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*4 | %62
  a,4-. a-. r2 | %63
  R1*2 | %65
  r2. des'4-. | %66
  r c-. r4. b8->( | %67
  c8)-. bes( b)-. a( bes)-. aes( a)-. fis( | %68
  g4)-. r2. | %69
  s1*11
  \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
  \keepWithTag #'first \svTransC %90
  R1*2 | %92
  r2 r4 %93
  \keepWithTag #'(third fourth fifth) \svTransC %96
  \relative bes \keepWithTag #'head \svCHeadB %100
  R1*4 | %104
  R1*6 | %110
  \relative des' \keepWithTag #'lower \tvCHeadAlt %112
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
  R1*5 | %45
  \relative b \tvTransTwo %48
  r4 r2  | %48
  R1*8 | %56
  r2 c,4-. %57
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*4 | %62
  a,4-. a-. r2 | %63
  R1*2 | %65
  r2. des'4-. | %66
  r c-. r4. b8->( | %67
  c8)-. bes( b)-. a( bes)-. aes( a)-. fis( | %68
  g4)-. r2. | %69
  s1*11
  \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
  \keepWithTag #'first \svTransC %90
  R1*2 | %92
  r2 r4 %93
  \keepWithTag #'(third fourth fifth) \svTransC %96
  \relative bes \keepWithTag #'head \svCHeadB %100
  R1*4
  R1*6 | %110
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
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
      r2 d4-^ \f r4 | %17
  } %25
  \relative g \bvHeadB %32
  \relative d \svHeadAalt %40
  R1*3 | %43
  \relative g \bvFirstTrans %51
  R1*5 | %56
  r2 c'4-.
  \keepWithTag #'(first second) \svDevTwo
  r8 r2. | %59
  R1*3 | %62
  a,4-. a-. r2 | %63
  R1*4 | %67
  r4. a8( bes)-. aes( a)-. fis( | %68
  g4)-. r2. | %69
  s1*11
  \relative d \bvBHeadAalt
  \relative a \keepWithTag #'first \svTransC %90
  R1*2 | %92
  r2 r4 %93
  \relative a \keepWithTag #'(third fourth) \svTransC %95
  \relative a, \keepWithTag #'fifth \svTransC %96
  \relative ees \bvCHeadB %104
  R1*3 | %107
  r2 fis,-> | %108
  R1*2 | %110
  ges'1-> ~ \mp | %111
  ges2 ces2-> | %112
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
  R1*5 | %45
  \relative ees' \avTransTwo %48
  r4 r2 | %48
  R1*7 | %55
  f,4-> r4 r2 | %56
  r2.
  \relative f, \keepWithTag #'(first second third) \svDevTwo
  r8 r4 | %59
  R1*21 | %80
  \relative a \keepWithTag #'(head lower) \avBHeadAalt
  \relative a, \keepWithTag #'(tail) \svBHeadAalt
  R1*2 | %90
  \relative a, \keepWithTag #'first \svTransC %92
  R1 | %93
  r2 r4 %94
  \relative a, \keepWithTag #'(fourth fifth) \svTransC %96
  \relative bes \svCHeadB %100
  R1*6 | %110
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
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
  R1*4 | %55
  r2 c4-> r | %56
  r2 c'4-. %57
  \relative f, \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  c,8
  \relative aes,, \keepWithTag #'(third fourth)
      \svDevTwo %63
  R1*17 |
  \relative d \bvBHeadAalt
  R1*2 | %90
  \relative a,, \keepWithTag #'first \svTransC %92
  R1*3 | %95
  \relative a,, \keepWithTag #'fifth \svTransC %96
  \relative ees, \bvCHeadB %104
  R1*3 | %107
  r2 fis,-> | %108
  R1*2 | %110
  ges'1-> ~ \mp | %111
  ges2 ces,2 | %112
}

doubleBassNotes = \relative c,,{
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
  R1*2 | %90
  \relative a,, \keepWithTag #'first \svTransC %92
  R1*3 | %95
  \relative a,, \keepWithTag #'fifth \svTransC %96
  \relative ees, \bvCHeadB %104
  R1*6 | %110
  ges'1-> ~ \mp | %111
  ges1 | %112
}
