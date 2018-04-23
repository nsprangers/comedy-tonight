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

bellsNotes = \relative d'' {
  \global
  \FanfareRest
  r4 d8 \ff d d4 d | %5
  r4 e r fis | %6
  r4 d8 \mp d d4 d | %7
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
  R1*8 | %32
  R1 | %33
  g,4 a r2 | %34
  R1 | %35
  c,4 a r2 | %36
  R1*2 | %38
  <f' aes>4 r aes4. g8 | %39
  aes4 bes c des | %40
  d8 d d2 r4 | %41
  R1*5 | %46
  r4 aes2 r4 | %47
  R1*12 | %59
  g2 ^\markup "crotales" \mp aes | %60
  bes1 | %61
  a4 a2. | %62
}

xylophoneNotes = \relative d'' {
  \global
  \FanfareRest
  R1*4 | %8
  R1*8 | %16
  \fluteOrnamentedHeadA
  R1*8 | %32
  R1 | %33
  r2 g,8--( a b c |
  d4)-^ r2. |
  \autoBeamOff
  r2 g,8 gis( \tuplet 3/2 { a[ b c] } |
  d4)-^ r2.
  \autoBeamOn
  R1 | %38
  <f, aes>4 r <f aes>4. <ees g>8 | %39
  <f aes>4 <g bes> r2 | %40
  R1*11 | %51
  <bes, d>4 r <d f> r | %52
  f f8 f,8 r8 f'4 ees8 | %53
  e4 e r8 e,4 e8 | %54
  <ees'! g>4 <c e>2.:16 | %55
}

%{
  Percussion One (1 or more people):
   sm tam-tam
   cowbell
   triangle
   sus. cymbal
   siren whistle
   ratchet
   slide whistle
   flexotone
%}

percussionOneNotes = \drummode {
  R1*3 | %4
  r2 tt2 ^\tweak self-alignment-X #RIGHT ^\markup \smaller {"sm. tamtam"}  \fermata \f | %4
  R1*11 | %15
  r2 cb4 ^\markup "cowbell" r4 | %16
  R1*7 | %23
  r2 whs ^\tweak self-alignment-X #CENTER ^\markup "siren whistle" \bendAfter #+6  | %24
  R1 | %25
  tt1 ^\markup "lg. tam-tam" | %26
  R1 | %27
  cymc2 \laissezVibrer ^\markup "cym w/ stick"
    tri2 ^\tweak self-alignment-X #LEFT ^\markup "triangle" \laissezVibrer | %28
  R1*2 | %30
  r4 cymc2.:32 ~ \< | %31
  cymc4-> \! ^\markup "choke" r cymc2 | %32
  R1*11 | %43
  vibs4 ^\markup "vibraslap" \laissezVibrer r4 r2 | %44
  R1*2 | %46
  r4 cymc2. ^\markup "cym." | %47
  R1 | %48
  wbl4 ^\markup "temple block" wbh r2 | %49
  R1 | %50
  wbl4 wbh r2 | %51
  R1*12 | %63
  gui1:32 ~ ^\markup "ratchet" | %64
  gui8:32 gui r4 r2 | %65
  r4. bol8 ^\tweak self-alignment-X #CENTER ^\markup "bongos w/ mallets"
    \tuplet 3/2 { boh8:32[ bol: boh:] }
    \tuplet 3/2 { bol8:32 boh: bol: } | %66
  boh4 r2. | %67
}

snareDrumNotes = \drummode {
  \FanfareRest %4
  r4 sn8\ff ^\tweak self-alignment-X #RIGHT ^\markup "snare" sn sn4 sn | %5
  r4 sn r sn | %6
  r4 sn8\mp sn sn4 sn | %7
  r4 sn r sn | %8
  r4 ^\markup "sn. with brushes" sn r sn | %9
  \repeat unfold 5 { r4 sn r sn | } %14
  sn8 sn sn4 r sn | %15
  sn r ss ^\tweak self-alignment-X #RIGHT ^\markup "sn. rimshot" r | %16
}

bassDrumNotes = \drummode {
  \FanfareRest %4
  bd4 _\tweak self-alignment-X #RIGHT _\markup "bass drum" r r bd | %5
  bd r bd r | %6
  bd r r2 | %7
  R1 | %8
  R1*7 | %15
  r2 bd4\f r | %16
}

%{
  Percussion Two (2 people):
    snare drum
    field drum
    bass drum
%}
percussionTwoNotes = \drummode {
  \FanfareRest %4
  <<
    { r4 sn8 ^\tweak self-alignment-X #RIGHT ^\markup "snare" sn sn4 sn | 
      r4 sn r sn |
      r4 sn8\mp sn sn4 sn | 
      r4 sn r sn |
    }
    \\
    { bd4 -\tweak self-alignment-X #RIGHT _\markup "bass drum" \ff r r bd | %5
      bd r bd r | %6
      bd r r2 | %7
      R1 | %8
    }
  >>
  r4 ^\markup "sn. with brushes" sn r sn | %9
  \repeat unfold 5 { r4 sn r sn | } %14
  sn8 sn sn4 r sn | %15
  <<
    { sn r ss ^\tweak self-alignment-X #RIGHT ^\markup "rimshot" ^\f r | } %16
    \\ 
    { r2 bd4 \f r | }
  >> %16
  <<
    {
      r4 _\mp ^\markup "brushes" sn r sn | %17
      \repeat unfold 5 { r4 sn r sn } | %22
      sn8 sn sn4 r sn | %23
      sn r ss ^\tweak self-alignment-X #RIGHT ^\markup "rimshot" \f r | %24
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
      r2 ^\markup "field drum" sn2:32 ^\sfz | %32
    }
    \\
    {
      bd4 \mp r r bd | %25
      bd r2. | %26
      bd4 r r bd | %27
      bd r2. | %28
      bd4 r bd r | %29
      bd r bd r | %30
      bd r2. | %31
      bd4 r2. | %32
    }
  >>
  <<
    {
      r4  \! sn r sn4:32^\< ~ | %33
      sn4:32~ sn->\! r sn-> | %34
      r4 \! sn r sn4:32^\<  ~ | %35
      sn4:32~ sn->\! r sn | %36
      r sn r sn:32 | %37
      r sn r sn ^\markup "snare" | %38
      sn  r sn4. sn8 | %39
      sn4 sn sn sn | %40
      sn-> r r2 | %41
      R1*2 | %43
    }
  \\
    {
      bd4 r bd r | %33
      bd r r bd->\sfz | %34
      bd r bd r | %35
      bd r r bd->\sfz | %36
      bd r bd r | %37
      bd r bd r | %38
      bd r2. | %39
      R1 | %40
      bd4-> r4 r2 | %41
      R1*2 | %43
    }
  >>
  R1*50
}
