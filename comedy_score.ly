\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header
%{
  TODO:
  Sans title font?

  Customize titles to put composer/arranger on same Y level as title
  http://lilypond.org/doc/v2.18/Documentation/notation/custom-titles-headers-and-footers#custom-layout-for-titles
%}

\include "global_includes.ily"
%\include "comedy_reduction.ly"

\pointAndClickOff

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Music Definitions
% instrument files which contain notes

\include "score_staves.ily"

scoreBreaks = {
  %\repeat unfold 3 { s1*8 \break }
}

scoreGlobalMarksStaff = \new Staff
%Staff settings:
\with {
  \remove "Staff_symbol_engraver"
  \remove "Clef_engraver"
  \remove "Time_signature_engraver"
  \remove "Key_engraver"
  \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
  %\override VerticalAxisGroup.staff-staff-spacing.basic-distance = #'(0)
  %\override VerticalAxisGroup.staff-staff-spacing.minimum-distance #
} {
  <<
    \scoreTags \globalMarks \scoreBreaks
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formatting Blocks

#(set-global-staff-size 14)

\paper {
  #(set-paper-size "11x17")
  systems-per-page = #1
  %system-separator-markup = \slashSeparator
  %page-breaking = #ly:page-turn-breaking
  %annotate-spacing = ##t
  %{
  #(define fonts
    (make-pango-font-tree "Nimbus Sans"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 14)))
  %}
}

\score {

  %Score staves
  <<
    % Woodwind Choir
    \scoreGlobalMarksStaff
    \new StaffGroup
    <<
      \scorePiccoloStaff
      \scoreFluteOneTwoStaff
      \scoreOboeStaff
      \scoreBassoonStaff

      \new StaffGroup \with { systemStartDelimiter = #'SystemStartBrace }
      <<
        \scoreClarinetOneStaff
        \scoreClarinetTwoThreeStaff
      >>
      \scoreBassClarinetStaff

    >> % Woodwind Choir

    % Saxophone choir
    \new StaffGroup
    <<
      % Soprano?
      \scoreAltoSaxOneStaff
      \scoreAltoSaxTwoStaff
      %\scoreAltoSaxOneTwoStaff
      \scoreTenorSaxStaff
      \scoreBariSaxStaff
    >>

    % Brass Choir
    %\scoreGlobalMarksStaff
    \new StaffGroup
    <<
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartBrace }
      <<
        \scoreTrumpetOneStaff
        \scoreTrumpetTwoThreeStaff
      >>
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartBrace }
      <<
        \scoreHornOneTwoStaff
        \scoreHornThreeFourStaff
      >>
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartBrace }
      <<
        \scoreTromboneOneTwoStaff
        \scoreBassTromboneStaff
      >>
      \scoreEuphoniumStaff
      \scoreTubaStaff
      \scoreDoubleBassStaff
    >> % Brass choir

    \scorePianoStaff

    % Percussion
    \scoreTimpaniStaff

    \new StaffGroup
    <<
      \scorePercussionOneStaff
      \scorePercussionTwoStaff
    >>

  >> % Score staves

  \layout {

    \layoutCommon

    \context {
      \Staff
        \override Staff.BarLine.extra-spacing-width = #'(0 . 9)
      %\RemoveEmptyStaves
      %\override VerticalAxisGroup.staff-staff-spacing =
      %#'((basic-distance . 12)
      %   (minimum-distance . 10)
      %   (padding . 1)
      %   (stretchability . 5))
    }

    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 32)
    }

    indent = 1.5\cm
    short-indent = 0.5\cm
    %ragged-last = ##t

  } % layout

  \midi {
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
} % score
