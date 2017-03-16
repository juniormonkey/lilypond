#(set-default-paper-size "letter")
#(set-global-staff-size 17.6)

\paper {
  markup-system-spacing = #'((basic-distance . 5)
                             (padding . 5)
                             (stretchability . 30))
  system-system-spacing = #'((basic-distance . 18)
                             (minimum-distance . 16)
                             (padding . 1)
                             (stretchability . 60))
}

\header {
  title = \markup { \epsfile #X #70 #"30cents.eps" }
  composer = "MS"
}

voice = \relative {
  \time 9/8
  \key d \minor

  \partial 2. a'8^\mp[ c] bes gis a e | g2.~ g4. |
  \tuplet 2/3 { d8 e } f g a b4.^\< |
  \tuplet 2/3 { d,8\! e } f g a \tuplet 2/3 {c^\< d,\!} |
  \tuplet 2/3 {e f}  \tuplet 2/3 {g a} \tuplet 2/3 {b c} | \tuplet 2/3 {e d~^\< } d2. | R1*9/8\! |
  \tuplet 2/3 {r8^\p b^"s.v."} \tuplet 2/3 {b b} b b b | b4 b4 gis4 b4.~ | b4.\fermata \bar "|."
}

text = \lyricmode {
  Thin -- king hard a -- bout you
  I got on -- to the bus
  and paid thir -- ty cents fare
  and asked the dri -- ver for two trans -- fers
  be -- fore dis -- cove -- ring that I was a -- lone
}

upper = \relative c'' {
  \clef treble
  \time 9/8
  \key d \minor

  r4. \tuplet 4/3 {a,8 c e a} | r4. \tuplet 2/3 {d,8 g} bes4. |
  \tuplet 2/3 {a8 <f d a>} r4. <b g>8 d, b |
  \tuplet 2/3 {a'8 <f d a>} r4. \tuplet 2/3 {c'8 <a f d>} |
  \tuplet 2/3 {a8 <f d a>} \tuplet 2/3 {r8 <b, d g b>~} <b d g b>4. |
  <<
    { \tuplet 2/3 {c'8 d~} d2. | }
    \\
    { <d, f a>4.\mp\<~ \tuplet 2/3 { <d f a>8 <d fis b>~ } <d fis b>4.\! | }
  >>
  <e gis b>2.\pp ~ <e gis b>4. ~ | <e gis b>2. ~ <e gis b>4. ~ | <e gis b>2. ~ <e gis b>4. ~ |  <e gis b>4.\fermata \bar "|."
}

lower = \relative c {
  \clef bass
  \time 9/8
  \key d \minor

  \tuplet 4/3 {a,8 a' c e } r4. | \tuplet 4/3 {g,8 d' g bes} r2. |
  r4. \tuplet 2/3 {d,8 a} g4. |
  r4. \tuplet 2/3 {d'8 a} d,4. |
  r4. \tuplet 2/3 {d'8 g,} \tuplet 2/3 {a g} |
  d4.~ \tuplet 2/3 {d8 b~} b4. | 
  \repeat unfold 3 { <e e,>2. ~ <e e,>4. ~ | } <e e,>4._\fermata \bar "|."
}

\score {

  <<
    \new Voice = "voice" { \autoBeamOff \voice }
    \new Lyrics \lyricsto voice \text
    \new PianoStaff <<
      \new Staff = "
per" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.