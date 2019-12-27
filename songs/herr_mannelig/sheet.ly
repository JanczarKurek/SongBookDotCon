\header {
  title = "Herr Mannelig"
  composer = "Utwór ludowy"
}
<<
  \relative a' {
    \key g \major
    \time 4/4
    \partial 4
    r8 b | b c b a g4 e8 fis | g a g fis e4 e8 fis | g4 g8 g a4 g8 a | b2 g4 \bar ""  \break
    r8 b | b c b a4~ a16 g e8 fis | g a g fis e4 e8 fis | g4 g a8. a16 g8 a | b2 g4 \bar "" \break
    r8 b | b c b a g g e fis | g a g fis e4 e8 fis | g4 g a g8 a | b2 d4 \bar "" \break 
    r8 b | b c b a g4 e8 fis | g a g fis e4 e8 fis | g a~ a g16 fis d2
  }
  \addlyrics {
    Bi -- | tti -- _  da en mor -- gon innan |  so -- _ len upp -- ran In -- na |fa -- gla -- rna bor -- ja -- de | sjun -- ga
    Bar -- | ga -- tro -- llet fri -- a -- de till | fa -- ger un -- ger -- sven
    Ho -- n | ha -- de en_fel -- ske -- li -- ger | tun -- ga
    Herr | Man -- ne -- lig herr Man -- ne -- lig tro -- | lo -- _ fen i mig
    Fo -- r | det jag  bju -- der sa | ger -- na
    I | ku -- _ nnen val sva -- ra_en -- | dast ja _ el -- ler  ej 
    Om i | vil -- jen el -- ler ej
  }
>>
%{\markup {
  \fill-line {
    \hspace #1
    \column {
      \line{Bittida en morgon innan solen upprann}
      \line{Innan fåglarna började sjunga}
      \line{Bergatrollet friade till fager ungersven}
      \line{Hon hade en falskeliger tunga}
      \vspace #.5
      \line{Herr Mannelig herr Mannelig trolofven i mig}
      \line{För det jag bjuder så gerna}
      \line{I kunnen väl svara endast ja eller nej}
      \line{Om i viljen eller ej:}
      \vspace #.5
      \line{Eder vill jag gifva de gångare tolf}
      \line{Som gå uti rosendelunde}
      \line{Aldrig har det varit någon sadel uppå dem}
      \line{Ej heller betsel uti munnen}
      \vspace #.5
      \line{Eder vill jag gifva de qvarnarna tolf}
      \line{Som stå mellan Tillö och Ternö}
      \line{Stenarna de äro af rödaste gull}
      \line{Och hjulen silfverbeslagna}
    }
    \hspace #2
    \column {
      \line{Eder vill jag gifva ett förgyllande svärd}
      \line{Som klingar utaf femton guldringar}
      \line{Och strida huru I strida vill}
      \line{Stridsplatsen skolen i väl vinna}
      \vspace #.5
      \line{Eder vill jag gifva en skjorta så ny}
      \line{Den bästa I lysten att slita}
      \line{Inte är hon sömnad av nål eller trå}
      \line{Men virkat av silket det hvita}
      \vspace #.5
      \line{Sådana gåfvor jag toge väl emot}
      \line{Om du vore en kristelig qvinna}
      \line{Men nu så är du det värsta bergatroll}
      \line{Af Neckens och djävulens stämma}
      \vspace #.5
      \line{Bergatrollet ut på dörren sprang}
      \line{Hon rister och jämrar sig svåra}
      \line{Hade jag fått den fager ungersven}
      \line{Så hade jag mistat min plåga}
    }
    \hspace #1
  }
}
%}
