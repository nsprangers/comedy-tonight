\version "2.18.2"

\include "global_includes.ily"
\pointAndClickOff

partsMarks = {
  <<
    \keyChanges
    \globalMarks
  >>
}

%#(set-global-staff-size 17.82)
#(set-global-staff-size 15.87)

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  print-page-number = ##f
}

\layout {
  \context {
    \Score
      \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #1
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 8)
  }
}
