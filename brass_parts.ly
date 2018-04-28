\version "2.18.2"

\include "global_includes.ily"
%\include "woodwinds.ily"
\include "brass.ily"
%\include "percussion.ily"

\pointAndClickOff

%% Instrument Staves

partsMarks = {
  <<
    \keyChanges
    \globalMarks
  >>
}

#(set-global-staff-size 18)

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
      %\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 8)
  }
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Bb Trumpet 1"
    }
    \transpose bes c'
      <<
      \partsMarks
      \trumpetOneNotes
      >>
  }
}
\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Bb Trumpet 2"
    }
    \transpose bes c'
      <<
      \partsMarks
      \trumpetTwoNotes
      >>
  }
}
