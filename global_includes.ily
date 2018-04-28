\version "2.18.2"

\header {
  title = "Comedy Tonight"
  %dedication = "MUY 452 Orchestration Project"
  composer = "Stephen Sondheim"
  arranger = "arr. Nathan Sprangers"
  copyright = "Spring 2018"
  % Default LilyPond tagline:
  tagline = ##t
}

layoutCommon = {

  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \override Score.BarNumber.direction = #DOWN
  \override Score.BarNumber.self-alignment-X = #CENTER
  \override Score.BarNumber.Y-offset = #-5

}



