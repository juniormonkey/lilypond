#(set-default-paper-size "letter")
#(set-global-staff-size 17.6)

\header{
  title = "Wiggle"
  composer = "Jason Derulo feat. Snoop Dogg"
  arranger = "As sung by Robyn Adele Anderson with Postmodern Jukebox"
}

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.stretchability = #1000
  }
}

\relative {
  \time 2/2
  \clef F
  \key b \minor
  \autoBeamOff
  \compressFullBarRests { R1*8 |

  \repeat volta 2 {

  % Verse

  b,8 b fis4 b8 b fis4 | b cis d2 | e8 \tiny e \normalsize e d e4 e8 fis | d4 b b4. \tiny b8 \normalsize |
  b4 fis8 \tiny fis \normalsize b b fis \tiny fis \normalsize | b4 cis d4. \tiny d8 \normalsize | e8 e e d e \tiny e \normalsize fis4 |

  <<  
    { \voiceTwo d4 b b2 }
    \new Voice { \voiceOne \tiny b'4 fis e8 ( fis4. ) }
  >> \oneVoice

  \bar "||" | | \break

  % Chorus

  fis2 \tiny fis \normalsize | fis4. e8 e fis d \tiny d \normalsize |
  fis2 fis | fis4. e8 e fis d \tiny d \normalsize |
  fis2 fis | fis2 \grace {b8} fis4 fis | fis2 \tiny e4 \normalsize d  | cis2.  b4 \bar "||" | \break

  b'8 b b b fis4 fis8 fis | e4 g fis r |
  R1 | r4 b,8 b b b b b |
  R1 | r4 d8 d d d d d |
  R1 | r4 e8 e e e e e |
  R1 | r4 fis8 fis fis fis fis fis |
  R1*2 |

  } \break

  % Bridge
  b,2 b4 cis | d e b' fis | e d e d | e d e fis |
  b, cis d2 | b4 cis d8 d d d | cis cis cis cis cis cis cis4 | cis d e2 |
  b2 b4 cis | d e b' fis | e d e d | e d e fis |
  b, cis d e | b2. b8 b | ais8 ais ais ais ais ais ais4 | ais b cis2 \bar "||" | | \break

  R1*8 \bar "||" |

  b2 g'4 fis~ | fis d2. | cis2 d4 e4~ | e1  |
  a,2 fis'4 e~ | e cis2. | d2 cis4 b4~ | b2.. b'8 |
  b2 b | a fis | fis \grace {a8} fis2 | a1 |
  fis2 fis | fis fis | cis d | cis1~ | cis1~ | cis1\glissando | fis2. fis4 \bar "||" | | \break

  % Chorus 3
  b8 b b b fis4 fis8 fis | e4 g fis r |
  \repeat volta 2 {
    R1 | r4 b,8 b b b b b |
    R1 | r4 d8 d d d d d |
    R1 | r4 e8 e e e e e |
    R1 | r4 fis8 fis fis fis fis fis |
  }
  \alternative {
    { R1 | r4 fis8 fis fis fis4. | }
    { R1*4 \bar "|." | }
  }

  }
}

\addlyrics {
  \set stanza = #"1. "
  Pat -- ty cake, Pat -- ty cake
  With no hands
%  Got me in this club ma -- king wed -- ding plans
  Got me at the club ma -- king wed -- ding plans
%  If I take pic -- tures while you do your dance _
  If I take your pho -- to -- graph _ while you dance _
  I can make you fa -- mous on In -- sta -- gram

%  Hot damn it
%  Your boo -- ty like two pla -- nets
%  Go ahead, and go ham sam -- mich
%  Whoa, I can't stand it
  Oh _ my!
  That's real -- ly quite a large be -- hind
  Go ahead, and do the bump and grind,
  Whoa, I'm lo -- sing my mind

  'Cause you know what to do with that big fat butt

  Wig -- gle, wig -- gle, wig -- gle
  Wig -- gle, wig -- gle, wig -- gle
  Wig -- gle, wig -- gle, wig -- gle
  Just a lit -- tle bit of...

  Shake what your ma -- ma gave you,
  Mis -- be -- have you, bub -- ble bathe you,
  What they do, O K boo,
  Now what you will and what you want and what you may do
  Com -- plete -- ly se -- par -- a -- ted,
  O -- ver -- sta -- ted, un -- der -- ra -- ted, eve -- ry -- where I've been
  Can you wig -- gle, wig -- gle, wig -- gle for me a -- gain?

  Come on ba -- by
  Turn a -- round 
  You're a star now
  Take a bow
  It's just one thing that's kil -- ling me
  How'd you get that in them jeans? _

  'Cause you know what to do with that big fat butt

  Wig -- gle, wig -- gle, wig -- gle
  Wig -- gle, wig -- gle, wig -- gle
  Wig -- gle, wig -- gle, wig -- gle
  Just a lit -- tle bit of... wig -- gle, wig -- gle!
}

\addlyrics {
  \set stanza = #"2. "
  Ca -- dil -- lac, Ca -- dil -- lac, pop that trunk
  Let's _ take a shot
  Al -- ley oop that dunk _
  Tired of _ wor -- king that _ nine to five?
  Oh ba -- by let me come _ and change your life

%  Hot damn it
%  Your boo -- ty like two pla -- nets
%  Go ahead, and go ham sam -- mich
%  Whoa, I can't stand it
  Oh dear Lord
  Your boo -- ty can't _ be ig -- nored _
  Sor -- ry if I'm un -- to -- ward
  Whoa, you leave _ me floored
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
