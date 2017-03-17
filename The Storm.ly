\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

#(set-global-staff-size 23)

\header{
  title = "The Storm"
  composer = "Martin Strauss"
  poet = "Emily Dickinson"
}

\score {
  <<

  \new Staff \relative {
    \clef treble
    \key f \major 
    \autoBeamOff

    \time 4/4
    r2 r8 bes'8 a g | bes4 bes8 f d' bes4 r16
    bes | a bes a bes a4. 
    f16 g e8 f | \tuplet 3/2 { g a bes } a a c16 bes a bes a8
    a | \time 3/4 c8. a16 c8. a16 c8. a16 | d2. |
    \time 5/8 d,8 d d d c | \time 3/4 bes2. \bar "||"

    a'8 bes[ c] d c bes a bes a f e d a'[ d] e f r4 | r2. \fermata \bar "||"

    \tuplet 3/2 { bes,8 e, e } bes' e, bes' e, | bes'
    a g16 a f g e8
    d | \time 2/4 cis16 d e f g a c
    bes | \time 3/4 a a a bes a4.

    r16 a | c a d a c a d a c a d a | \time 2/4 c4 r4 \bar "||"

    \time 3/4 b4 g a | d,2. | d4 a' b | g2. |
    bes2. bes2. bes2. bes2. bes2. bes2. \bar "|."
  }

  \addlyrics {
    THERE came a wind like a bu -- gle;
    It qui -- vered through the grass,
    And a green chill up on the heat
    So o -- min -- ous did pass
    We barred the win -- dows and the doors
    As from an em -- erald ghost;
    The doom’s __ e -- lec -- tric moc ca son
    That ve -- ry in -- stant passed.
    On a strange mob of pan -- ting trees,
    And fen -- ces fled a -- way,
    And ri -- vers where the hou -- ses ran
    The li -- ving looked that day.
    The bell with -- in the stee -- ple wild
    The fly -- ing tid -- ings whirled.
    How much can come
    And much can go,
    And yet a -- bide the world!
  }

  \new PianoStaff <<
    \new Staff = "up" {
      % keep staff alive
      s1 * 21 s4.
    }
    \new Staff = "down" {
      \clef bass
      % keep staff alive
      s1 * 21 s4.
    }
  >>

  >>
}