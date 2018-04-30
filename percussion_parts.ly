\version "2.18.2"

\include "percussion.ily"
\include "inst_part.ily"

#(set-global-staff-size 20)

instName = "Timpani"
transFrom = c
transTo = c
instNotes = { \clef bass \timpaniNotes }
\include "inst_bookpart.ily"

instName = "Bells & Chimes"
transFrom = c
transTo = c
instNotes = { \bellsNotes }
\include "inst_bookpart.ily"

instName = "Xylophone & Marimba"
transFrom = c
transTo = c
instNotes = { \xylophoneNotes }
\include "inst_bookpart.ily"

\bookpart {
  \header {
    poet = "Percussion 1"
  }
  \score {
    \new DrumStaff {
      <<
      \partsMarks
      \percussionOneNotes
      >>
    }
  }
}

\bookpart {
  \header {
    poet = "Percussion 1"
  }
  \score {
    \new DrumStaff {
      <<
      \partsMarks
      \percussionOneNotes
      >>
    }
  }
}

\bookpart {
  \header {
    poet = "Percussion 2 (2 players)"
  }
  \score {
    \new DrumStaff {
      <<
      \partsMarks
      \percussionTwoNotes
      >>
    }
  }
}

\bookpart {
  \header {
    poet = "Percussion 2 (2 players)"
  }
  \score {
    \new DrumStaff {
      <<
      \partsMarks
      \percussionTwoNotes
      >>
    }
  }
}

%{
\bookpart {
  \header {
    poet = "Piano"
  }
  \score {
    \new PianoStaff {
      \new Staff = "upper" {
        <<
          \keyChanges
          \pianoRHNotes
          >>
      }
      \new Staff = "lower" {
        <<
          \keyChanges
          { \clef bass \pianoLHNotes }
        >>
      }
    }
  }
}
%}
