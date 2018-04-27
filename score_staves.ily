\version "2.18.2"

\include "woodwinds.ily"
\include "brass.ily"
\include "percussion.ily"

scoreTags =
#(define-music-function
  (parser location instrumentNotes)
  (ly:music?)
  #{
    \removeWithTag #'labels { #instrumentNotes }
  #}
)

scorePiccoloStaff = \new Staff \with {
  instrumentName = "Piccolo"
  shortInstrumentName = "Picc."
  midiInstrument = "piccolo"
  midiMaximumVolume = #0.9
} { <<
  \keyChanges
  \transpose c c, \scoreTags \piccoloNotes >> }

scoreFluteOneTwoStaff = \new Staff \with {
  instrumentName = "Flute 1, 2"
  shortInstrumentName = "Fl. 1, 2"
  midiInstrument = "flute"
} {
  << 
    \keyChanges
    { \partcombine
      \scoreTags \fluteOneNotes
      \scoreTags \fluteTwoNotes
    }
  >>
}


scoreOboeStaff = \new Staff \with {
  instrumentName = "Oboe"
  shortInstrumentName = "Ob."
  midiInstrument = "oboe"
} { 
  <<
    \keyChanges
    { \scoreTags \oboeNotes }
  >>
}

scoreBassoonStaff = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "Bsn."
  midiInstrument = "bassoon"
} { 
  <<
    \keyChanges
    { \clef bass \scoreTags \bassoonNotes }
  >>
}

scoreClarinetOneStaff = \new Staff \with {
  instrumentName = "Bb Clarinet 1"
  shortInstrumentName = "Cl. 1"
  midiInstrument = "clarinet"
} { \transpose bes c' 
  <<
    \keyChanges
    { \scoreTags \clarinetOneNotes }
  >>
}

scoreClarinetTwoThreeStaff = \new Staff \with {
  instrumentName = "Bb Clarinet 2, 3"
  shortInstrumentName = "Cl. 2, 3"
  midiInstrument = "clarinet"
} { \transpose bes c' 
  <<
    \keyChanges
    { \partcombine \scoreTags \clarinetTwoMusic \scoreTags \clarinetThreeMusic }
  >>
}

scoreBassClarinetStaff = \new Staff \with {
  instrumentName = "Bass Clarinet"
  shortInstrumentName = "Bs. Clar."
  midiInstrument = "clarinet"
} { \transpose bes c'' 
  <<
    \keyChanges
    { \scoreTags \bassClarinetNotes }
  >>
}

scoreAltoSaxOneStaff = \new Staff \with {
  instrumentName = "Alto Sax 1"
  shortInstrumentName = "Alto 1"
  midiInstrument = "alto sax"
} { \transpose ees c' 
  <<
    \keyChanges
    { \scoreTags \altoSaxOneNotes }
  >>
}

scoreAltoSaxTwoStaff = \new Staff \with {
  instrumentName = "Alto Sax 2"
  shortInstrumentName = "Alto 2"
  midiInstrument = "alto sax"
} {  \transpose ees c' 
  <<
    \keyChanges
    { \scoreTags \altoSaxTwoNotes }
  >>
}

scoreAltoSaxOneTwoStaff = \new Staff \with {
  instrumentName = "Alto Sax 1, 2"
  shortInstrumentName = "Alto 1, 2"
  midiInstrument = "alto sax"
} {  \transpose ees c' 
  <<
    \keyChanges
    { \scoreTags \partcombine \altoSaxOneNotes \altoSaxTwoNotes }
  >>
}

scoreTenorSaxStaff = \new Staff \with {
  instrumentName = "Tenor Sax"
  shortInstrumentName = "Ten."
  midiInstrument = "tenor sax"
} {  \transpose bes c'' 
  <<
    \keyChanges
    { \scoreTags \tenorSaxNotes }
  >>
}

scoreBariSaxStaff = \new Staff \with {
  instrumentName = "Baritone Sax"
  shortInstrumentName = "Bar."
  midiInstrument = "baritone sax"
} {  \transpose ees c'' 
  <<
    \keyChanges
    { \scoreTags \bariSaxNotes }
  >>
}

scoreTrumpetOneStaff = \new Staff \with {
  instrumentName = "Bb Trumpet 1"
  shortInstrumentName = "Tpt. 1"
  midiInstrument = "trumpet"
  midiMaximumVolume = #1
} {  \transpose bes c' 
  <<
    \keyChanges
    { \scoreTags \trumpetOneNotes }
  >>
}

scoreTrumpetTwoThreeStaff = \new Staff \with {
  instrumentName = "Bb Trumpet 2, 3"
  shortInstrumentName = "Tpt. 2, 3"
  midiInstrument = "trumpet"
  midiMaximumVolume = #1
} {  \transpose bes c' 
  <<
    \keyChanges
    { \partcombine \scoreTags \trumpetTwoNotes \scoreTags \trumpetThreeNotes }
  >>
}

scoreHornOneTwoStaff = \new Staff \with {
  instrumentName = "F Horn 1, 2"
  shortInstrumentName = "Hn. 1, 2"
  midiInstrument = "french horn"
  midiMaximumVolume = #1
} {  \transpose f c' 
  <<
    \keyChanges
    { \partcombine \scoreTags \hornOneNotes \scoreTags \hornTwoNotes }
  >>
}

scoreHornThreeFourStaff = \new Staff \with {
  instrumentName = "F Horn 3, 4"
  shortInstrumentName = "Hn. 3, 4"
  midiInstrument = "french horn"
  midiMaximumVolume = #1
} { \transpose f c' 
  <<
    \keyChanges
    {  \scoreTags \hornThreeNotes }
  >>
}

scoreTromboneOneTwoStaff = \new Staff \with {
  instrumentName = "Trombone 1, 2"
  shortInstrumentName = "Tbn. 1, 2"
  midiInstrument = "trombone"
} { 
  <<
    \keyChanges
    { \clef bass \partcombine  \scoreTags \tromboneOneNotes \scoreTags \tromboneTwoNotes }
  >>
}

scoreBassTromboneStaff = \new Staff \with {
  instrumentName = "Bass Trombone"
  shortInstrumentName = "B. Tbn."
  midiInstrument = "trombone"
} {  
  <<
    \keyChanges
    { \clef bass \scoreTags \bassTromboneNotes }
  >>
}

scoreEuphoniumStaff = \new Staff \with {
  instrumentName = "Euphonium"
  shortInstrumentName = "Euph."
  midiInstrument = "tuba"
} { 
  <<
    \keyChanges
    {  \clef bass \scoreTags \euphoniumNotes }
  >>
}

scoreTubaStaff = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tuba"
  midiInstrument = "tuba"
} {  
  <<
    \keyChanges
    { \clef bass \scoreTags \tubaNotes }
  >>
}

scoreDoubleBassStaff = \new Staff \with {
  instrumentName = "Double Bass"
  shortInstrumentName = "D.B."
  midiInstrument = "acoustic bass"
} { \transpose c c' 
  <<
    \keyChanges
    { \clef bass \scoreTags \doubleBassNotes }
  >>
}

scorePianoStaff = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
  midiInstrument = "acoustic grand"
  fontSize = -2
} {
  <<
    \new Staff = "upper" {
      <<
        \keyChanges
        \scoreTags \pianoRHNotes
      >>
    }
    \new Staff = "lower" { 
      <<
        \keyChanges
        { \clef bass \scoreTags \pianoLHNotes }
      >>
    }
  >> 
}

scoreTimpaniStaff = \new Staff \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Timp."
  midiInstrument = "timpani"
} {
  <<
   \keyChanges
   { \clef bass \scoreTags \timpaniNotes }
  >>
}

scoreMalletPercussionStaff = \new StaffGroup \with { systemStartDelimiter = #'SystemStartBrace }
<<
  \new Staff \with {
    instrumentName = "Bells"
    shortInstrumentName = "Bells"
    midiInstrument = "glockenspiel"
  } {
    <<
      \keyChanges
      \scoreTags \bellsNotes
    >>
  }

  \new Staff \with {
    instrumentName = "Xylophone"
    shortInstrumentName = "Xylo."
    midiInstrument = "xylophone"
  } {
    <<
      \keyChanges
      \scoreTags \xylophoneNotes
    >>
  }
>>

scorePercussionOneStaff = \new DrumStaff \with {
  instrumentName = "Percussion 1"
  shortInstrumentName = "Perc. 1"
  midiInstrument = "drums"
} { 
  <<
    \keyChanges
    \scoreTags \percussionOneNotes 
  >>
}

scorePercussionTwoStaff = \new DrumStaff \with {
  instrumentName = "Percussion 2"
  shortInstrumentName = "Perc. 2"
  midiInstrument = "drums"
} { 
  <<
    \keyChanges
    \scoreTags \percussionTwoNotes
  >>
}
