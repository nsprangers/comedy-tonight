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
  \tempo 2=92
  \sketchLabel "Roman Fanfare"
  s1*4
  \bar "||" 	%5
  \tempo "Brightly" 2 = 116
  s1*4 \mark \default		%10
  s1*8	%17
  \mark \default %18
  s1*8 %25
  \mark \default %26
  \sketchLabel "Bridge"
  s1*4 %29
  \sketchLabel "+Percussion - more oom pa"
  s1*4 %33
  s1*8 %41
  s1*3 %44
  \sketchLabel "Vamp modulate"
  s1*4 %45
  \bar "||" \mark \default
  \sketchLabel "Softshoe"
  s1*33
  \mark \default
  s1*8
  \mark \default
  s1*8
  \mark \default
  s1*8
  \mark \default
  s1*8
  \mark \default
}

keyChanges = {
  \set Staff.printKeyCancellation = ##f
  \key g \major
  s1*47
  \tag #'keybreaks { \break }
  \bar "||" \key bes \major
  s1*12
  \tag #'keybreaks { \break }
  \bar "||" \key aes \major
  s1*9
  \tag #'keybreaks { \break }
  \bar "||" \key ees \major
  s1*8
  \tag #'keybreaks { \break }
  \bar "||" \key d \major
  s1*20
  \tag #'keybreaks { \break }
  \bar "||" \key ees \major
  s1*30
  \bar "|."
}

espress = \markup \italic "espress."

FanfareRest = { R1*3 | r1\fermata | }

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
    r1\!\fermata | 
}

svVamp = {
  \varLabel "svVamp"
  r4 d8-. d-. d4-. d-. |
  r e-. r fis->-.
}

svHeadA = {
  \varLabel "svHeadA"
  \tag #'main {
    d4-. g2-> d4 | g2 a2-> | %2
    d,4-. g2-> d4 | c2 a2 | %4
    d4 g2-> d4 | c'4. b8 a4 g4 | %6
  }
  \tag #'tag {
    a8-. a-. a4-> r4 g-> | a-. r4 d-> r4 | %8
  }
}

svHeadB = {
  \varLabel "svHeadB"
    \tag #'head {
  d4-. d2-> c4 | d1 | %2
  b4-. b2-> a4 | b1 | %4
    }
  \tag #'tail {
  c4--\( _\markup \italic "espress." c2-- b4-- | c2-- d2-> | %6
  c4--\< c2-- b4-- | g-.\!\) r e2-> | %8
  }
}

svHeadAalt = {
  \varLabel "svHeadAalt"
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
  \varLabel "svHeadAout"
  d8-. d-. d2-> c4 | %1
  d2-> e-> | %2
  d8-. d-. d2-> \< b4 |%3
  g4->\! %4 BEAT ONE
}

svTransOne = {
  \varLabel "svTransOne"
  %begins on beat 2
  d8-. d-. d4-. d-. |
  r e-. r fis-. |
}

svTransTwo = {
  \varLabel "svTransTwo"
  %ends on beat 1
  r4 fis8-. fis-. fis4-. fis-. |
  r b2-> b4 |
  bes4-^ 
}

svTransThree = {
  \varLabel "svTransThree"
  %starts on beat 2
  f?8-. \mp f-. f4-. f-. |
  r4 g-. r2 |
  r4 f8-. f-. f4-. f-. |
  r4 g-. r
}

svDevOne = {
  \varLabel "svDevOne"
  bes8 c |
  d[ bes c d] ees[ c d ees] |
  f4 f4 r8 f4 dis8 |
  e4 e r2 |
}

svDevOneTag = {
  \varLabel "svDevOneTag"
  g4-. e~ e2 |
}

svDevTwo = {
  \varLabel "svDevTwo"
  \tag #'first {
    f8 g |
    a[ f g a] bes
  }
  \tag #'second {
    g8 a b |
    c[ aes bes c] des
  }
  \tag #'third { ees8 fes ges | g }
  \tag #'fourth { 
    ees8 f g aes[ f g aes] | 
    bes4 bes4 r8 bes4 aes8 |
    a4 a r2|
    r2.
  }
}

svDevThree = {
  \varLabel "svDevThree"
  %begins on beat 4
  %ends on beat 3
  aes8 bes |
  c[ b c b] c[ b c b] |
  c8-- ees4-. aes,8~ aes4 r4 |
  bes8-- des4-. ges,8~ ges4 cis( |
  d)-. c( des)-. b( |
  c8)-. bes( ces)-. a( bes4)-.
}

%% Shout form: A B A C

svShoutA = {
  \varLabel "svShout"
  %begins on beat 4
  %ends on beat 3
  f8 g |
  aes g f es f4 es8 ges~ |
  ges ges ees4 bes
}

svShoutB = {
  \varLabel "svShoutB"
  %begins on beat 4
  %ends on beat 3
  f8 g |
  aes g f es f4 es8 ges~ |
  ges2.
}

svShoutC = {
  \varLabel "svShoutC"
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
  \varLabel "svTransBOne"
  a8-. a-. a2-> g4 |
  a2-> b-> |
  a8-. a-. a2-> e4 |
  g2-> e-> |
}

svBHeadAalt = {
  \tag #'head {
    a4-. d2-> a4 |
    d2-> e-> |
    a,4-. d2-> a4 |
    g2-> e-> |
    a4-. d2-> 
  }
  \tag #'tail {
    a4 |
    d e fis a |
    bes1~ |
    bes2. r4 |
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "Alto" voice music defs  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

avFanfare = { 
  fis2 d4 gis4~ |
    gis4 d fis4. fis8 |
    d4 ais'2.\< | 
    r1\!\fermata | 
}

avVamp ={
  \varLabel "avVamp"
  r4 b8-. b-. b4-. b-. |
  r c-. r d-.->
}

avHeadA = {
  <<
    \tag #'upper {
      \tag #'labels { <> ^\markup \smaller \varName "avHeadA_upper" }
      \tag #'main {
        r4 d2-> d4-. | r4 e-. r fis-. | %2
        r4 d2-> d4-. | r g-. r fis-. | %4
        r4 d2-> d4-. | r g-. r g-.  | %6
      }
      \tag #'tag {
        f8-. f-. f4-. r4 g->  | a-. r a-> r | %8
      }
    }
    \tag #'lower {
      \tag #'labels { <> _\markup \smaller \varName "avHeadA_lower" }
      \tag #'main {
        r4 b2-> b4 | r c r d | %2
      r4 b2-> b4 | r e r d | %4
      r4 b2-> b4 | r e r e | %6
      }
      \tag #'tag {
      c8 c c4 r4 g-> | a-. r c-> r4 | %8
      }
    }
  >>
}

avHeadB = {
  <<
    \tag #'upper {
      \tag #'labels { <> ^\markup \smaller \varName "avHeadB_upper" }
      \tag #'head {
        \tag #'labels { <> _\markup \smaller \varName "avHeadB_head" }
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
      \tag #'labels { <> _\markup \smaller \varName "avHeadB_lower" }
      \tag #'head {
        \tag #'labels { <> _\markup \smaller \varName "avHeadB_head" }
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
      \tag #'labels { <>^\markup \smaller \varName "avHeadAalt_upper" }
      r4 d2-> d4-. | r4 e-. r fis-. | %2
      r4 d2-> d4-. | r g-. r fis-. | %4
      r4 d2-> d4 | e2 g2 | %6
      aes4 r aes4. g8 | aes4 bes c des | %8
    }
    \tag #'lower {
      \tag #'labels { <>_\markup \smaller \varName "avHeadAalt_lower" }
      r4 b2-> b4 | r c r d | %2
      r4 b2-> b4 | r e r d | %4
      r4 b2-> b4 | c2 d | %6
      f4 r f4. ees8 | f4 g aes bes | %8
    }
  >>
}

avFirstTrans = {
  \varLabel "avFirstTrans"
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
  \varLabel "avTransOne"
  b8-. b-. b4-. b-. | %1
  r c-. r d-. | %2
}

avTransTwo = {
  \varLabel "avTransTwo"
  %ends on beat 1
  r ees8-. ees-. ees4-. ees-. | %3
  r f2-> f4 | %4
  f?4-. 
}

avTransThree = {
  \varLabel "avTransThree"
  %starts on beat 2
  d8-. \mp d-. d4-. d-. | %5
  r ees4-> r2 | %6
  r4 d8-. d-. d4-. d-. | %7
  r ees-> r %8
}

avDevOne = {
  \varLabel "avDevOneTag"
  % starts beat 4
  r4 |
  d r ees r |
  r f r4. ees8( |
  e4) r4 r2 |
}

avDevOneTag = {
  \varLabel "avDevOneTag"
  ees4-. c4~ c2 |
}

avBHeadAalt = {
  \tag #'head {
    <<
      \tag #'upper {
        r4 a4-. r a4-. |
        r4 b-. r cis-. |
        r a-. r a-. |
        r d-. r cis-. |
        r a2->
      }
      \tag #'lower {
        r4 fis-. r fis-. |
        r g-. r a-. |
        r fis-. r fis-. |
        r b-. r a-. |
        r fis2->
      }
    >>
  }
  \tag #'tail {
    <<
      \tag #'upper {
        r4 |
        r b-. r d-. |
        r ees-. ees4.-> d8 |
        ees4-. f~-> f8 g8 aes4-. |
      }
      \tag #'lower {
        r4 |
        r g-. r a-. |
        r c-. c4.-> bes8 |
        c4-. d~-> d8 ees8 f4-. |
      }
    >>
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
  \varLabel "tvVamp"
  r4 g8-. g-. g4-. g-. |
  r a-. r a-.->
}

tvHeadB = {
  \varLabel "tvHeadB"
  r1 |
  r4 d8 d a'2-> |
  r1 |
  r4 fis8 fis b2-> |
  %Tail
    \tag #'upper {
      r4 f-. r f-. | %5
      r f-. r g-. | %6
      r a2--\< fis4-- | %7
      e-.\! r c2-> | %8
    }
    \tag #'lower {
      r4 a-. r a-. | %5
      r a-. r b-. | %6
      r e2--\< dis4-- | %7
      c-.\! r g2-> | %8
    }
}

tvHeadAalt = {
  \tag #'head {
    r1 |
    b4--\ff c-^ r2 |
    r1 |
    c4-- a-^ r2 |
    r1 |
  }
  \tag #'tail {
    \tag #'one {
      %r4 c, r d |
      r1 |
      r1 |
      aes4( bes2) r4 |
    }
    \tag #'two {
      %r4 c, r d |
      r1 |
      r2 des,2~ |
      des2. r4 |
    }
    \tag #'threeFour {
      %r4 e r d |
      r1 |
      ees1~ |
      ees2. r4 |
    }
  }
}

tvHeadAout = {
  \tag #'upper {
    g2 r4 g |
    a2. r4 |
    c4 r2 b4 |
    g4
  }
  \tag #'lower {
    c2 r4 c |
    c2. r4 |
    e4 r2 d4 |
    g4 
  }
}

tvFirstTrans = {
  \varLabel "tvFirstTrans"
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
  \varLabel "tvTransOne"
  r4 g8-. g-. g4-. g-. | %1
  r a-. r a-. | %2
}

tvTransTwo = {
  \varLabel "tvTransTwo"
  %ends on beat 1
  r b8-. b-. b4-. b-. | %3
  r des2-> des4 | %4
  d4
}

tvTransThree = {
  \varLabel "tvTransThree"
  %begins on beat 2
  bes8\mp bes bes4 bes | %5
  r c4 r2 | %6
  r4 bes8 bes bes4 bes | %7
  r c4 r %8
}

tvDevOne = {
  \varLabel "tvVarOne"
  R1 |
  r4. f8 r2 |
  r2 r8 e4-. e8-. |
  R1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% "Bass" voice music defs %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

bvFanfare = {
  \varLabel "bvFanfare"
  R1*2 | r2. g4 | d1\fermata
}

bvVamp = {
  \varLabel "bvVamp"
  \tag #'barOne {g4 r r d} | %1
  \tag #'barTwo {g r d r} | %2
}

bvHeadA = {
  \varLabel "bvHeadA"
  \repeat unfold 4 { g4 r d r | } %4
  g4 r d r  | g4 r d r  | %6
  f8-. f-. f4-. r2 | r2 d'4-> r | %8
}

bvHeadB = {
  \varLabel "bvHeadB"
  g, r r d | g r2. | %2
  b4 r r fis | b r fis2 | %4
  f4 r c r | f r c r | %6
  a'-.\< a2-> b4 | c-.\! r d-^ r | %8
}

bvHeadAalt = {
  \varLabel "bvHeadAalt"
  \repeat unfold 5 { g4 r d r | } %5
  g2 d2 | %6
  ees2 bes'2 | ees2 ees,2 | %8
}

bvHeadOut = {
  \varLabel "bvHeadOut"
  a4 r r2 | r1 | %2
  d2. d4 |  %3
}

bvFirstTrans = {
  \varLabel "bvFirstTrans"
  g4 r d r | g r d' r | %2
  b r fis r | b-. b2-> b4 | %4
  bes?4 r f\mp r | bes r4 r2 | %6
  bes4 r f r | bes r2. | %8
}  
   
bvBHeadAalt = {
  \repeat unfold 5 { d4 r a r | }
  d4 r2 d4 |
  bes1~\fp\< |
  bes2. r4\! |
}
