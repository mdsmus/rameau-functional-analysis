\version "2.10.33"

\header {
  %title = "32 - Nun danket alle Gott"
  %composer = "J. S. Bach"
  tagline = ""
}


global = {
  \time 4/4
  \key a \major
}


soprano = \relative c'' {
  \partial 4 e4 
  e4 e4 fis4 fis4 
  e2 r4 cis4 
  d4 cis4 b4 cis8. d16 
}

alto = \relative c'' {
  \partial 4 a4 
  a4 a4 a4 a4 
  a2 r4 a4 
  b4 a4 gis4 a4 
}

tenor = \relative c' {
  \partial 4 cis4 
  cis4 cis4 d4 d4 
  cis2 r4 fis4 
  e4 e4 e4 e4 
}

baixo = \relative c {
  \partial 4 a4 
  a'8 b8 cis8 a8 d,8 e8 fis8 d8 
  a'2 r4 a4 
  gis4 a4 e8 d8 cis8 a8 
}

texto = {c4 c8 c8 c8 c8 c8 c8 c8 c8 c2 r4 c4 c4 c4 c8 c8 c8 c16 c16}



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
  "16" 
  "17" 
  "18" 
}

FHmm =  \lyricmode {
  \set stanza = "F Hmm"
  "A: I"
  "I"
  "I"
  "I"
  "D: V"
  "I"
  "I"
  "I"
  "I"
  "A: I"
  "vi"
  "V"
  "I"
  "V"
  "V"
  "I"
  "I"
  "I"
}


Fknn =  \lyricmode {
  \set stanza = "F knn"
  "A: I"
  "I"
  "I"
  "I"
  "D: V"
  "I"
  "I"
  "I"
  "I"
  "V"
  "A: vi"
  "V"
  "I"
  "V"
  "a: V"
  "E: IV"
  "A: I"
  "d: i"
}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "A: I"
  "I"
  "I"
  "I"
  "I"
  "IV"
  "IV"
  "IV"
  "IV"
  "I"
  "vi"
  "V7"
  "I"
  "V"
  "V7"
  "I"
  "I"
  "I"
}


Tsui =  \lyricmode {
  \set stanza = "Tsui"
  "A: V"
  "D: V"
  "IV"
  "V"
  "V"
  "I"
  "A: V"
  "I"
  "D: I"
  "I"
  "A: i"
  "V"
  "I"
  "V"
  "V"
  "I"
  "I"
  "I"
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
            \new Voice = "baixo" { \voiceTwo \baixo \bar "||"}
          >>
        }
      >>
    >>
    \new Lyrics \lyricsto "nowhere" \sonorities
    \new Lyrics \lyricsto "nowhere" \FHmm
    \new Lyrics \lyricsto "nowhere" \Fknn
    \new Lyrics \lyricsto "nowhere" \ESPB
    \new Lyrics \lyricsto "nowhere" \Tsui
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
  paper-width = 15\cm
  line-width = 14\cm
  paper-height = 12\cm
}