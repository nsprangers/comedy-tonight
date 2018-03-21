\version "2.18.2"

\include "global_includes.ily"
\include "comedy_music.ily"
\header { subsubtitle = "Sketch Outline" }

%%%%%%%%
% Staves and Score{} for outline/reduction score.
%%%%%%%

test = \repeat unfold 16 { \repeat unfold 4 c4 }

reductionBreaks = {
  \repeat unfold 23 { s1*5 \break }
}

globalMarks = { << \reductionBreaks \globalMarks >> }

% "Soprano" voice
sV = \relative e''{
  \global

  <> \f \relative g'' { \svFanfare } %5
  \relative d' { \svVamp } %7
  \relative d' { \svVamp } %9
  \repeat unfold 2 { \relative d' \svHeadA } %25
  \relative d'' \svHeadB %33
  \relative d' \svHeadAalt %41
  \relative d'' \svHeadAout %44
  r4 r2 |
  R1*2 |
  r4 cis2\ppppp b4 | bes4 r4 r2 | R1*2
  r2 r4
  \relative bes' \svSoftshoe
}

% "Alto" voice
aV = \relative c' {
  \global

  \relative c'' \avFanfare
  \repeat unfold 2 { \relative b \avVamp } %9
  \repeat unfold 2 {
    <<
      \relative d' \keepWithTag #'(upper main tag) \avHeadA
      \relative d' \keepWithTag #'(lower main tag) \avHeadA
    >>
    } %25
  <<
    \relative b' \keepWithTag #'(upper head tail) \avHeadB
    \relative g' \keepWithTag #'(lower head tail) \avHeadB
  >> %33
  <<
  \relative d' \keepWithTag #'upper \avHeadAalt
  \relative d' \keepWithTag #'lower \avHeadAalt
  >>

  s1*3 % HeadAOut - need to write
  <<
  \relative d' \keepWithTag #'upper \avFirstTrans
  \relative b \keepWithTag #'lower \avFirstTrans
  >>

}

% "Tenor" voice
tV = \relative c' {
  \global
  %\relative g' { \svFanfare } %5
  \tvFanfare

  \repeat unfold 2 {
    \relative g \tvVamp
  }
  s1*16
  \relative d' \tvHeadB
  s1*15
  \relative g \tvFirstTrans
}

% "bass" voice
bV = \relative g, {
  \global
  \clef "bass"
  \bvFanfare %5
  \repeat unfold 2 { \relative g, \bvVamp } %10
  \repeat unfold 2 { \relative g, \bvHeadA } %26
  \relative g \bvHeadB %33
  \relative g, \bvHeadAalt %41
  \relative a, \bvHeadOut %45
  \relative g, \bvFirstTrans %52
}

#(set-global-staff-size  17.82 )

\paper {
  #(set-paper-size "letter" )
  %system-separator-markup = \slashSeparator
  %page-breaking = #ly:page-turn-breaking
  %annotate-spacing = ##t
  ragged-last = ##f
}

\score {
  \new StaffGroup \with {
    \override StaffGrouper.staff-staff-spacing.minimum-distance = #10
  }
  <<
    \new Staff = "Soprano Voice" \with {
      midiInstrument = "acoustic grand"
    }{ << \globalMarks \sV >> }

    \new Staff = "Alto Voice" \with {
      midiInstrument = "acoustic grand"
    }{ << \reductionBreaks \aV >> }

    \new Staff = "Tenor Voice" \with {
      midiInstrument = "acoustic grand"
    }{ << \reductionBreaks \tV >> }

    \new Staff = "Bass Voice" \with {
      midiInstrument = "acoustic grand"
    }{ << \reductionBreaks \bV >>}
  >>

  \layout {
    \layoutCommon
    \context {
      \Score
      %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 16)
    }
    indent = 0
  } % layout

  \midi { }
} % score
