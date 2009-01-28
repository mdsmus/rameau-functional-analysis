\version "2.10.33"

\header {
  %title = "20 - Ein' feste Burg ist unser Gott"
  %composer = "J. S. Bach"
  tagline = ""
}


global = {
  \time 4/4
  \key d \major
}


soprano = \relative c'' {
  \partial 4 d4 
  d4 d4 a8 b8 cis4 
  d8 cis8 b4 a4 d4 
}

alto = \relative c'' {
  \partial 4 a4 
  d,4 d8 e8 fis4 g4 
  a4 gis4 e4 b'4 
}

tenor = \relative c' {
  \partial 4 fis4 
  fis4 b,8 cis8 d4 e4 
  fis4. e16 d16 cis4 fis,8 gis8 
}

baixo = \relative c' {
  \partial 4 d8  cis8 
  b4 a8 g8 fis4 e4 
  d4 e4 a,4 b4 
}

texto = {c8 c8 c4 c8 c8 c8 c8 c4 c8 c8 c8 c16 c16 c4 c8 c8}



sonorities =  \lyricmode {
  \set Stanza = "Sonority""1" 
  "2" 
  "3" 
  "4" 
  "5" 
  "6" 
  "7" 
  "8" 
  "9" 
  "10" 
  "11" 
  "12" 
  "13" 
  "14" 
  "15" 
  "16"}

FHmm =  \lyricmode {
  \set stanza = "F Hmm"
  \markup { \roman \italic \bold "A: I"}
  \markup { \roman \italic \bold "vi"}
  "D: vi"
  "vi"
  \markup { \roman \italic \bold "V"}
  "I"
  \markup { \roman \italic \bold "vi"}
  "vii°"
  "I"
  "I"
  "A: V"
  "V"
  "V"
  \markup { \roman \italic \bold "I"}
  \markup { \roman \italic \bold "ii"}
  \markup { \roman \italic \bold "vii°"}
}


Fknn =  \lyricmode {
  \set stanza = "F knn"
  "D: I"
  "I"
  \markup { \roman \italic \bold "A: ii"}
  \markup { \roman \italic \bold "G: I"}
  \markup { \roman \italic \bold "D: vii°"}
  "I"
  \markup { \roman \italic \bold "IV"}
  "vii°"
  "I"
  \markup { \roman \italic \bold "A: I"}
  \markup { \roman \italic \bold "E: V"}
  "A: V"
  "V"
  \markup { \roman \italic \bold "I"}
  "D: vi"
  \markup { \roman \italic \bold "A: vii°"}
}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "D: I"
  "I7+"
  "vi"
  \markup { \roman \italic \bold "viø7"}
  \markup { \roman \italic \bold "vii°"}
  "I"
  \markup { \roman \italic \bold "vi"}
  "vii°"
  "I"
  "I7+"
  \markup { \roman \italic \bold "II"}
  \markup { \roman \italic \bold "II"}
  \markup { \roman \italic \bold "II7"}
  "V"
  "vi"
  \markup { \roman \italic \bold "#iv°"}
}


Tsui =  \lyricmode {
  \set stanza = "Tsui"
  "D: I"
  \markup { \roman \italic \bold "c#: I"}
  \markup { \roman \italic \bold "D: iii"}
  \markup { \roman \italic \bold "I"}
  \markup { \roman \italic \bold "V"}
  "I"
  \markup { \roman \italic \bold "VI"}
  \markup { \roman \italic \bold "vi"}
  \markup { \roman \italic \bold "g: I"}
  \markup { \roman \italic \bold "D: IV"}
  "A: V"
  "V"
  \markup { \roman \italic \bold "a: V"}
  \markup { \roman \italic \bold "A: I"}
  \markup { \roman \italic \bold "ii"}
  \markup { \roman \italic \bold "vii°"}
}


answer = \lyricmode {
  \set stanza = "Answer" 
  "D: I"
  "I"
  "vi"
  "vi"
  "vi"
  "I"
  "I"
  "vii°"
  "I"
  "I"
  "A: V"
  "V"
  "V"
  "D: V"
  "vi"
  "vi"
}


\score { 
  << 
    \new Devnull = "nowhere" \texto  
    <<
      \new StaffGroup <<
        \override StaffGroup.SystemStartBracket #'style = #'line 
        \new Staff {
          <<
            \global
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto" { \voiceTwo \alto }
          >>
        }
        \new Staff {
          <<
            \global
            \clef "bass"
            \new Voice = "tenor" {\voiceOne \tenor }
            \new Voice = "baixo" { \voiceTwo \baixo \bar "|."}
          >>
        }
      >>
    >>
    \new Lyrics \lyricsto "nowhere" \sonorities
    \new Lyrics \lyricsto "nowhere" \FHmm
    \new Lyrics \lyricsto "nowhere" \Fknn
    \new Lyrics \lyricsto "nowhere" \ESPB
    \new Lyrics \lyricsto "nowhere" \Tsui
    \new Lyrics \lyricsto "nowhere" \answer
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #1.0
      \override LyricText #'font-size = #-1
      \override LyricText #'font-family = #'roman
    }
  }
  %% \midi {}
}

\paper {
  paper-width = 16\cm
  line-width = 15\cm
  paper-height = 12\cm
}