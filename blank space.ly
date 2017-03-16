#(set-default-paper-size "letter")
#(set-global-staff-size 19.6)

\header{
  title = "Blank Space"
  composer = "Taylor Swift"
  arranger = "As sung by Ariana Savalas with Postmodern Jukebox"
}

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.stretchability = #1000
  }
}

\relative {
  \time 12/8
  \clef G
  \key es \major
  \autoBeamOff
  \compressFullBarRests { 

  \repeat volta 2 {

% [Verse]
r4. <<  
  { \voiceTwo es'4  c8 }
  \new Voice { \autoBeamOff \voiceOne \tiny bes'8 g es }
>> \oneVoice es8 \tiny es \normalsize r <<
  { \voiceOne es8 c es~ | es }
  \new Voice { \autoBeamOff \voiceTwo \tiny d8 f bes,~ | bes \normalsize }
>> \oneVoice r4 g' g8  g f es  f es f |
c4.  es8 c4  es8 c4  r8 es c  | es8 r4  g8 g g  g f es \tiny f4 f8 \normalsize |
as,4 es'8  es4.  bes8 bes g'  g4. |  as,4 es'8  es4.  bes8 bes g'  g4. |
as,4 es'8  es4 \tiny bes8 \normalsize  bes4 g'8 g4 ( es8 ) (| f2.~ ) f4. \tiny es4 ( c8 ) |

es4 \normalsize r8  \tiny es8 \normalsize es8 c8  es \tiny es \normalsize r  r es c  | es4. r8 << { \voiceTwo g } \new Voice { \voiceOne \tiny bes \normalsize } >> \oneVoice g  g f f  es f f |
c4. r8 es c  es es r  es c4 | es4.  r8 g g  g4 f8  f es es |
as,4 es'8  es4.  bes4 g'8  g4. | as,8 as es'  es4 bes8  bes g' g~  g4. |
as,8 \tiny as \normalsize es'  es4 bes8  bes4 g'8  g4. | \improvisationOn g8 g g g g g g g g g g g \improvisationOff  \bar "||" |

% [Pre-Chorus]
r4 es16 es  es es es8 es  f4 g8 ( g4. ) | r4 es16 es  es es es4  g d8  d4 ( es8 ) |
r4 es16 es  es es es8 es  f4 g8 r4. | r4 es16 es  es4 es8  g4 es8  bes4. |
r4 bes'16 bes  bes4 as8  g4 as8  g4 f8 | r4. f8 f f  as4 g8  f4. |

  }

\alternative {
  { 
    r4 f8  f4 f16 es  f4 f8  f ( es ) b~ | b4. r4. r4 b8 b b bes |
    bes4. r4. r2. | R1. | \break
  }
  { 
    % ?
    r4 bes'16 bes  bes4 as8  g4 as8  g4 f8 | r4. r8 as g as4. as4 bes8 ( \bar "||" | 
% [Chorus]
    g) r es  es es es  f4 g8 r4. | r4 es8  es4 es8  g4 es8  es4. |
  }
}

r4 es8  es4 es8  f4 g8 r4. | r4 es8~  es es es  g4 es8  bes4. |
r8 bes bes  bes'4 as8  g4 as8  g4 f8 | r4.  f8 f f  as4 g8  f4. |
r4 f8  f f es  f4 f8~  f4 f8~ | f8 ( es ) b~ b4. r4 bes8  g' es es |
es4. es4.  d8 d4  c4.  | bes  as8 as4  as4. g |
r es'4.  d8 d4  c8 c4  | bes8 bes4  as8 as4  as4. g |
r es'  d8 d4  c4.  | bes  as8 as4  as4. g |
r es'4.  d8 d4  c8 c4  | as'8 as4  as8 as4  as4. g8 ( bes4~ ) \bar "||" |

% [Chorus 3]
\key ges \major
bes1.~ | bes8 ges ges  ges ges ges  bes4 f8  ges4. | 
\tuplet 4/3 {r4 ges8 es}  \tuplet 4/3 {ges ges ges ges}  as4 bes8 r4. | r8 ges ges ges4 ges8 bes4 ges8 des4. |
r4 des16 des des'4 ces8~ ces bes ces bes4 as8 | r4. as8 as as ces4 bes8 as4. |
r4 as8 as as as as4 as8~ as4 as8~ | as8 ( ges ) d~ d4. r4 des8 bes' ges des |
ges1. ( | f2. ) r4 bes8~ bes8 ges4 | r8 as4  as8 ( ges4~ ) ges2.~ | 
ges1. | R1.*2 | R1.\fermataMarkup \bar "|." |

  }
}


\addlyrics {
  \set stanza = #"1. "
Nice to meet you
Where you been?
I could show you in -- cre -- di -- ble things
Ma -- gic, mad -- ness, hea -- ven, sin
Saw you there and I thought _ _ oh my Lord
Look at that face, you look like my next mis -- take
Love's a game, _ wan -- na play? _ _
%New _ _ mo -- ney, suit and tie
_ Fin -- ger waves, _ cat _ -- eyes
I can read you like a ma -- ga -- zine
Ain't it fun -- ny ru -- mors fly
And I know you heard ab -- out me
So hey, let's be friends
I'm dying to see how this one ends
Grab _ your pass -- port and my hand
I could make the shy girls brave for a week _ -- end

% [Chorus 1]
So it's gon -- na be for -- e -- ver
Or it's gon -- na go down in flames
You can tell me when it's o -- ver
If the high was worth the pain
Got a long list of ex -- lo -- vers
They'll tell you I'm in -- sane
But I got a blank space ba -- by
And I'll write your name

% [Pre-Chorus 2]
Cause you know I love the play -- ers
And you love the game

% [Chorus 2]
We're young and we're reck -- less
We'll take this way too far 
It'll leave you breath -- less
Or with a nas -- ty scar
Got a long list of ex -- lo -- vers
They'll tell you I'm in -- sane
But I got a blank space ba -- by
And I'll write your name

% [Bridge]
Boys on -- ly want love if it's tor -- ture
Don't say I did -- n't say I did -- n't warn you
Boys on -- ly want love if it's tor -- ture
Don't say I did -- n't say I did -- n't warn you

% [Chorus 3]
Oh you're gon -- na go down in flames
You can tell me when we're o -- ver
If the high was worth the pain
Got a long list of ex -- lo -- vers
They'll tell you I'm in -- sane
But I got a blank space ba -- by
And I'll write your name

I'll write your name
}


\addlyrics {
  \set stanza = #"2. "
% [Verse 2]
%Cher -- ry lips _
%Crys -- tal skies
Pearl _ studs, _
silk bow tie,
I could show you in -- cre -- di -- ble things
Sto -- len kis -- ses, pret -- ty lies _
You're the king ba -- by I'm your queen
Find out what _ you want
Be that guy _ for a month
But the worst is yet to come
Oh no
Screa -- ming, _ cry -- ing, per -- fect storms
I could make _ all the ta -- bles turn
Rose _ gar -- den filled with thorns
Keep you se -- cond gues -- sing like oh my god
Who is he? _ I get drunk on jea -- lou -- sy
But you'll come back each time you leave
Cause dar -- ling I'm a night -- mare dressed like a day -- dream
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
