\version "2.12.0"

\header {
  title = "20 - Ein' feste Burg ist unser Gott"
  composer = "J. S. Bach"
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
  "16" 
}

EStree =  \lyricmode {
  \set stanza = "ES tree"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  "--"
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ECKnn =  \lyricmode {
  \set stanza = "EC Knn"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  "--"
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ESKnn =  \lyricmode {
  \set stanza = "ES Knn"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm/F#"}
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D7+/C#"}
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bø7/A"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"C#°/G"}
  "D/F#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm/F#"}
  "C#°/E"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D7+"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E"}
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


SPB =  \lyricmode {
  \set stanza = "S PB"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D"}
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bø7"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"C#°"}
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm"}
  "C#°"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E"}
  "E"
  "E7"
  "A"
  "Bm"
  "G#°"
}


ECNet =  \lyricmode {
  \set stanza = "EC Net"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  "--"
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ESNet =  \lyricmode {
  \set stanza = "ES Net"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm/F#"}
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ESBay =  \lyricmode {
  \set stanza = "ES Bay"
  "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm/F#"}
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


ECHmm =  \lyricmode {
  \set stanza = "EC Hmm"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D7+/C#"}
  "Bm"
  "Bm7/A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"C#°/G"}
  "D/F#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"Bm/F#"}
  "C#°/E"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D7+"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E"}
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


answer = \lyricmode {
  \set stanza = "Answer" "D"
  "--"
  "Bm"
  "Bm7/A"
  "--"
  "D/F#"
  "--"
  "C#°/E"
  "D"
  "--"
  "--"
  "E"
  "E7"
  "A"
  "Bm"
  "G#°/B"
}


\score { 
  << \new Devnull = "nowhere" \texto  
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
     \new Lyrics \lyricsto "nowhere" \EStree
     \new Lyrics \lyricsto "nowhere" \ECKnn
     \new Lyrics \lyricsto "nowhere" \ESKnn
     \new Lyrics \lyricsto "nowhere" \ESPB
     \new Lyrics \lyricsto "nowhere" \SPB
     \new Lyrics \lyricsto "nowhere" \ECNet
     \new Lyrics \lyricsto "nowhere" \ESNet
     \new Lyrics \lyricsto "nowhere" \ESBay
     \new Lyrics \lyricsto "nowhere" \ECHmm
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
}
