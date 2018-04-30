\version "2.18.2"

\include "comedy_music.ily"

#(define mydrums '(
      (crashcymbal  default #f  5)
      (snare        default #f  1)
      (sidestick    cross   #f  1)
      (bassdrum     default #f  -3)
      (hibongo      default #f  4)
      (lobongo      default #f  2)
      (highwoodblock default #f -2)
      (lowwoodblock default #f  -4)))


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

timpaniNotes = \relative c, {
  %{
    <<
    R1
    \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"main"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    } { \clef bass ees4 bes' d g }
  >>
    %}
  <<
  { \parenthesize <ees g d' ees g>4 ^\markup "Tuning" }
  { R1 }
  >>
  R1| %2
  r2 r4 g'-> | %3
  d2-> \laissezVibrer r2 \fermata | %4
  <<
    \repeat unfold 2 { \relative g \bvVamp }
  { s1*2 | <> \mp }
  >>
  \repeat unfold 2 {
    R1*7 | %15/23
    r2 d4-^ \f r | %16/24
  }
  g4 \mf r r d | %25
  g r r2 | %26
  R1*5 | %31
  g4-. r 
    \once \override Glissando.minimum-length = #7
    \once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods 
  g,-> \ff \glissando \parenthesize bes4 | %32
  \repeat unfold 2 {
  g' r d r | %33/35
  r g-^ r d | %34/36
  }
  g r d r | %37
  g2 d2 | %38
  ees2 r | %39
  r2 ees-> | %40
  d4-. r r2 | %41
  R1*2 | %43
  g4 \mf r d r | %44
  g r d r | %45
  R1*2 | %47
  bes4-. \f r r2 | %48
  R1*3  | %51
  \once \override MultiMeasureRest.minimum-length = #30
  R1*8 | %59
  R1*9 | %68
  R1*8 | %76
  R1*4 | %80
  \time 6/8
  \repeat unfold 2 {
  r4 d8~ d4 r8 | %81/83
  d4. r | %82/84
  }
  r4 d8~ d4 r8 | %85
  \time 2/2
  d4 r r d | %86
  bes1:32 \fp ~ | %87
  bes2.:32 \< ~ bes4->\! |%88
  R1*4 | %96
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3
  \once \override MultiMeasureRest.minimum-length = #15
  R1
  ees4 \f r bes r | %97
  ees r bes r | %98
  g' r d r | %99
  g r d r | %100
  R1*3 | %103
  r2 bes4 r | %104
  <>\pp
  \repeat unfold 4 { ees4 r bes r | } %108
  ees4 \< r bes r | %109
  ees r bes \! r | %110
  R1*2 | %112
  bes8-. \f bes-. bes2-> r4 | %113
  bes2 r | %114
  R1*5 | %119
  bes4-. r bes2-> | %120
  ees4 r r bes | %121
  ees r bes r | %122
  ees-. r r2 | %123
  bes4-. \mp r r2 | %124
  ees4-. r bes2 \f | %125
  ees2-> ees,4-. r | %126
}

bellsNotes = \relative d'' {
  \global
  \FanfareRest
  r4 d8 \ff d d4 d | %5
  r4 e r fis | %6
  r4 d,8 \mp d d4 d | %7
  r4 e r fis | %8
  R1*8 | %16
  d4 \mf g2-> r4 | %17
  R1 | %18
  d4 g2-> r4 | %19
  R1 | %20
  d4 g2-> r4 | %21
  c4. b8 a4 g | %22
  R1 | %23
  r2 d'2 | %24
  R1*3 | %27
  b1 \laissezVibrer | %28
  R1*4 | %32
  R1 | %33
  g4 a r2 | %34
  R1 | %35
  c,4 a r2 | %36
  R1*2 | %38
  <f' aes>4 r aes4. g8 | %39
  aes4 bes c des | %40
  d8 d d2 r4 | %41
  R1*5 | %46
  r4 aes2 r4 | %47
  R1*12 | %59
  g2 ^\markup "Crotales" \mp aes | %60
  bes1 | %61
  a4 a2. | %62
  R1*18 | %80
  \time 6/8
  r4 d8 ~ d4. | %81
  r4. e | %82
  r4 d8 ~ d4. | %83
  r4. e, | %84
  r4 d'8 ~ d4. | %85
  \time 2/2
  \once \override MultiMeasureRest.minimum-length = #20
  R1*3
  R1*4
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  R1 | %96
  \relative bes'' \keepWithTag "head" \svCHeadB
  R1*4 | %104
  R1*6 | %110
  e2 ^\markup "chimes" fis | gis a | %112
  R1*5 | %117
  f,4 ^\markup "bells" fis g aes | %118
  bes8 bes bes2. | %119
  r2 bes2 | %120
  ees1 \laissezVibrer | %121
  R1 | %122
  \oneTwoThree r2 | %125
  R1 | %126
}

xylophoneNotes = \relative d'' {
  \global
  \FanfareRest
  R1*4 | %8
  R1*8 | %16
  R1 | %17
  r4 d8-.\mf e-. fis-. a-. b-. c-. | %18
  d4-> r4 r2 | %19
  r8 b c a b a g fis | %20
  \override Glissando.style = #'zigzag
  d2 r4 d4 \glissando | %21
  c'4. b8 a4 g | %22
  a8-. a-. a4-> r4 g-> | %23
  a-. r d->\f r | %24
  R1*8 | %32
  R1 | %33
  r2 g,8-- a b c | %34
  d4-^ r4 r2 | %35
  r2 g,8 a \tuplet 3/2 { b[ c cis] } | %36
  d4-^ r r2 | %37
  R1 | %38
  <f, aes>4 r <f aes>4. <ees g>8 | %39
  <f aes>4 <g bes> r2 | %40
  R1*7
  \once \override MultiMeasureRest.minimum-length = #20
  R1*4 | %51
  r4 ^\markup "Marimba" \f <bes d> r <d f> | %52
  f f8 f,8 r8 f'4 ees8 | %53
  e4 e r8 e,4 e8 | %54
  <ees'! g>4 <c e>2.:16 | %55
  R1*12 | %67
  r2 r4 
  \relative f'' \svShoutA
  \relative f'' \svShoutB
  \relative f'' \svShoutA
  \relative a' \svShoutC
  R1*4 | %80
  \once \override MultiMeasureRest.minimum-length = #20
  R2.*5 | %85
  R1 | %86
  <>^\markup "Xylophone" \f
  \relative c'' {
    <<
    { 
      r4 ees-. ees4.-> d8 |
        ees4-. f~-> f8 g8 aes4-. |
    }
    {
      r4 c,-. c4.-> bes8 |
        c4-. d~-> d8 ees8 f4-. |
    }
    >>
  }
  R1*4
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3 | %95
  <a a'>4-^ <a a'>-^ <a a'>-^ <a a'>-^ \sfz | %96
  \once \override MultiMeasureRest.minimum-length = #30
  R1*24 | %120
  <<
    \avLastVamp
    \svLastVamp
  >>
  \oneTwoThree r2 | %125
  R1 %126
}

%{
  Percussion One (1 or more people):
   sm tam-tam
   cowbell
   sus. cymbal
   siren whistle
   ratchet
   slide whistle
   toms
%}

percussionOneNotes = \drummode {
  \textLengthOn
  <> -\tweak self-alignment-X #CENTER _\markup { 
    \teeny
    \box
      \line {
        \column {
          "cowbell"
          "siren whistle"
          "ratchet"
          "vibraslap"
        }
        \hspace #1
        \column {
          "slide whistle"
          "whip"
          "sus. cymbal"
          "crash cymbals"
        }
        \hspace #1
        \column {
          "small tam-tam"
          "tam-tam"
          "toms"
          "temple block"
        }
      }
  }
  \textLengthOff
  R1*3 | %4
  r2 tt2 ^\tweak self-alignment-X #RIGHT ^\markup \smaller {"sm. tamtam"}  \fermata \f | %4
  \once \override MultiMeasureRest.minimum-length = #20
  R1*4 | %18
  \once \override MultiMeasureRest.minimum-length = #20
  R1*6 | %14
  r2 cymc2 ^\tweak self-alignment-X #RIGHT ^\markup "cymbal" \laissezVibrer | %15
  r2 cb4 \ff ^\markup "cowbell" r4 | %16
  R1*6 | %22
  r2 cymc2 \laissezVibrer | %15
  r2 whs _\tweak self-alignment-X #CENTER _\markup "siren whistle" \bendAfter #+6  | %24
  R1 | %25
  tt1 \laissezVibrer ^\markup "lg. tam-tam" | %26
  R1 | %27
  r2 cymc2 \laissezVibrer | %28
  R1*2 | %30
  r4 cymc2.:32 ~ \< | %31
  cymc4-> \! ^\markup "choke" r cymc2 | %32
  \repeat unfold 2 {
    R1 | %33 35
    r4 ss4 ^\markup "whip" r2 | %34 36
  }
  R1*7 | %43
  vibs4 ^\markup "vibraslap" \laissezVibrer r4 r2 | %44
  R1*2 | %46
  r4 cymc2. ^\markup "cym." | %47
  R1 | %48
  tommh4 \mf ^\markup "temple block" tomh r2 | %49
  R1 | %50
  tomfl4 tomfh r2 | %51
  R1*12 | %63
  gui1:32 ~ \f ^\markup "ratchet" | %64
  gui8:32 ~ gui r4 r2 | %65
  R1*3 | %68
  toml4 \mp ^\markup \column { \bold "Swing" "tom-toms" } toml8 toml toml4 toml8 toml | %69
  toml4 toml8 toml toml4 toml8 toml | %70
  toml4 toml8 toml toml4 toml8 toml | %71
  toml8 tomh4 tomh8 tomh4 toml8 toml | %72
  toml4 toml8 toml toml4 toml8 toml | %73
  toml4 toml8 toml toml4 \< toml8 toml | %74
  toml4-> \! r4 r2 | %75
  R1 %76
  R1*4 %80
  \time 6/8
  r4 cymc8 ^\markup "crash" ~ cymc4 r8 | %81
  R2. | %82
  r4 cymc8 ~ cymc4 r8 | %83
  R2. | %84
  r4 cymc8 ~ cymc4 r8 | %85
  \time 2/2
  R1*3 | %88
  R1*4 
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3
  R1
  r4 cymc2 r4 | %97
  R1 | %98
  r4 cymc2 r4 | %99
  R1*3 | %102
  <>^\markup "slide whistle" tomfl4 \bendAfter #+6 s2. | %103
  s2 tomh4 r | %104
  \once \override MultiMeasureRest.minimum-length = #27
  R1*8 | %112
  R1*8 | %120
  cymc2 \laissezVibrer r2 | %121
  R1 | %122
  \oneTwoThree r2 | %125
  cymc2 ^\tweak  self-alignment-X #RIGHT ^\markup "with stick" cymc4 ^\markup "choke" r | %126
}

%{
  Percussion Two:
  Player One:
    snare drum
    bongos
    field drum
  Player Two:
    bass drum
%}
percussionTwoNotes = \drummode {
  <> -\tweak self-alignment-X #CENTER _\markup { \teeny
    \box
      \line {
        \column {
          "Player 1:"
          "sn. drum (stick & brushes)"
          "field drum"
          "bongos (mallets)"
        }
        \hspace #1
        \column {
          "Player 2:"
            "bass drum"
            "hihat"
        }
      }
  } 
  %\FanfareRest %4
  R1*3
  r2 r2 \fermata |
  <<
    { r4 sn8 ^\tweak self-alignment-X #LEFT ^\markup "sn drum" sn sn4 sn | 
      r4 sn r sn |
      r4 sn8 ^\mp sn sn4 sn | 
      r4 sn r sn |
    }
    \\
    { bd4 -\tweak self-alignment-X #LEFT _\markup "bass drum" \ff r r bd | %5
      bd r bd r | %6
      bd r r2 | %7
      R1 | %8
    }
  >>
  r4 ^\markup "sn. with brushes" sn r sn | %9
  \repeat unfold 5 { r4 sn r sn | } %14
  sn8 sn sn4 r sn | %15
  <<
    { sn r ss ^\tweak self-alignment-X #RIGHT ^\markup "rimshot" r | } %16
    \\ 
    { r2 bd4 \f r | }
  >> %16
  <<
    {
      r4 _\mp ^\tweak self-alignment-X #LEFT ^\markup "brushes" sn r sn | %17
      \repeat unfold 5 { r4 sn r sn } | %22
      sn8 sn sn4 r sn | %23
      sn r ss ^\tweak self-alignment-X #CENTER ^\markup "rimshot" \f r | %24
    }
    \\
    {
      \repeat unfold 6 { bd4 r bd r } | %22
      bd r r2 | %23
      r2 bd4 r | %24
    }
  >> %24
  <<
    { 
      r4 sn8 ^\markup "sticks" sn sn4 r | %25
      R1 | %26
      r4 sn8:32 sn sn4 r | %27
      R1 | %28
      r4 sn r sn | %29
      r sn r sn | %30
      r sn4:32 ~ ^\< sn \! sn-> | %31
      r2 sn2:32 ^\sfz | %32
    }
    \\
    {
      bd4 \mp r r bd | %25
      bd r4 r2 | %26
      bd4 r r bd | %27
      bd r4 r2 | %28
      bd4 r bd r | %29
      bd r bd r | %30
      bd r4 r2 | %31
      bd4 r4 r2 | %32
    }
  >>
  <<
    {
      r4  \! sn r sn4:32^\< ~ | %33
      sn4:32 ~ sn->\!  r sn-> | %34
      r4 \! sn r sn4:32^\<  ~ | %35
      sn4:32 ~ sn->\!  r sn-> | %36
      r sn r sn:32 | %37
      r sn r sn | %38
      sn  r sn4. sn8 | %39
      sn4 sn sn sn | %40
      sn-> r r2 | %41
    }
  \\
    {
      bd4 r bd r | %33
      r bd->\sfz  r bd | %34
      bd r bd r | %35
      r bd->\sfz  r bd | %36
      bd r bd r | %37
      bd r bd r | %38
      bd r4 r2 | %39
      R1 | %40
      bd4-> r4 r2 | %41
    }
  >>
  R1 | %42
  r2 r4 sn | %43
  <<
    {
      r4 sn8 sn sn4 sn | %44
      r sn r sn | %45
      r sn8 sn sn4 sn | %46
      r sn2:32 ~ sn4 | %47
      sn r r2 | %48
    }
  \\
    {
      \repeat unfold 3 { bd4 r bd r| } %46
      bd4 bd2-> bd4 | %47
      bd4 r r2 | %48
    }
  >>
  R1*2 | %50
  <<
    {
      r2 r4 sn8 ^\mf ^\tweak self-alignment-X #RIGHT ^\markup "on rims" sn | %51
      sn:32[ sn sn sn:32~] sn[ sn sn:32 sn] | %52
      sn[ sn sn sn->]  r sn sn:32 sn | %53
      \tuplet 3/2 { sn8[ sn sn] } sn8 sn8 r8 sn4 sn16 sn | %54
      sn4 ~ ^\markup "drag" sn4-. r8 sn ss4-> ^\markup "ping" | %55
      r4 sn8 ^\markup "on drum" sn r4 sn | %56
      r4 sn:32 ~ sn r | %57
    }
  \\
    {
      R1*2 | %52
      r4. bd8 \mp r2 | %53
      r2 bd4 r4 | %54
      R1 | %55
      r2 bd4 r4 | %56
      r2 bd4 \f r4 | %57
    }
  >>
  R1*8 | %65
  r4 r8 tommh8 ^\tweak self-alignment-X #LEFT ^\markup "bongos w/ mallets"
    \tuplet 6/4 { tomh8[ tommh tomh 
     tommh8:32 tomh: tommh:] } | %66
  tomh4 r4 r2 | %67
  R1 | %68
  <>_\markup "hihat pedal"
  \repeat unfold 6 { r4 hhp r hhp } | %74
  R1*6 | %80
  \time 6/8
  <<
    { 
      sn8.[ ^\markup "field drum" sn16 sn8:32~] sn8 sn sn | %81
      sn8 sn16:32 sn sn8
      sn8 sn16:32 sn sn8 | %82
      sn8.[ sn16 sn8:32~] sn8 sn sn | %83
      sn8 sn16:32 sn sn8
      sn8 sn16:32 sn sn8 | %84
      sn8. sn16 sn8:32 ~ sn8 sn sn | %85
    }
  \\
    {
      \repeat unfold 10 { bd4 r8 } | %85
    }
  >>
      \time 2/2
  <<
    {
      r4 sn r sn | %86
      r4 sn sn4.:32-> ~ sn8 | %87
      sn4 sn4.:32-> ~ sn8 sn4-> | %88
    }
  \\
    {
      bd4 r bd r | %86
      bd4 r4 r2 | %87
      r2 r4 bd-> | %88
    }
  >>
  <<
    {
      \acciaccatura { sn16 sn } sn4-> r4 r2 | %89
      R1 | %90
      \acciaccatura { sn16 sn } sn4-> r4 r2 | %91
      R1 | %92
      \acciaccatura { sn16 sn } sn4-> r4 r ss ^\markup "rimshot" | %93
      sn8 sn sn4 r sn:32 ~ | %94
      sn4-> r4 r2 | %95
      r4 sn ^\tweak self-alignment-X #RIGHT ^\markup "sn. drum" sn sn:32 ~ | %96
    }
  \\
    {
      bd4 r r2 | %89
      R1 | %90
      bd4 r r2 | %91
      R1 | %92
      r2 r4 bd | %93
      bd r4 r2 | %94
      bd4 r4 r2 | %95
      r2 r4 bd-> \sfz | %96
    }
  >>

  <<
    {
      sn4 sn2:32 ~ sn4 | %97
      r sn8 sn r4 r | %98
      sn4 sn2:32 ~ sn4 | %99
      r sn8 sn r4 r | %100
      r sn r sn | %101
      r sn r sn | %102
      r sn r sn:32~ | %103
      sn sn r sn | %104
    }
  \\
    {
      r4 bd2-> r4 | %97
      bd r r2 | %98
      r4 bd2-> r4 | %99
      bd r r2 | %100
      bd4 r bd r | %101
      bd r bd r | %102
      bd bd2 r4 | %103
      bd r bd r | %104
    }
  >>

  <<
    {
      r4 sn r sn | %105
      \repeat unfold 5 { r sn r sn | }
      sn1:32 ~ | %111
      sn1:32 ~ | %112
      sn4-> r r2 | %113
    }
  \\
    {
      bd4 \mp r bd r | %105
      \repeat unfold 5 { bd r bd r | }
      bd r r2 | %111
      R1*2 | %113
    }
  >>
  
  <<
    {
      R1*6 | %119
      sn4-> r r2 | %120
      r4 sn8 sn sn4 sn | %121
      r sn r sn | %122
      sn1:32 ^\fp ~ | %123
      sn2:32 ~ sn2:32 ^\< ~ | %124
      sn4-> ^\f r r2 | %125
      R1 | %126
    }
  \\
    {
      R1*6 | %119
      bd4-> \f r r2 | %120
      bd4 r r bd | %121
      bd r bd r | %122
      R1*3 | %125
      r2 bd4-> r4 | %126
    }
  >>
}
