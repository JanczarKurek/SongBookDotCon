\header {
  title = "Ich was ein chint"
  composer = "Utwór ludowy"
}
<<
  \relative a' {
    \key c \major
    \time 4/4
    \partial 4
    a4 | a g f e | g g a2 | a4 g f e | g2 a |
    a4 g f e | g2 a | a4 g f e | g2 a | \bar "" \break
    a1 | g2 g | a1 |\repeat volta 2 { d,4 d8 d c4 e | g g f4. (g8) |
    a4 g f e | d c d2 }
  }
  \addlyrics {
    Ich | was ein chint so | wol -- ge -- tan | vir -- go dum flo -- | re -- bam
    Du brist mich diu | werlt al | om -- ni -- bus pla -- | ce -- bam |
    Hoy | et o -- | e! |
    ma -- le -- di -- can -- tur | thy -- li -- e | iux -- ta vi -- am | po -- si -- te
  }
>>
\markup {
  \fill-line {
    \hspace #1
    \column {
      \line{Ich was ein chint so wolgetan}
      \line{virgo dum florebam;}
      \line{do brist mich diu werlt al,}
      \line{omnibus placebam.}
      \vspace #.5
      \line{Hoy et oe!}
      \line{maledicantur thylie,}
      \line{iuxta viam posite.}
      \vspace #1.5
      \line{Ia wolde ih an die wisen gan}
      \line{flores adunare,}
      \line{do wolde mich ein ungetan}
      \line{ibi deflorare.}
      \vspace #.5
      \line{Er nam mich bi der wizen hant}
      \line{sed non indicenter,}
      \line{er wist mich diu wise lanch}
      \line{valde fraudulenter.}
      \vspace #.5
      \line{Er graif mir an daz wize gewant}
      \line{valde indecenter,}
      \line{er fuorte mich bi der hant}
      \line{multum violenter.}
    }
    \hspace #2
    \column {
      \line{Er sprach: vrowe ge vir baz!}
      \line{nemus est remotum.}
      \line{dirre wech der habe haz!}
      \line{planxi et hoc totum.}
      \vspace #.5
      \line{Iz stat ein linde wolgetan}
      \line{non procul a via,}
      \line{da hab ich mine herphe lan}
      \line{timpanum cum lyra}
      \vspace #.5
      \line{Do er zu der linden chom,}
      \line{dixit sedeamus!}
      \line{diu minne twanch ser den man}
      \line{ludum faciamus!}
      \vspace #.5
      \line{Et graif mir an den wizen lip}
      \line{non absque timore.}
      \line{er sprah: ich mache dich ein wip,}
      \line{dulcis es cum ore}
      \vspace #.5
      \line{er warf mir uof dez hemdelin}
      \line{corpore detecta,}
      \line{er rante mir in daz purgelin}
      \line{cuspide erecta.}
      \vspace #.5
      \line{Er nam den chocher unde den bogen:}
      \line{bene venebatur.}
      \line{der selbe hete mich betrogen:}
      \line{ludus compleatur!}
    }
    \hspace #1
  }
}
