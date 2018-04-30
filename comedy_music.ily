\version "2.18.2"

%% Music information (variables) used by instrument music definitions.

#(define-markup-command (label layout props text) (markup?)
   "Format outline/sketch labels."
   (interpret-markup layout props
     #{\markup \override #'(box-padding . 0.6) \box
       \sans \larger \smallCaps { #text } #}
     )
   )

#(define-markup-command (varName layout props text) (markup?)
   "Format variable labels."
   (interpret-markup layout props
     #{\markup \typewriter \smaller { #text } #}
     )
   )

varLabel =
#(define-music-function
  (parser location labelText)
  (markup?)
  #{
    \tag #'labels { <> ^\markup \varName #labelText }
  #}
  )

sketchLabel =
#(define-music-function
  (parser location labelText)
  (markup?)
  #{
    \tag #'labels { <> ^\markup \label #labelText }
  #}
  )

global = {
  \time 2/2
  \set Staff.soloText = #""
  \set Staff.soloIIText = #""
  \set Staff.aDueText = #""
}

%% Rehearsal, tempos, barlines
globalMarks = {
  \set Score.markFormatter = #format-mark-box-barnumbers
  \tempo "Maestoso" 2=92
  s1*4
  \mark \default
  \bar "||" 	%5
  \tempo "Brightly" 2 = 108
  s1*4 \mark \default		%10
  s1*8	%17
  \mark \default %18
  s1*8 %25
  \mark \default %26
  %\sketchLabel "Bridge"
  s1*8 %32
  \mark \default %33
  s1*15 %47
  \bar "||" \mark \default %48
  \tempo "Slowing"
  s1*4 %59
  \mark \default %52
  <> \tempo "Relaxed" 2 = 96
  %s1*4
  \skip 1*8
  %\mark \default %56
  %s1*4
  \mark \default %60
  %s1*4 %63
  %\mark \default %64
  %s1*5
  s1*9
  \mark \default %69
  s1*8 | %76
  \mark \default %77
  s1*3
  \tempo "Rit." 
  s1
  \mark \default %81
  \time 6/8
  \tempo "Stately" 4. = 72
  %s1*5 |
  \repeat unfold 5 { s2. | }
  \time 2/2
  \mark \markup {
    \concat {
      (
       \fontsize #-5 \general-align #Y #DOWN \note #"8" #1
       " = "
       \fontsize #-5 \general-align #Y #DOWN \note #"4" #1
      )
    }
  }
  \tempo "Tempo Primo" 2 = 108
  s1*3 |
  \mark \default %89
  s1*4 |
  \tempo "Poco Rit."
  s1*3
  \tempo "Molto Rit."
  s1 |
  \mark \default %97
  <>\tempo "Kickline!" 2 = 78
  s1*2
  \tempo "Accel."
  s1*6
  \mark \default %105
  \tempo "Faster" 2 = 120
  s1*8
  \mark \default %113
  s1*8
  \mark \default %121
}

keyChanges = {
  \set Staff.printKeyCancellation = ##f
  \key g \major
  s1*47
  %\tag #'keybreaks { \break }
  \bar "||" \key bes \major
  s1*12
  %\tag #'keybreaks { \break }
  \bar "||" \key ees \major
  s1*17
  %\tag #'keybreaks { \break }
  %\bar "||" \key ees \major
  %s1*8
  %\tag #'keybreaks { \break }
  \bar "||" \key d \major
  s1*4
  \time 6/8
  \repeat unfold 5 { s2. | }
  \time 2/2
  s1*11
  %\tag #'keybreaks { \break }
  \bar "||" \key ees \major
  s1*30
  \bar "|."
}

espress = \markup \italic "espress."

FanfareRest = { R1*3 | r2 r2\fermata | }

fluteOrnamentedHeadA = {
  R1 |
  r4 d8-.\mf e-. fis-. a-. b-. c-. |
  d1~\startTrillSpan |
  d8\stopTrillSpan b( c) a( b a g fis) |
  \override Glissando.style = #'zigzag
  d2.~\startTrillSpan d4 \stopTrillSpan \glissando |
  c'4. b8 a4 g |
  a8-. a-. a4-> r4 g-> |
  a-. r d->\f r |
} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "soprano" voice music defs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

svFanfareOld = {
  \varLabel "svFanfare"
  d4-. r8 c8-. d4-. r8 c8-. |
  d4-. e2-> c4-. |
  d4-. r8 c8-. d4-. a4->~ |
  a1 |
  r1\fermata
}
svFanfare = {
  \time 2/2
    d2 a4 e'4~ |
    e4 a, d4. d8 |
    a4 fis'2.\< | 
    r2\! r2\fermata | 
}

svVamp = {
  %\varLabel "svVamp"
  r4 d8-. d-. d4-. d-. |
  r e-. r fis->-.
}

svHeadA = {
  %\varLabel "svHeadA"
  \tag #'main {
    d4-. \mf g2-> d4 | g2 a2-> | %2
    d,4-. g2-> d4 | c2 a2-> | %4
    d4-. g2-> d4 | c'4.-> b8 a4 g4 | %6
  }
  \tag #'tag {
    a8-. a-. a4-. r4 g-> | a-. r4 d-^\f r4 | %8
  }
}

svHeadB = {
  %\varLabel "svHeadB"
    \tag #'head {
  d4-. d2-> c4 | d1 | %2
  b4-. b2-> a4 | b1 | %4
    }
  \tag #'tail {
  c4--\( _\markup \italic "espress." c2 b4 | c2 d2-- | %6
  c4--\< c2-- b4-- | g-.\!\) r e2-> | %8
  }
}

svHeadAalt = {
  %\varLabel "svHeadAalt"
  \tag #'head {
    d4-. g2-> d4 | g4-- a-^ r2 | %2
    d,4-. g2-> d4 | c4-- a-^ r2 | %4
    d4-. g2-> 
  }
  \tag #'trumpets {
    d4-- | 
    g--(\< a-- b-- d-- | %6
    ees1->\!~ | ees2.) r4| %8
  }
}

svHeadAout = {
  %\varLabel "svHeadAout"
  d8-. d-. d2-> c4 | %1
  d2-> e-> | %2
  d8-. d-. d2-> \< b4 |%3
  g4->\! %4 BEAT ONE
}

svTransOne = {
  %\varLabel "svTransOne"
  %begins on beat 2
  d8-. d-. d4-. d-. |
  r e-. r fis-. |
}

svTransTwo = {
  %\varLabel "svTransTwo"
  %ends on beat 1
  r4 fis8-. fis-. fis4-. fis-. |
  r aes2-> \sfz b4 |
  bes?4-^ 
}

svTransThree = {
  %\varLabel "svTransThree"
  %starts on beat 2
  f?8-. \mp f-. f4-. f-. |
  r4 g-. r2 |
  r4 f8-. f-. f4-. f-. |
  r4 g-. r
}

svDevOne = {
  %\varLabel "svDevOne"
  <> \mf bes8( c) |
  d[( bes c d]) ees[( c d ees]) |
  f4-. f8-- f,-. r8 f'4-. ees8-- |
  e4-. e-. r2 |
}

svDevOneTag = {
  %\varLabel "svDevOneTag"
  g4-. e2.-> |
}

svDevTwo = {
  %\varLabel "svDevTwo"
  \tag #'first {
    f8 g |
    a[ f g a] bes
  }
  \tag #'second {
    g8 a b |
    c
  }
  \tag #'third { 
        aes bes c des
  }
  \tag #'fourth { 
        ees8 \> fes ges |
    g[ \mp ees8 f g] aes[ f g aes] | 
    bes4-. bes8-- bes,-. r bes'4-. aes8-- |
    a4-. a-. r2 |
    R1 |
  }
}

svDevThree = {
  %\varLabel "svDevThree"
  %begins on beat 4
  %ends on beat 3
  aes8( \f bes |
  c[ b c b] c[ b c b]) |
  c8-- ees4-. aes,8-> ~ aes4 r4 |
  bes8-- des4-. ges,8-> ~ ges4 e'->( |
  f)-. ees->( e)-. d->( |
  ees8)-. cis( d)-. c( des)-. b( c)-. a( |
  bes4)-.
}

%% Shout form: A B A C

svShoutA = {
  %\varLabel "svShout"
  %begins on beat 4
  %ends on beat 3
  f8 g |
  aes g f es f4 es8 ges-> ~ |
  ges ges-- ees4-. bes->
}

svShoutB = {
  %\varLabel "svShoutB"
  %begins on beat 4
  %ends on beat 3
  f8 g |
  aes g f es f4 es8 ges-> ~ |
  ges2 r4
}

svShoutC = {
  %\varLabel "svShoutC"
  %begins on beat 4
  \tag #'first {
    aes8 bes |
    ces[ bes aes bes] ces4
  }
  \tag #'second {
    bes8 c |
    des[ ces des ees]
  }
  \tag #'third { e8[ f fis g] }
}

svTransB = {
  %\varLabel "svTransBOne"
  a8-. a-. a2-> g4 | %77
  a2-> b-> | %78
  a8-. a-. a2-> r4 %e4 | %79
  %g2-> e-> | %80
}

svBHeadAalt = {
  \tag #'head {
    %\time 6/8
    a8-. r d-> ~ d4 a8 |
    d4.-> e-> |
    a,8-. r d-> ~ d4 a8 |
    g4.-> e-> |
    a8-. r d-> ~ d4
  }
  \tag #'tail {
    a8 |
    % cut time 8 = 4
    %\time 2/2
    d4 e fis a |
    bes1~ |
    bes2. r4 |
  }
}

% Order: first first second third fourth fifth
svTransC = {
  \tag #'first {
    a8-. a-. a2-> g4 |
    a2 b-> |
  }
  \tag #'second {
    a8-. a-. a4-> ~ a8 r8
  }
  \tag #'third {
    g4->( |
    a8-.) a-. a4-> ~ a8 r8
  }
  \tag #'fourth {
    g4->( |
    a4-^) r a-^ r |
  }
  \tag #'fifth {
    a4-^ a-^ a-^ a-> \sfz |
  }
}

svCHeadB = {
  \tag #'head {
    bes4-. bes2-> aes4->( | %97
    bes4-^) r4 r2 | %98
    g4-. g2-> f4->( | %99
    g4-^) r4 r2 | %100
  }
  \tag #'tail {
    aes4-. aes2-> g4( | %101
    aes2) bes->( | %102
    aes4--)\< aes2-- g4 | %103
    ees2->\! c | %104
  }
}

svCHeadAlt = {
  \tag #'fir {
    bes4-. ees2-> bes4 | %105
    ees2 f-> | %106
  }
  \tag #'sec {
    bes4-. ees2-> bes4 | %107
    aes2 f-> | %108
  }
  \tag #'thir {
    bes4-. ees2-> bes4 | %109
    ees-- f-. g-. bes-. | %110
    ces1-> ~ | ces1 | %111-112
  }
}

svLastVamp = {
  r4 bes8-. bes-. bes4-. bes-. | %121
  r c-. r d-. | %121
}

avLastVamp = {
  r4 g8-. g-. g4-. g-. | %122
  r aes-. r bes-. | %123
}

tvLastVamp = {
  r4 ees8-. ees-. ees4-. ees-. | %121
  r f-. r f-. | %122
}

bvLastVamp = {
  ees4-. r r bes-. | %121
  ees-. r bes-. r | %122
}

sOne = {
  \xNotesOn
  c4 -\markup \italic "One!" r r2 | %123
  \xNotesOff
}

sTwo = {
  \xNotesOn
  c4 -\markup \italic "Two!" r r2 | %124
  \xNotesOff
}

sThree = {
  \xNotesOn
  c4 -\markup \italic "Three!" r %125
  \xNotesOff
}

restTwoThree = {
  R1 | %123
  \sTwo
  \sThree
}

oneTwoThree = {
  \sOne
  \sTwo
  \sThree
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "Alto" voice music defs  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

avFanfare = { 
  fis2 d4 gis4~ |
    gis4 d fis4. fis8 |
    d4 ais'2.\< | 
    r2\! r2\fermata | 
}

avVamp ={
  %\varLabel "avVamp"
  r4 b8-. b-. b4-. b-. |
  r c-. r d-.->
}

avHeadA = {
  <<
    \tag #'upper {
      %\tag #'labels { <> ^\markup \smaller \varName "avHeadA_upper" }
      \tag #'main {
        r4 d2-> \mp d4-. | r4 e-. r fis-. | %2
        r4 d2-> d4-. | r g-. r fis-. | %4
        r4 d2-> d4-. | r g-. r g-.  | %6
      }
      \tag #'tag {
        f8-. f-. f4-. r4 g->  | a-. r a-^\f r | %8
      }
    }
    \tag #'lower {
      %\tag #'labels { <> _\markup \smaller \varName "avHeadA_lower" }
      \tag #'main {
        r4 b2-> \mp b4-. | r c-. r d-. | %2
      r4 b2-> b4-. | r e-. r d-. | %4
      r4 b2-> b4-. | r e-. r e-. | %6
      }
      \tag #'tag {
      c8-. c-. c4-. r4 g-> | a-. r c-^\f r4 | %8
      }
    }
  >>
}

avHeadB = {
  <<
    \tag #'upper {
      %\tag #'labels { <> ^\markup \smaller \varName "avHeadB_upper" }
      \tag #'head {
        %\tag #'labels { <> _\markup \smaller \varName "avHeadB_head" }
        r4 b8-. b-. b4-. r | %1
        r g-. r a-. | %2
        r4 fis8-. fis-. fis4-. r | %3
        r fis-. r fis-. | %4
      }
      \tag #'tail {
        \tag #'tailA {
        r4 a-. r a-. | %5
        r a-. r b-. | %6
        }
        \tag #'tailB {
        r a2--\< fis4-- | %7
        e-.\! r c2-> | %8
        }
      }
    } %tag upper
    \tag #'lower {
      %\tag #'labels { <> _\markup \smaller \varName "avHeadB_lower" }
      \tag #'head {
        %\tag #'labels { <> _\markup \smaller \varName "avHeadB_head" }
        r4 g8-. g-. g4-. r | %1
        r e-. r fis-. | %2
        r4 dis8-. dis-. dis4-. r | %3
        r e-. r dis-. | %4
      } 
      \tag #'tail {
        \tag #'tailA {
          r4 f-. r f-. | %5
          r f-. r g-. | %6
        }
        \tag #'tailB {
          r e2--\< dis4-- | %7
          c-.\! r g2-> | %8
        }
      }
    } %tag lower
  >>
}

avHeadAalt = {
  <<
    \tag #'upper {
      %\tag #'labels { <>^\markup \smaller \varName "avHeadAalt_upper" }
      r4 d2-> d4-. | r4 e-. r fis-. | %2
      r4 d2-> d4-. | r g-. r fis-. | %4
      r4 d2-> d4 | e2 g2 | %6
      aes4-^ r aes4.-> g8-. | aes4-. \<  bes-.  c-.  des-.  \! | %8
    }
    \tag #'lower {
      %\tag #'labels { <>_\markup \smaller \varName "avHeadAalt_lower" }
      r4 b2-> b4 | r c r d | %2
      r4 b2-> b4 | r e r d | %4
      r4 b2-> b4 | c2 d | %6
      f4-^ r f4.-> ees8-.  | f4-.\<  g-.  aes-.  bes-. \!  | %8
    }
  >>
}

avFirstTrans = {
  %\varLabel "avFirstTrans"
  <<
    \tag #'upper {
      r4 d8-. d-. d4-. d-. | %1
      r e-. r fis-. | %2
      r fis8-. fis-. fis4-. fis-. | %3
      r gis2-> gis4 | %4
      bes?-. f8-. f-. f4-. f-. | %5
      r g-> r2 | %6
      r4 f8-. f-. f4-. f-. | %7
      r4 g-> r2 | %8
    }
    \tag #'lower {
      r4 b8-. b-. b4-. b-. | %1
      r c-. r d-. | %2
      r dis8-. dis-. dis4-. dis-. | %3
      r eis2-> eis4 | %4
      f?4-. d8-. d-. d4-. d-. | %5
      r ees4-> r2 | %6
      r4 d8-. d-. d4-. d-. | %7
      r ees4-> r2 | %8
    }
  >>
}

avTransOne = {
  %\varLabel "avTransOne"
  b8-. b-. b4-. b-. | %1
  r c-. r d-. | %2
}

avTransTwo = {
  %\varLabel "avTransTwo"
  %ends on beat 1
  r ees8-. ees-. ees4-. ees-. | %3
  r f2-> \sfz f4 | %4
  f!4-. 
}

avTransThree = {
  %\varLabel "avTransThree"
  %starts on beat 2
  d!8-. \mp d-. d4-. d-. | %5
  r ees4-> r2 | %6
  r4 d8-. d-. d4-. d-. | %7
  r ees-> r %8
}

avDevOne = {
  %\varLabel "avDevOne"
  % starts beat 4
  r4 |
  r d \mf r ees |
  r f r4. ees!8( |
  e4) r4 r2 |
}

avDevOneTag = {
  %\varLabel "avDevOneTag"
  ees!4-. c2.-> |
}

avDevTwo = {
  % trumpets: chormatic "laugh"
  c8-- \stopped \< \glissando |
  <<
    { des8-.\! r \glissando c-. r b-. r bes-. r }
    { s8\open s8\stopped s\open s8\stopped s\open s8\stopped s\open s\stopped}
  >>
  a4-.\> \halfopen aes-.\stopped g-.\stopped ges-.\!\stopped |
}

avDevThree = {
  %\varLabel "avDevThree"
  %begins on beat 4
  %ends on beat 
  f8( \f g8 |
  aes[ g aes g] aes[ g aes g]) | %64
  aes8-- c4-. f,8-> ~ f4 r4 | %65
  g8-- bes4-. e,8-> ~ e4 cis'->( | %66
  d)-. c->( des)-. b->( | %67
  c8)-. bes( ces)-. a( bes)-. aes( a)-. fis( | %68
  g4)-.
}

avBHeadAalt = {
  \tag #'head {
    <<
      \tag #'upper {
        %\time 6/8
        r4 a8-. r4 a8-. |
        r4 b8-. r4 cis8-. |
        r4 a8-. r4 a8-. |
        r4 d8-. r4 cis8-. |
        r4 a8-> ~ a4
      }
      \tag #'lower {
        %\time 6/8
        r4 fis8-. r4 fis8-. |
        r4 g8-. r4 a8-. |
        r4 fis8-. r4 fis8-. |
        r4 b8-. r4 a8-. |
        r4 fis8-> ~ fis4
      }
    >>
  }
  \tag #'tail {
    <<
      \tag #'upper {
        a8 |
        %cut time
        \time 2/2
        r4 b-. r d-. |
        r ees-. \< ees4.-> d8 |
        ees4-. f~-> f8 g8 aes4-. \! |
      }
      \tag #'lower {
        fis8 |
        %cut time
        \time 2/2
        r4 g-. r a-. |
        r c-. \< c4.-> bes8 |
        c4-. d~-> d8 ees8 f4-. \! |
      }
    >>
  }
}

avCHeadB = {
  \tag #'head {
    \tag #'upper {
      g4-. r r g( | %97
      ees-.) r f-> r | %98
      d-. r r d-- | %99
      d-. r d-> r | %100
    }
    \tag #'lower {
      ees4-. r r ees( | %97
      c-.) r d-> r | %98
      b-. r r b( | %99
      c-.) r b-> r |%100
    }
  }
  \tag #'tail {
    \tag #'upper {
      r4 f-. \mp  r f-. | %101
      r f-. r g-. | %102
      r c2-- b4--( | %103
      aes->) aes-. r ees-. | %104
    }
    \tag #'lower {
      r4 des-. \mp r des-. | %101
      r des-. r ees-. | %102
      r f2-- d4--( | %103
      c->) c-. r aes-. | %104
    }
  }
}

avCHeadAlt = {
  \tag #'upper {
    \tag #'head {
      r4 bes-. r bes-. | %105
        r c-. r d-. | %106
        r bes-. r bes-. | %107
        r ees-. r d-. | %108
        r bes-. r % r %109
        bes4-. | %109
        r4 c-. r bes-. | %110
    }
  }
  \tag #'lower {
    \tag #'head {
      r4 g-. r g-. | %105
        r aes-. r bes-. | %106
        r g-. r g-. | %107
        r c-. r bes-. | %108
        r g-. r % r %109
        g4-. | %109
        r4 aes-. r g-. | %110
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "Tenor" voice music defs %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tvFanfare = {
  R1*3 | r1\fermata
  %{
    fis2 d4 gis4~ |
    gis4 d fis4. fis8 |
    d4 c2.\< | 
    r1\!\fermata |
  %}
}

tvVamp = {
  %\varLabel "tvVamp"
  r4 g8-. g-. g4-. g-. |
  r a-. r a-.->
}

tvHeadB = {
  %\varLabel "tvHeadB"
  R1 |
  r4 d8-. \ff d-. a'2-> |
  R1 |
  r4 fis8-. fis-. b2-> |
  %Tail
    \tag #'upper {
      r4 f-. \mf r f-. | %5
      r f-. r g-. | %6
      r a2--\< fis4-- | %7
      e-.\! r c2-> | %8
    }
    \tag #'lower {
      r4 a-. \mf r a-. | %5
      r a-. r b-. | %6
      r e2--\< dis4-- | %7
      c-.\! r g2-> | %8
    }
}

tvHeadAalt = {
  \tag #'head {
    R1 |
    b4--\ff c-^ r2 |
    R1 |
    c4-- a-^ r2 |
    R1 |
  }
  \tag #'tail {
    \tag #'one {
      %r4 c, r d |
      R1 |
      R1 |
      aes4( bes2) r4 |
    }
    \tag #'two {
      %r4 c, r d |
      R1 |
      r2 des,2~ |
      des2. r4 |
    }
    \tag #'threeFour {
      %r4 e r d |
      R1 |
      ees1~ |
      ees2. r4 |
    }
  }
}

tvHeadAout = {
  \tag #'upper {
    g2-> r4 g |
    a2.-> r4 |
    c4-. r4 r b4-> |
    g4-.
  }
  \tag #'lower {
    c2-> r4 c |
    c2.-> r4 |
    e4-. r2 d4-> |
    g4-. 
  }
}

tvFirstTrans = {
  %\varLabel "tvFirstTrans"
  r4 g8 g g4 g | %1
  r a r a | %2
  r b8 b b4 b | %3
  r cis2 cis4 | %4
  d4 bes8 bes bes4 bes | %5
  r c4 r2 | %6
  r4 bes8 bes bes4 bes | %7
  r c4 r2 | %8
}

tvTransOne = {
  %\varLabel "tvTransOne"
  g8-. g-. g4-. g-. | %1
  r a-. r a-. | %2
}

tvTransTwo = {
  %\varLabel "tvTransTwo"
  %ends on beat 1
  r b8-. b-. b4-. b-. | %3
  r des2-> \sfz des4 | %4
  d!4
}

tvTransThree = {
  %\varLabel "tvTransThree"
  %begins on beat 2
  bes8\mp bes bes4 bes | %5
  r c4 r2 | %6
  r4 bes8 bes bes4 bes | %7
  r c4 r %8
}

tvDevOne = {
  %\varLabel "tvVarOne"
  R1 |
  r4. f8 r2 |
  r2 r8 e4-. e8-. |
  ees!4-. c2. |
}

tvDevThree = {
  c8( \f des |
  ees[ d ees d] ees[ d ees d]) |
  ees8-- ges4-. ees8-> ~ ees4 r4 |
  bes8-- ees4-. d8-> ~ d4 r4 |
  r2. r8 b( |
  c)-. bes( b)-. a( bes)-. aes( a)-. fis( |
  g4)-.
}

tvCHeadB = {
  \tag #'head {
    R1 | %97
    r4 bes8-. bes-. f'2-> | %98
    R1 | %99
    r4 d8-. d-. g2-> | %100
  }
}

%tvCHeadAlt = {
%  \tag #'upper {
%    fes2-> ges2-> | %111
%    aes2-> a2-> | %112
%  }
%}

tvCHeadAlt = {
  \tag #'upper {
    fes2-> \< \grace {ees16 fes} ges2-> | %111
    \grace {fes16 ges} aes2-> \grace { ges16 aes!} a2-> \! | %112
  }
  \tag #'lower {
    des2-> \< \grace {ces16 des} ees2-> |%111
    \grace {des16 ees} fes2-> \grace {ees16 fes} ges2-> \! | %112
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "Bass" voice music defs %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

bvFanfare = {
  %\varLabel "bvFanfare"
  R1*2 | r2 r4 g4 | d2\fermata r2
}

bvVamp = {
  %\varLabel "bvVamp"
  \tag #'barOne {g4 r r d} | %1
  \tag #'barTwo {g r d r} | %2
}

bvHeadA = {
  %\varLabel "bvHeadA"
  g4 \mf r d r |
  \repeat unfold 3 { g4 r d r | } %4
  g4 r d r  | g4 r d r  | %6
  f8-. f-. f4-. r2 | r2 d'4-^\f r | %8
}

bvHeadB = {
  %\varLabel "bvHeadB"
  g, r r d | g r2. | %2
  b4 r r fis | b r fis2 | %4
  f4 r c r | f r c r | %6
  a'-.\< a2-> b4 | c-.\! r d2-> | %8
}

bvHeadAalt = {
  %\varLabel "bvHeadAalt"
  \repeat unfold 2 { g4 r d r | r g-^ r d-> \sfz | } %4
  g r d r |
  g2 d2 | %6
  ees2 bes'2 | ees2 ees,2 | %8
}

bvHeadOut = {
  %\varLabel "bvHeadOut"
  a4 r r2 | R1 | %2
  d2. d4 |  %3
}

bvFirstTrans = {
  %\varLabel "bvFirstTrans"
  g4 r d r | g r d' r | %2
  b r fis r | b-. des2-> \sfz b4 | %4
  bes?4 r f\mp r | bes r4 r2 | %6
  bes4 r f r | bes r r2 | %8
}  
   
bvBHeadAalt = {
  %6/8 time
  %\time 2/2
  \repeat unfold 5 { d4-. r8 a4-. r8 | }
  %cut time
  %\time 6/8
  d4 r2 d4 |
  bes1~\fp\< |
  bes2. r4\! |
}

bvDevThree = {
  aes8( \f bes |
  c8[ b c b] c[ b c b]) |
  c-- ees4-. ces8-> ~ ces4 r |
  bes8-- des4-. bes8-> ~ bes4 r |
  R1 |
  r4. a8( bes)-. aes( a)-. fis( |
  g4)-.

}

bvCHeadB = {
  \tag #'head {
    \repeat unfold 2 { ees4 r bes r | } %97-98
    g' r d r | %99
    g r d r | %100
  }
  \tag #'tail {
    des r aes r | %101
    des r aes r | %102
    f' f2 g4 | %103
    aes4 r bes, r | %104
  }
}

bvCHeadAlt = {
  \tag #'head {
    ees4 \mf r bes r | %105
    \repeat unfold 5 { ees4 r bes r | }  
  }
  \tag #'tail {
    ges4 r ces r |
    ges' r ces, r |
  }
}

