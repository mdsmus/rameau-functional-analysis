\version "2.12.0"

\header {
  title = "32 - Nun danket alle Gott"
  composer = "J. S. Bach"
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

EStree =  \lyricmode {
  \set stanza = "ES tree"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ECKnn =  \lyricmode {
  \set stanza = "EC Knn"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"--"}
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ESKnn =  \lyricmode {
  \set stanza = "ES Knn"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "A"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A/B"}
  "A/C#"
  "A"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D/E"}
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A!"}
}


SPB =  \lyricmode {
  \set stanza = "S PB"
  "A"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A"}
  "A"
  "A"
  "D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D"}
  "D"
  "D"
  "A"
  "F#m"
  "E7"
  "A"
  "E"
  "E7"
  "A"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A"}
}


ECNet =  \lyricmode {
  \set stanza = "EC Net"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ESNet =  \lyricmode {
  \set stanza = "ES Net"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ESBay =  \lyricmode {
  \set stanza = "ES Bay"
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


ECHmm =  \lyricmode {
  \set stanza = "EC Hmm"
  "A"
  "A"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A/B"}
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
}


answer = \lyricmode {
  \set stanza = "Answer" 
  "A"
  "A"
  "--"
  "A/C#"
  "A"
  "D"
  "--"
  "D/F#"
  "D"
  "A"
  "F#m/A"
  "E7/G#"
  "A"
  "E"
  "E7/D"
  "A/C#"
  "A"
  "--"
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
    >>\new Lyrics \lyricsto "nowhere" \sonorities
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
