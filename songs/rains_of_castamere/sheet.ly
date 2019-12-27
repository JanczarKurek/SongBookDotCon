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
             { a'8 a4 bes8 g4. c,8 | a'4 bes g4. a8 | bes4 a g f | d1 }
           }
           r2 r4 a | e'8 f d2 f4 | f8 e a,2 r8 a | f'8 f d2 f4 | f8 e4. r4 r8 a,8 |
           e' f d2 a'4 | \break a g d4. f8 | f4. d8 e4. c8 | d2 r4 a4 | 
           e'8 f d2 a'4 | a g d4. f8 | f4. d8 a' g e f | d2
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
           \new Lyrics {
               \set associatedVoice = "melody"
               coat of gold the | coat of red. The | li -- on still has | claws.
           }
      >>
      And | so he spoke. And | so he spoke. That | lord of ca -- sta -- | me -- re. Yes | now the rains weep |
      o'er his hall, with | no one there to | hear. Yes | now the rains weep | o'er  his hall, and | not | a soul __ _ _ to | hear.
    }
  >>
}

\markup {
  \fill-line {
    \hspace #1
    \column {
      \line{And who are you, the proud lord said,}
      \line{That I must bow so low?}
      \line{Only a cat of a different coat,}
      \line{That's all the truth I know.}
      \vspace #.5
      \line{In a coat of gold or a coat of red,}
      \line{A lion still has claws,}
      \line{And mine are long and sharp, my lord,}
      \line{As long and sharp as yours.}
      \vspace #.5
      \line{And so he spoke, and so he spoke,}
      \line{That lord of Castamere,}
      \line{But now the rains weep o'er his hall,}
      \line{With no one there to hear.}
      \vspace #.5
      \line{Yes now the rains weep o'er his hall,}
      \line{And not a soul to hear.}
    }
    \hspace #2
    \column {
      \line{A to jest żart, rzekł dumny lord}
      \line{Ja kłaniac ci się mam?}
      \line{Na mych sztandarach też jest kot}
      \line{Maść inna, zwierz - ten sam.}
      \vspace #.5
      \line{Czy złoty czy szkarłatny włos}
      \line{Jest pazur, jest i kieł}
      \line{Tak samo ostry jak i twój}
      \line{Więc daruj sobie śmiech}
      \vspace #.5
      \line{Ach głupstwa plótł, ach głupstwa plótł}
      \line{Pan zamku Castamere}
      \line{Bajania teraz plecie lud}
      \line{Na zamku zaś ulewa}
      \vspace #.5
      \line{Na zamku słychać kroków huk}
      \line{Kłamałem, to deszcz śpiewa}
    }
    \hspace #1
  }
}
