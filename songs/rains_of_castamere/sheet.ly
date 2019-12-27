\header {
  title = "Rains of Castamere"
  composer = "Don't know"
}

\score {
  <<
    \new Staff {
      \new Voice = "melody" {
        \relative a {
           \key d \minor
           \time 4/4
           \partial 4
           r8 a |
           \repeat volta 2 {f'4. a,8 e'4. a,8 | f'4 g e4. a,8 | g'4 f e d | e2 r \break }
           \alternative {
             { a8 a4 bes8 g4 c,8 c | a'4 bes g4. a8 | bes4 a g f | e2 r4 r8 a,8 \break }
             { a'8 a4 bes8 g4. c,8 | a'4 bes g4. a8 | bes4 a g f | d1 \break }
           }
         }
      }
    }
    \new Lyrics \lyricsto "melody" {
           And |
           <<
           \repeat volta 2 { who are you the | proud lord said that | I must bow so | low \break }
           \alternative {
             { On -- ly a cat of a | diff -- erent coat. That's | all the truth I | know. The \break }
             { But mine are long and | sharp my lord. As | long and sharp as | your's\break }
           }
      >>
    }
  >>
  }