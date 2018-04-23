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
    r2 d4->\f r4 | %17
  }
  \svHeadB
  \svHeadAalt
  R1*3 | r4
  \relative d''' \svTransOne
  \relative fis''' \svTransTwo
  s2.
  s1*10
  s2 s8
  \relative ees''' \keepWithTag #'(third fourth) \svDevTwo
  s4
  s1*17
  \relative a''' \removeWithTag #'tail \svBHeadAalt
  \relative b''' \keepWithTag #'(tail upper) \avBHeadAalt
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
  r2 d=''4-> r4 | %16
  \relative d'' \fluteOrnamentedHeadA
  \relative b'' \removeWithTag #'lower \avHeadB
  \relative d'' \removeWithTag #'lower \avHeadAalt
  R1*3 |
  r4 \relative b'' \avTransOne
  \relative dis''' \avTransTwo
  \relative fis'' \svTransThree
  \relative d''' \avDevOne
  \relative g''' \svDevOneTag
  r2. c'4 |
  R1*2 |
  c8 aes bes c des r r4 |
  s1*21
  \relative a'' \removeWithTag #'tail \svBHeadAalt
  \relative g'' \keepWithTag #'(tail lower) \avBHeadAalt
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
  r2 d=''4-> r4 | %16
  \fluteOrnamentedHeadA
  \relative b'' \removeWithTag #'upper \avHeadB
  \relative d'' \removeWithTag #'upper \avHeadAalt
  R1*3 |
  \relative g'' \tvTransOne
  \relative b'' \tvTransTwo
  \relative d'' \avTransThree
  \relative d''' \avDevOne
  \relative ees''' \avDevOneTag
  r2. a'4 |
  R1*2 |
  c8 aes bes c des r r4 |
  s1*21
  \relative a'' \removeWithTag #'tail \svBHeadAalt
  \relative b' \keepWithTag #'(tail upper) \avBHeadAalt
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
  r2 fis4-> \f r4 | %16
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
  s1*22
  \relative a' \removeWithTag #'lower \avBHeadAalt
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
  R1*3 |
  \relative g \tvTransOne
  \tvTransTwo
  \tvTransThree
  s4
  s1*29
  \relative d \bvBHeadAalt
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
    r2. a4 |
    R1 |
    r2 bes8 g a bes |
    c8 r r4 r2 |
    s1*21 |
    \relative a' \removeWithTag #'tail \svBHeadAalt
    \relative b' \keepWithTag #'(tail upper) \avBHeadAalt
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
  r2. f'4 |
  R1 |
  r2 bes8 g a bes |
  c8 r r4 r2 |
  s1*21 |
  \relative a' \removeWithTag #'lower \avBHeadAalt
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
  R1*3 |
  \relative g' \tvTransOne
  \relative eis' \avTransTwo
  \relative bes' \tvTransThree
  \relative bes' \svDevOne
  \relative ees'' \avDevOneTag
  r2. f'4 |
  R1 |
  r2 bes8 g a bes |
  c8 r r4 r2 |
  s1*21 |
  \relative fis' \removeWithTag #'upper \avBHeadAalt
}
clarinetThreeMusic = { \clarinetThreeNotes }

bassClarinetNotes = {
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
  f'4 r r2 |
  r2 bes8 g a bes |
  c8 r8 r4 r2 |
  s1*21
  \relative d \bvBHeadAalt
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
  g,4 a b d | aes'4 r aes4. g8 | aes4 bes c des |
  \relative g' \keepWithTag #'upper \tvHeadAout
  \relative b' \avTransOne
  \relative dis'' \avTransTwo
  \relative d'' \avTransThree
  s4 |
  s1*11
  s2.
  \relative aes' \svDevThree
  r4 r2 |
  s1*11
  \relative a' \removeWithTag #'tail \svBHeadAalt
  \relative b \keepWithTag #'(tail upper) \avBHeadAalt
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
  g,4 a b d | f4 r f4. ees8 | f4 g aes bes |
  \relative c' \keepWithTag #'lower \tvHeadAout
  \relative d' \svTransOne
  \relative fis' \svTransTwo
  \relative f' \svTransThree
  s4
  R1*11 |
  r2 r4 
  \relative f' \avDevThree
  r4 r2 | %69
  R1*11
  \relative fis' \removeWithTag #'(tail lower) \avBHeadAalt
  \relative b \removeWithTag #'(head lower) \avBHeadAalt
}

tenorSaxNotes = {
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
        \relative a \removeWithTag #'(main upper) \avHeadA
    } %24
  \relative d \keepWithTag #'lower \tvHeadB %29
  \relative b \removeWithTag #'(one two) \tvHeadAalt
  R1*3 |
  \relative g \tvTransOne
  \relative b \tvTransTwo
  \relative bes \tvTransThree
  s4
  R1*11 |
  r2 r4
  \relative c' \tvDevThree
  r4 r2 |
  R1*11
  \relative fis' \removeWithTag #'(upper tail) \avBHeadAalt
  \relative g \removeWithTag #'(upper head) \avBHeadAalt
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
    %\relative g \bvFirstTrans %52
    R1*19
    r2. 
    \relative aes \bvDevThree
    r4 r2 |
    R1*11
    \relative d \bvBHeadAalt
}
