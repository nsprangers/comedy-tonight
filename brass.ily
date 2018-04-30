\version "2.18.2"

\include "comedy_music.ily"

trumpetHeadAalt = {
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
  \relative d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r4 r2 | %44
  R1 | %45
  \relative dis'' \avTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 d-> \f \glissando f,-. r | %57
  <> -\markup "Harmon stem in"
  R1*3 | %60
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  <> -\markup \italic "senza sord."
  R1*4 | %67
  r2 r4
  << { s4 \ff } { \relative f'' \svShoutA } >>
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  r4 | %74
  R1 | %75
  r2
  \relative e'' \keepWithTag #'third \svShoutC %76
  <>\ff \relative a'' \svTransB %79
  R1 | %80
  %\relative a' \svBHeadAalt
  \time 6/8
  a'8-. \f r d16-. d-. d4-> a16-.[ a-.] | %81
  d8-.[ b16-. b-. d8->] e16-.[ e-. a,8-. e'->] | %82
  R2.*2 |
  %r4 d16[ d] d4 a16 a | %83
  %b8[ d16 d b8] e8[ cis16 cis e8]  | %84
  r4 d16-. d-. d4-> %85
  <> \f \relative a' \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes' \keepWithTag #'head \tvCHeadB %100
  <> -\markup "Harmon no stem"
  R1*4 | %104
  R1 | %105
  r2 g2-> \f | %106
  <> -\markup \italic "senza sord." 
  R1*5 | %111
  r2 a->| %112
  bes8-. \ff bes-. bes2-> aes4 | %113
  bes2 c | %114
  R1*2 | %116
  r2 c,2-> \fp ~ | %117
  c1 \< | %118
  c8-. \ff c-. c2.-> ~ | %119
  c4-. r bes2-> | %120
  ees1-> ~ | %121
  ees2. r4 | %122
  \sOne %123
  \sTwo %124
  R1 | %125
  bes'2-> r | %126
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
  \relative d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r4 r2 | %44
  R1 | %45
  \relative b' \tvTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 bes,-> \f \glissando f-. r | %57
  <> -\markup "Harmon stem in"
  R1*3 | %60
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  <> -\markup \italic "senza sord."
  R1*4 | %67
  r2 r4
  << { s4 \ff } { \relative f'' \svShoutA } >>
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  r4 | %74
  R1 | %75
  r2
  \relative e'' \keepWithTag #'third \svShoutC %76
  <> \ff \relative a'' \svTransB %79
  R1 | %80
  \time 6/8
  %a'8-.[ r d16 d] d4[ a16 a] | %81
  %d8 a16 a d8 e16 e a,8 e' | %82
  %r4 d16 d d4 a16 a | %83
  %e'8 cis16 cis e8 | %84
  %r4 a,16 a a4 %85
  R2.*2|
  a'8-. r d16-.[ d-.] d4-> a16-. a-. | %83
  b8-.[ d16-. d-. b8->] e8-.[ cis16-. cis-. e8->]  | %84
  a,8-. r a16-. a-. a4-> %85
  <> \f \relative a' \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes' \keepWithTag #'head \tvCHeadB %100
  \relative f' \keepWithTag #'(tail upper) \avCHeadB %104
  R1*7 | %111
  r2 ges2-> | %112
  ees'2. \ff ees4 | %113
  f1 | %114
  R1*2 | %116
  fis,1-> ~ \fp | %117
  fis4 g-> \< gis-> a-> | %118
  b8-.[ \ff b-.] b2. ~ | %119
  b4-. r bes2-> | %120
  \svLastVamp %122
  R1 | %123
  \sTwo %124
  r2 bes2 | %125
  ees-> r | %126
}

trumpetThreeNotes = \relative c' {
  \transposition bes
  \global
  <> \f \svFanfare
  \relative c'' \tvVamp
  R1*2 | %9
  \relative d' {
    \repeat unfold 2 {
      R1*7 | %15/23
        r2 d4-^\f r4 | %16/24
    }
  }
  \relative d' \keepWithTag #'head \svHeadB
  c4--\( _\markup \italic "espress." c2 b4 | c2 d2-- | %6
  c4--\< e2-- fis4-- | g-.\!\) r e2-> | %8
  \relative g \trumpetHeadAalt
  \relative d' \keepWithTag "trumpets" \svHeadAalt
  \svHeadAout
  r4 r2 | %44
  R1 | %45
  \relative fis' \svTransTwo
  r4 r2 | %48
  R1*8 | %56
  r4 g-> \f \glissando f-. r | %57
  <> -\markup "Harmon stem in"
  R1*3 | %60
  r2 r4. \mf %61
  \relative c'' \avDevTwo %63
  <> -\markup \italic "senza sord."
  R1*4 | %67
  r2 r4
  << { s4 \ff } { \relative f' \svShoutA } >>
  \relative f' \svShoutB
  \relative f' \svShoutA
  r4 | %74
  R1 | %75
  r2
  \relative e' \keepWithTag #'third \svShoutC %76
  <> \ff \relative a' \svTransB %79
  g'2-> e->| %80
  \time 6/8
  a8-. \f r a16-. a-. a4-> fis8-. | %81
  g8-. d-. g16-. g-. a8-. e-. a16-. a-. | %82
  a8-. r a16-. a-. a4-> fis8-. | %83
  d8-. g-. d16-. d-. a'8-. e-. a16-. a16-. | %84
  a8-. r fis16-. fis-. fis4-> %85
  <> \f \relative a \keepWithTag #'tail \svBHeadAalt
  \relative a' \keepWithTag #'first \svTransC
  R1*3 | %93
  r2 r4 %94
  \relative a' \keepWithTag #'(fourth fifth) \svTransC
  \relative bes \keepWithTag #'head \tvCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  R1*7 | %111
  fes2 ges-> | %112
  aes2. \ff aes4 | %113
  aes1 | %114
  R1*2 | %116
  fis1-> \fp ~ | %117
  fis1 \< | %118
  e8-.[ \ff e-.] e2. ~ | %119
  e4-. r f2-> | %120
  \avLastVamp %122
  R1 | %123
  \sTwo | %124
  r2 bes,2 | %125
  bes'-> r | %126
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hornOneNotes = \relative c'{
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative d' \svVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        a8-. \mp a-. a4-> r4 g-> |
        a-. r c-^ \f r |
    }
  \relative d' \keepWithTag #'upper \tvHeadB %29
  \relative b' \removeWithTag #'(two threeFour) \tvHeadAalt
  \relative g' \keepWithTag #'upper \tvHeadAout
  \tvTransOne %45
  \svTransTwo 
  r4 r2 | %48
  R1*8 | %56
  f4-> \f r4 r2 | %57
  R1*21 | %78
  a8-. \ff a-. a2-> a4 | %79
  cis1-> | %80
  <> \f \relative a \keepWithTag #'head \svBHeadAalt
  \relative a \keepWithTag #'(tail upper) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative bes' \keepWithTag #'head \svCHeadB %100
  \relative f' \keepWithTag #'(tail upper) \avCHeadB %104
  \relative g' \keepWithTag #'(head lower) \avCHeadAlt %109
  \relative fes' \keepWithTag #'upper \tvCHeadAlt %112
  aes2. \ff aes4 | %113
  aes1 | %114
  R1*2 | %116
  fis1-> ~ \fp | %117
  fis4 g-> \< gis-> a-> | %118
  b8-.[ \ff b-.] b2. ~ | %119
  b4-. r bes2-> | %120
  \svLastVamp %122
  R1 | %123
  \sTwo %124
  r2 bes, \glissando | %125
  bes'-> r | %126
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
  f4-> \f r4 r2 | %57
  R1*21 | %78
  e8-. e-. e2-> e4 | %79
  g2-> e-> | %80
  <> \f \relative a \keepWithTag #'head \svBHeadAalt
  \relative fis \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \relative a' \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative g' \keepWithTag #'(head upper) \avCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  \relative bes \keepWithTag #'(head upper) \avCHeadAlt %109
  \relative des' \keepWithTag #'lower \tvCHeadAlt %112
  ees2. \ff ees4 | %113
  ees1 | %114
  R1*2 | %116
  f,2-> \fp b-> ~ | %117
  b1 \< | %118
  e8-.[ \ff e-.] e2. ~ | %119
  e4-. r f2-> | %120
  \avLastVamp %122
  R1 | %123
  \sTwo %124
  r2 bes, \glissando | %125
  bes'-> r | %126
}

hornThreeNotes = \relative c' {
  \transposition f
    \global
    <> \f \avFanfare
    \repeat unfold 2 { \relative g \tvVamp } %9
    \repeat unfold 2 {
      R1*6 | %15
        <>\mp \removeWithTag #'(main upper) \relative c \avHeadA
    }
  \relative d \keepWithTag #'lower \tvHeadB %28
  \relative b' \removeWithTag #'(one two) \tvHeadAalt
  \relative c' \keepWithTag #'lower \tvHeadAout
  \relative b \avTransOne %45
  \relative b \tvTransTwo %48
  r4 r2 | %48
  R1*8 | %56
  f4-> \f r4 r2 | %57
  R1*21 | %78
  r2 r4 e,4 \ff | %79
  g2-> e-> | %80
  <> \f \relative a \keepWithTag #'head \svBHeadAalt
  \relative fis \keepWithTag #'(tail lower) \avBHeadAalt
  R1*4 | %92
  \relative a \keepWithTag #'(second third fourth fifth) \svTransC %96
  \relative ees' \keepWithTag #'(head lower) \avCHeadB %100
  \relative des' \keepWithTag #'(tail lower) \avCHeadB %104
  \relative g \keepWithTag #'(head lower) \avCHeadAlt %109
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
  c'2. \ff c4 | %113
  ees1 | %114
  R1*2 | %116
  f,1-> \fp ~ | %117
  f1 \< | %118
  fis8-. \ff fis-. fis2. ~ | %119
  fis4-. r f2-> | %120
  \relative ees' \tvLastVamp %122
  R1 | %123
  \relative c' \sTwo %124
  r2 bes | %125
  ees-> r | %126
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
  r2 c,4-. \f 
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*4 | %62
  a,4-. a-. r2 | %63
  R1*2 | %65
  r2 r4 des'4-. | %66
  r c-. r4. b8->( | %67
  c8)-. bes( b)-. a( bes)-. aes( a)-. fis( | %68
  g4)-. r2 r4 | %69
  R1*9 | %78
  a8-. \ff a-. a2-> e4 | %79
  g2-> e-> | %80
  <> \f \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
  \keepWithTag #'first \svTransC %90
  R1*2 | %92
  r2 r4 %93
  \keepWithTag #'(third fourth fifth) \svTransC %96
  \relative bes \keepWithTag #'head \svCHeadB %100
  R1*4 | %104
  R1*6 | %110
  \relative des' \keepWithTag #'lower \tvCHeadAlt %112
  ees'2. \ff ees4 | %113
  f1 | %114
  R1*2 | %116
  f,2-> \fp b-> \fp ~ | %117
  b1 \< | %118
  e8-.[ \ff e-.] e2. ~ | %119
  e4-. r f2-> | %120
  \tvLastVamp %122
  R1 | %123
  \relative c \sTwo | %124
  r2 bes, | %125
  ees-> r2 | %126
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
  r2 c,4-. \f %57
  \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  R1*4 | %62
  a,4-. a-. r2 | %63
  R1*2 | %65
  r2 r4 des'4-. | %66
  r c-. r4. b8->( | %67
  c8)-. bes( b)-. a( bes)-. aes( a)-. fis( | %68
  g4)-. r2 r4 | %69
  R1*9 | %78
  a8-. \ff a-. a2-> e4 | %79
  g2-> e-> | %80
  <> \f \relative a \removeWithTag #'tail \svBHeadAalt
  \relative a, \removeWithTag #'head \svBHeadAalt
  \keepWithTag #'first \svTransC %90
  R1*2 | %92
  r2 r4 %93
  \keepWithTag #'(third fourth fifth) \svTransC %96
  \relative bes \keepWithTag #'head \svCHeadB %100
  R1*4
  R1*6 | %110
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
  c2. \ff c4 | %113
  c1 | %114
  c,1-> \fp | %115
  b'1-> \fp ~ | %116
  b1 ~ | %117
  b1 \< | %118
  fis8-.[ \ff fis-.] fis2. ~ | %119
  fis4-. r f2-> %120
  \relative ees \bvLastVamp %122
  R1 | %123
  \sTwo %124
  r2 bes | %125
  ees-> ees4-. r | %126
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
  r2 c'4-. \f
  \keepWithTag #'(first second) \svDevTwo
  r8 r2 r4 | %59
  R1*3 | %62
  a,4-. a-. r2 | %63
  R1*4 | %67
  r4. a8( bes)-. aes( a)-. fis( | %68
  g4)-. r2 r4 | %69
  R1*10 | %79
  r2 \tuplet 3/2 { a4 a a } | %80
  <> \f \relative d \bvBHeadAalt
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
  f2. \ff f4 | %113
  f1 | %114
  fis,1-> \fp | %115
  c'-> \fp ~ | %116
  c ~ | %117
  c \< | %118
  fis8-. \ff fis-. fis2. ~ | %119
  fis4-. r bes2-> | %120
  \relative ees \bvLastVamp %122
  \relative c \oneTwoThree
  r2 | %125
  r2 ees,,4-> r | %126
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
  f,4-> \f r4 r2 | %56
  r2 r4
  \relative f, \keepWithTag #'(first second third) \svDevTwo
  r8 r4 | %59
  R1*21 | %80
  <>\mf \relative a \keepWithTag #'(head lower) \avBHeadAalt
  \relative a, \keepWithTag #'(tail) \svBHeadAalt
  R1*2 | %90
  \relative a, \keepWithTag #'first \svTransC %92
  R1 | %93
  r2 r4 %94
  \relative a, \keepWithTag #'(fourth fifth) \svTransC %96
  \relative bes \svCHeadB %100
  R1*6 | %110
  \relative fes \keepWithTag #'upper \tvCHeadAlt %112
  f2. \ff f4 | %113
  f1 | %114
  c1-> \fp | %115
  f1-> \fp | %116
  f2-> \fp b2-> \fp ~| %117
  b1 \< | %118
  e8-. \ff e-. e2. ~ | %119
  e4-. r f2-> | %120
  \tvLastVamp %122
  R1 | %123
  \sTwo %124
  r2 bes | %125
  ees-> ees4-. r | %126
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
  r2 c4-> \f r | %56
  r2 c'4-. %57
  \relative f, \keepWithTag #'first \svDevTwo
  r8 r4 | %58
  c,8
  \relative aes,, \keepWithTag #'(third fourth)
      \svDevTwo %63
  R1*16 | %79
  r2 \tuplet 3/2 { a'4 \ff a a } | %80
  <> \f \relative d \bvBHeadAalt
  R1*2 | %90
  \relative a,, \keepWithTag #'first \svTransC %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a,, \keepWithTag #'fifth \svTransC %96
  \relative ees, \bvCHeadB %104
  R1*3 | %107
  r2 fis,-> | %108
  R1*2 | %110
  ges'1-> ~ \mp | %111
  ges2 ces,2 | %112
  R1*2 | %114
  fis1-> \fp ~ | %115
  fis1 ~ | %116
  fis1 ~ | %117
  fis1 ~ \< | %118
  fis8-. \! r r4 r2 | %119
  R1 | %120
  <> \ff \bvLastVamp %122
  \oneTwoThree r2 | %125
  r ees4-> r | %126
}

doubleBassNotes = \relative c,,{
  \global
    \FanfareRest
    <<
    { 
      <>^\markup "arco"
        \relative g, { \bvVamp \bvVamp } 
    }
  {<> \ff s1 | s1 | <> \mp s1 | s1 }
  >>
    <>^\markup "pizz."
    \repeat unfold 2 { \relative g, \bvHeadA } %25
    <>^\markup "arco" \relative g \bvHeadB %33
    \relative g, \bvHeadAalt %41
    \relative a, \bvHeadOut %44
    \relative g, \bvFirstTrans %52
  R1*29 |
  <<
    { <> \f ^\markup "pizz" \relative d, \bvBHeadAalt }
    { s2.*6 <> ^\markup "arco" }
  >>
  R1*2 | %90
  \relative a,, \keepWithTag #'first \svTransC %92
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  \relative a,, \keepWithTag #'fifth \svTransC %96
  \relative ees, \bvCHeadB %104
  R1*6 | %110
  ges'1-> ~ \mp | %111
  ges1 | %112
  R1*2 | %114
  fis1-> ~ | %115
  fis1 ~ | %116
  fis1 ~ | %117
  fis1 ~ \< | %118
  fis8-. \! r r4 r2 | %119
  R1 | %120
  <> \ff \relative ees, \bvLastVamp %122
  \relative c, \oneTwoThree r2 | %125
  r ees4-> r | %126
}
