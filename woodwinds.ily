\version "2.18.2"

\include "comedy_music.ily"

piccoloNotes = \relative c'''' {
  \transposition c''
    \global
    \FanfareRest
    <<
    { 
      %\relative d'''' 
        \svVamp }
  { s4 <> \ff }
  >>
  R1*2 %9
  \repeat unfold 2 {
    R1*7 | %16
    r2 d4-^\f r4 | %17
  }
  \svHeadB
  \svHeadAalt
  R1*3 | r4
  \relative d''' \svTransOne
  \relative fis''' \svTransTwo
  r2.
  R1*7
  r2. f4-. \f | %56
  R1*2 | %58
  c,8
  \relative aes'' \keepWithTag #'(third fourth) \svDevTwo %62
  R1*17 %80
  <> \f \relative a''' \removeWithTag #'tail \svBHeadAalt
  \relative b''' \keepWithTag #'(tail upper) \avBHeadAalt
  R1*4 | %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a''' \keepWithTag #'fifth \svTransC %96
  \relative bes''' \keepWithTag #'head \svCHeadB %100
  R1*4 | %104
  R1*4 | %108
  \relative bes'' \keepWithTag #'thir \svCHeadAlt %112
  R1*5 | %117
  f,4-> \< fis-> g-> gis-> | %118
  bes8-. \ff bes-. bes2.-> ~ | %119
  bes4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \relative c''' \oneTwoThree bes,2 | %125
  bes'2-> r2 | %126
}

fluteOneNotes = \relative c'' {
  \transposition c'
  \global
  \FanfareRest %4
  <<
    {
      \relative d''' \svVamp %6
        \relative d'' \svVamp %8
    }
    { s4 <> \ff s2. | s1 | s4 \mp s2. | s1 }
  >>
  R1*7 | %15
  r2 d=''4-^ r4 | %16
  \relative d'' \fluteOrnamentedHeadA
  \relative b'' \removeWithTag #'lower \avHeadB
  \relative d'' \removeWithTag #'lower \avHeadAalt
  R1*3 |
  r4 \relative b'' \avTransOne
  \relative dis''' \avTransTwo
  \relative fis'' \svTransThree
  \relative d''' \avDevOne
  \relative g''' \svDevOneTag
  r2. c'4 \f | %56
  r2.
  \relative f''
      \keepWithTag #'(first second third) \svDevTwo
  r8 r4 | %59
  R1*8 | %67
  r2.
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  R1
  <> \f \relative a'' \removeWithTag #'tail \svBHeadAalt
  \relative g'' \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a''' \keepWithTag #'fifth \svTransC %96
  \relative bes'' \keepWithTag #'head \tvCHeadB %100
  \relative aes'' \keepWithTag #'tail \svCHeadB %104
  \relative bes'' \keepWithTag #'fir \svCHeadAlt %106
  R1*2 | %108
  \relative bes' \keepWithTag #'thir \svCHeadAlt %112
  R1*5 | %117
  f,4-> \< fis-> g-> gis-> | %118
  bes8-. \ff bes-. bes2.-> ~ | %119
  bes4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \relative c'' \oneTwoThree r2 | %125
  R1 | %126
}

fluteTwoNotes = \relative c'' {
  \transposition c'
  \global
    \FanfareRest
    <<
    {
      \relative b'' \avVamp %7
        \relative b' \avVamp %9
    }
  { s4 <> \ff s2. | s1 | s4 <> \mp }
  >>
  R1*7 | %15
  r2 d=''4-^ r4 | %16
  \fluteOrnamentedHeadA
  \relative b'' \removeWithTag #'upper \avHeadB
  \relative d'' \removeWithTag #'upper \avHeadAalt
  R1*3 | r4
  \relative g'' \tvTransOne
  \relative b'' \tvTransTwo
  \relative d'' \avTransThree
  \relative d''' \avDevOne
  \relative ees''' \avDevOneTag
  r2. a4 \f | %56
  r2.
  \keepWithTag #'(first second third) \svDevTwo
  r8 r4 | %59
  R1*8 | %67
  r2.
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative aes' \svShoutC
  \relative a'' \svTransB
  R1
  <> \f \relative a'' \removeWithTag #'tail \svBHeadAalt
  \relative b' \keepWithTag #'(tail upper) \avBHeadAalt
  R1*4 | %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a'' \keepWithTag #'fifth \svTransC %96
  \relative bes'' \keepWithTag #'head \tvCHeadB %100
  \relative aes'' \keepWithTag #'tail \svCHeadB %104
  \relative bes'' \keepWithTag #'fir \svCHeadAlt %106
  R1*2 | %108
  \relative bes' \keepWithTag #'thir \svCHeadAlt %112
  R1*5 | %117
  f,4-> \< fis-> g-> gis-> | %118
  bes8-. \ff bes-. bes2.-> ~ | %119
  bes4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \relative c'' \oneTwoThree r2 | %125
  R1 | %126
}

oboeNotes = \relative c''{
  \global
    \FanfareRest
    <<
    { \relative g'' \tvVamp }
  { s4 \ff s2. | s1 | }
  >>
  R1*2 %9
  R1*7 | %15
  r2 fis4-^ \f r4 | %16
  \svHeadA
  \relative b'' \removeWithTag #'lower \avHeadB
  \relative d'' \removeWithTag #'lower \avHeadAalt
  R1*3 |
  r4 \relative b'' \avTransOne
  \relative eis'' \avTransTwo
  \relative d'' \avTransThree
  \relative d'' \avDevOne
  \relative g'' \svDevOneTag
  r2. a4 |
  r2. f8 g | 
  a f g a bes r r4 |
  R1*22
  <> \mf \relative a' \removeWithTag #'lower \avBHeadAalt
  R1*5 | %93
  r2 r4
  \relative a'' \keepWithTag #'(fourth fifth) \svTransC %96
  \relative bes'' \svCHeadB %104
  R1*2 | %106
  \relative bes'' \keepWithTag #'sec \svCHeadAlt %104
  \relative bes' \keepWithTag #'thir \svCHeadAlt %112
  R1*4 | %116
  r2 c,2-> \fp | %117
  f4-> \< fis-> ~ fis2 | %118
  b,8-. \ff b-. b2.-> ~ | %119
  b4-> r bes2-> | %120
  \svLastVamp %122
  \restTwoThree r2 | %125
  R1 | %126
}

bassoonNotes = \relative c {
  \global
  \FanfareRest
  <<
    { \relative g, { \bvVamp \bvVamp } }
    { <> \ff s1 | s1 | <> \mp s1 | s1 }
  >> %9
  \repeat unfold 2 { \svHeadA } | %25
  \bvHeadB | %32
  \relative d \svHeadAalt
  R1*3 | r4
  \relative g \tvTransOne
  \tvTransTwo
  \tvTransThree
  r4 | %51
  R1*5 | %56
  f4-. \f r4 r4
  \relative f \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*22 | %80
  <> \f \relative d \bvBHeadAalt
  R1*4 | %92
  \relative a \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees \keepWithTag #'(head lower) \avCHeadB %100
  \relative aes \keepWithTag #'tail \svCHeadB %104
  R1*2 | %106
  \relative bes \keepWithTag #'(sec ) \svCHeadAlt %108
  \relative bes, \keepWithTag #'(thir ) \svCHeadAlt %112
  R1*2 | %114
  fis,,1-> \fp | %115
  c'-> \fp | %116
  f2-> \fp b-> \fp ~ | %117
  b1 \< | %118
  e8-. \ff e-. e2. ~ | %119
  e4-. r f,2-> | %120
  \relative ees \bvLastVamp %122
  \relative c \oneTwoThree r2 | %125
  r2 ees,4-> r | %126
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetOneNotes = \relative c''{
  \transposition bes
    \global
    \FanfareRest %5
    <<
    {
      \relative d'' \svVamp %7
        \relative d' \svVamp %9
    }
  { s4 <> \ff s2. | s1 | s4 \mp s2. | s1 }
  >>
    \repeat unfold 2 { \relative d' \svHeadA } %25
    \relative d'' \svHeadB %33
    \relative d' \svHeadAalt %41
    \relative d'' \svHeadAout %45
    \relative f'' \svTransOne
    \relative dis'' \avTransTwo
    \svTransThree
    \relative bes' \svDevOne
    \relative g'' \svDevOneTag
    r2. c4 |
    r2.
    \relative f'' \keepWithTag #'(first second) \svDevTwo
    r8 r4 r2 | %59
    R1*14 | %73
    r2 r4 \relative aes' \keepWithTag #'(first second) \svShoutC
    e,4 r | %76
    R1*4 | %80
    <> \f \relative a' \removeWithTag #'tail \svBHeadAalt
    \relative b' \keepWithTag #'(tail upper) \avBHeadAalt
    R1*4 | %92
    \relative a' \keepWithTag #'(second third) \svTransC %94
    \relative a'' \keepWithTag #'(fourth fifth) \svTransC %96
  \relative bes'' \svCHeadB %100
  \relative bes' \keepWithTag #'fir \svCHeadAlt %106
  \relative bes' \keepWithTag #'(sec thir) \svCHeadAlt %112
  R1*4 | %116
  r2 c2-> \fp | %117
  f4-> \< fis-> g-> gis-> | %118
  bes8-. \ff bes-. bes2.-> ~ | %119
  bes4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \relative c'' \oneTwoThree f,2 \glissando | %125
  bes-> r | %126
}

clarinetTwoNotes = \relative c' {
  \transposition bes
  \global
  \FanfareRest %5
  <<
    {
      \relative b' \avVamp %7
        \relative b \avVamp %9
    }
    { s4 <> \ff s2. | s1 | s4 <> \mp }
  >>
  \repeat unfold 2 {
    \relative d' \removeWithTag #'lower \avHeadA
  }
  \relative b' \removeWithTag #'lower \avHeadB
  \relative d' \removeWithTag #'lower \avHeadAalt
  R1*3 |
  r4 \relative b' \avTransOne
  \relative b' \tvTransTwo
  \relative d'' \avTransThree
  \relative bes' \svDevOne
  \relative ees'' \avDevOneTag
  r2. a''4 |
  r2.
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
    R1*15 | %73
    r2 r4 \relative aes' \keepWithTag #'(first second) \svShoutC
    e,4 r | %76
    R1*4 | %80
  <> \mf \relative a' \removeWithTag #'lower \avBHeadAalt
  R1*4
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees' \keepWithTag #'(head upper) \avCHeadB %100
  \relative aes'' \keepWithTag #'tail \svCHeadB %104
  \relative bes' \keepWithTag #'fir \svCHeadAlt %106
  \relative bes' \keepWithTag #'(sec thir) \svCHeadAlt %112
  R1*4 | %116
  fis,1-> \fp ~ | %117
  fis4 g-> \< gis-> a-> | %118
  c8-. \ff c-. c2.-> ~ | %119
  c4-. r bes2-> | %120
  \relative bes'' \svLastVamp %122
  \relative c'' \restTwoThree r2 | %125
  r2 ees,,4-> r | %126
}
clarinetTwoMusic = { \clarinetTwoNotes }

clarinetThreeNotes = \relative c' {
  \transposition bes
  \global
  \FanfareRest %5
  <<
    {
      \relative g' \tvVamp %7
      \relative g \tvVamp %9
    }
    { s4 <> \ff s2. | s1 | s4 <> \mp }
  >>
  \repeat unfold 2 {
      \relative d' \removeWithTag #'upper \avHeadA
  }
  \relative b' \removeWithTag #'upper \avHeadB
  \relative d' \removeWithTag #'upper \avHeadAalt
  R1*3 | r4
  \relative g' \tvTransOne
  \relative fis' \svTransTwo
  \relative bes' \tvTransThree
  \relative bes' \svDevOne
  \relative ees'' \avDevOneTag
  r2. f'4 |
  r2.
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
    R1*15 | %73
    r2 r4 \relative aes \keepWithTag #'(first second) \svShoutC
    e,,4 r | %76
    R1*4 | %80
  <> \mf \relative fis' \removeWithTag #'upper \avBHeadAalt
  R1*4 | %92
  \relative a \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees' \keepWithTag #'(head lower) \avCHeadB %100
  \relative aes' \keepWithTag #'tail \svCHeadB %104
  \relative bes \keepWithTag #'fir \svCHeadAlt %106
  \relative bes \keepWithTag #'(sec thir) \svCHeadAlt %112
  R1*4 | %116
  r2 b2-> \fp | %117
  fis'4-> g-> \f \< gis-> a-> | %118
  b8-. \ff b-. b2.-> ~ | %119
  b4-. r bes2-> | %120
  \relative g'' \avLastVamp %122
  \relative c'' \restTwoThree r2 | %125
  r ees,,4-> r | %126
}
clarinetThreeMusic = { \clarinetThreeNotes }

bassClarinetNotes = \relative c {
  \transposition bes,
  \global
    \FanfareRest
    <<
    { \relative g, { \bvVamp \bvVamp } }
  { <> \ff s1 | s1 | <> \mp s1 | s1 }
  >> %9
  \repeat unfold 2 { \relative g \bvHeadA } %25
  \relative g' \bvHeadB %33
  \relative g \bvHeadAalt %41
  \relative a \bvHeadOut %44
  \relative g \bvFirstTrans %52
  \relative f' \tvDevOne
  f,4 r4 r2 |
  f'4 r r 
  \relative f \keepWithTag #'(first second) \svDevTwo
  r8 r4 r2 | %59
  R1*21
  <> \f \relative d \bvBHeadAalt
  R1*2 | %90
  \relative a, \keepWithTag #'first \svTransC %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a, \keepWithTag #'fifth \svTransC %96
  \relative ees \bvCHeadB %104
  \relative ees \bvCHeadAlt %112
  R1*4 | %116
  f1 \fp | %117
  fis'4-> \< g-> gis-> a-> | %118
  e8-. \ff e-. e2. ~ | %119
  e4-. r f2-> | %120
  \relative f \bvLastVamp %122
  \relative c' \oneTwoThree r2 | %125
  r2 ees,,4-> r | %126
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoSaxOneNotes = \relative c' {
  \transposition ees
    \global
    \FanfareRest
    <<
    {
      \relative d'' \svVamp %7
        \relative d' \svVamp %9
    }
  { s4 <> \ff s2. | s1 | s4 \mp s2. | s1 }
  >>
    \repeat unfold 2 {
      \removeWithTag #'(lower tag) \avHeadA
      %R1*6 | %15
      \relative a' \removeWithTag #'main \svHeadA
    } %24
  \relative d' \keepWithTag #'upper \tvHeadB %28
  \relative b' \removeWithTag #'tail \tvHeadAalt %40
  g,4 \mf a b d | %38
  aes4-^ r aes4.-> g8-. | %39
  aes4-. \<  bes-.  c-.  des-.  \! | %40
  \relative g' \keepWithTag #'upper \tvHeadAout
  \relative b' \avTransOne
  \relative dis'' \avTransTwo
  \relative d'' \avTransThree
  r4 | %51
  R1*4 | %55
  r4 a8-. \f a-. r2 |%56
  r2.
  \relative f' \keepWithTag #'(first second) \svDevTwo
  r8 r4 r2 | %59
  R1*3
  r2.
  \relative aes' \svDevThree
  r4 r2 |
  R1*11
  <> \f \relative a' \removeWithTag #'tail \svBHeadAalt
  \relative b \keepWithTag #'(tail upper) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative bes' \keepWithTag #'head \svCHeadB %100
  \relative aes' \keepWithTag #'tail \svCHeadB %104
  \relative g' \keepWithTag #'(head lower) \avCHeadAlt %109
  \relative fes' \keepWithTag #'upper \tvCHeadAlt %112
  R1*4 | %116
  fis'2-> \fp c'-> \fp | %117
  f4-> \< fis-> g-> aes-> | %118
  c,8-. \ff c-. c2. ~ | %119
  c4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \relative c' \oneTwoThree r2 | %125
  R1 | %126
}

altoSaxTwoNotes = \relative c' {
  \transposition ees
    \global
    \FanfareRest
    <<
    {
      \relative b' \avVamp %7
        \relative b \avVamp %9
    }
  { s4 <> \ff s2. | s1 | s4 <> \mp }
  >>
    \repeat unfold 2 {
      \removeWithTag #'(upper tag) \avHeadA
      %R1*6 | %15
        \relative a' \removeWithTag #'(main lower) \avHeadA
    } %24
  \relative d' \keepWithTag #'upper \tvHeadB %28
  \relative b' \removeWithTag #'tail \tvHeadAalt %40
  g,4 \mf a b d | %38
  f4-^ r f4.-> ees8-.  | %39
  f4-.\<  g-.  aes-.  bes-. \!  | %40
  \relative c' \keepWithTag #'lower \tvHeadAout
  \relative d' \svTransOne
  \relative fis' \svTransTwo
  \relative f' \svTransThree
  r4 | %51
  R1*4 | %55
  r4 f8-. \f f-. r2 |%56
  r2.
  \relative f' \keepWithTag #'(first second) \svDevTwo
  r8 r4 r2 | %59
  R1*3
  r2.
  \relative f' \avDevThree
  r4 r2 | %69
  R1*11
  <> \mf \relative fis \keepWithTag #'(head upper) \avBHeadAalt
  \relative b \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative g' \keepWithTag #'(head upper) \avCHeadB %100
  \relative f' \keepWithTag #'(tail upper) \avCHeadB %104
  \relative bes \keepWithTag #'(head upper) \avCHeadAlt %109
  \relative des' \keepWithTag #'lower \tvCHeadAlt %112
  R1*4 | %116
  fis1-> \fp ~ | %117
  fis4 g-> \< gis-> a-> | %118
  b8-. \ff b-. b2.-> ~ | %119
  b4-. r bes2-> | %120
  \svLastVamp %122
  \relative c' \restTwoThree r2 | %125
  R1 | %126
}

tenorSaxNotes = \relative bes{
  \transposition bes,
  \global
    \FanfareRest
    <<
    {
      \relative g' \tvVamp %7
        \relative g \tvVamp %9
    }
  { s4 <> \ff s2. | s1 | s4 <> \mp }
  >>
    \repeat unfold 2 {
      R1*6 | %15
        <> \mp \relative a \removeWithTag #'(main upper) \avHeadA
    } %24
  \relative d \keepWithTag #'lower \tvHeadB %29
  \relative b \removeWithTag #'(one two) \tvHeadAalt
  R1*3 | r4
  \relative g \tvTransOne
  \relative b \tvTransTwo
  \relative bes \tvTransThree
  r4 | %51
  R1*4 | %55
  r4 f8-. \f f-. r2 |%56
  f'4-> r4 r4 
  \relative f' \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*4 | %62
  r2 r4
  \relative c' \tvDevThree
  r4 r2 |
  R1*11
  <> \mf \relative fis \keepWithTag #'(head lower) \avBHeadAalt
  \relative g \removeWithTag #'(upper head) \avBHeadAalt
  R1*5 | %93
  r2 r4 %94
  \relative a \keepWithTag #'(fourth fifth) \svTransC %96
  \relative ees' \keepWithTag #'(head lower) \avCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  R1*4 | %108
  \relative bes \keepWithTag #'thir \svCHeadAlt %112
  R1*2 | %114
  c,1-> \fp | %115
  b'1-> \fp ~ | %116
  b2 b2-> \fp ~ | %117
  b1 \< | %118
  e8-. \ff e-. e2.-> ~ | %119
  e4-. r f2-> | %120
  \avLastVamp %122
  \relative c' \restTwoThree r2 | %125
  r2 ees,,4-> r | %126
}

bariSaxNotes = {
  \transposition ees,
  \global
    \FanfareRest
    <<
    { \relative g { \bvVamp \bvVamp } }
  { <> \ff s1 | s1 | <> \mp s1 | s1 }
  >> %9
    \repeat unfold 2 { \relative g \bvHeadA } %25
    \relative g' \bvHeadB %33
    \relative g \bvHeadAalt %41
    \relative a \bvHeadOut %44
    \relative g \bvFirstTrans %52
    R1*4
    f4-> r r2 |
    r2.
    \keepWithTag #'first \svDevTwo
    r8 r4 | %58
    R1*4 | %62
    r2. 
    \relative aes \bvDevThree
    r4 r2 |
    R1*11
    <> \f \relative d \bvBHeadAalt
    R1*2 %90
    \relative a, \keepWithTag #'first \svTransC
  \once \override MultiMeasureRest.minimum-length = #15
    R1*3 | %95
    \relative a, \keepWithTag #'fifth \svTransC %96
  \relative ees \bvCHeadB %104
  \relative ees \bvCHeadAlt %112
  R1*2 | %114
  fis,1-> \fp | %115
  c1-> \fp | %116
  f1-> \fp ~ | %117
  f1 \< | %118
  fis8-. \ff fis-. fis2. ~ | %119
  fis4-. r bes,2-> | %120
  \relative ees \bvLastVamp %122
  \relative c \restTwoThree r2 | %125
  r2 ees,4-> r | %126
}
