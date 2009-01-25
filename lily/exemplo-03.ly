\version "2.12.0"

\header {
  title = "55 - Wir Christenleut'"
  composer = "J. S. Bach"
}

global =  {
  \time 4/4 
  \key b \minor
}

soprano = \relative c'' {
  fis fis e d 
  cis2 b4 
}


alto = \relative c'' {
  cis b8 ais b4 b 
  b ais fis
}


tenor = \relative c' {
  e d8 cis b cis d e 
  fis4. e8 dis4
}


baixo = \relative c' {
  ais4 d gis,8 ais b4 
  fis2 b,4
}


texto = {c4 c8 c8 c8 c8 c8 c8 c4 c8 c8 c4 }



sonorities =  \lyricmode {
  \set Stanza = "Sonority""1" 
  "54" 
  "55" 
  "56" 
  "57" 
  "58" 
  "59" 
  "60" 
  "61" 
  "62" 
  "63" 
  "64" }

EStree =  \lyricmode {
  \set stanza = "ES tree"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E!7/B"}
  "--"
  "F#"
  "F#7"
  "B"}


ECKnn =  \lyricmode {
  \set stanza = "EC Knn"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E!7/B"}
  "--"
  "F#"
  "F#7"
  "B"}


ESKnn =  \lyricmode {
  \set stanza = "ES Knn"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E!7/B"}
  "--"
  "F#"
  "F#7"
  "B"}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "F#7/A#"
  "Bm/D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#/C#"}
  "E/G#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A#°"}
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E7/B"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#!"}
  "F#"
  "F#7"
  "B"}


SPB =  \lyricmode {
  \set stanza = "S PB"
  "F#7"
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#"}
  "E"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A#°"}
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E7"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#"}
  "F#"
  "F#7"
  "B"}


ECNet =  \lyricmode {
  \set stanza = "EC Net"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#/A#"}
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  "--"
  "--"
  "F#"
  "F#7"
  "B"}


ESNet =  \lyricmode {
  \set stanza = "ES Net"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  "--"
  "--"
  "F#"
  "F#7"
  "B"}


ESBay =  \lyricmode {
  \set stanza = "ES Bay"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A#°"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"G/B"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E7/B"}
  "--"
  "F#"
  "F#7"
  "B"}


ECHmm =  \lyricmode {
  \set stanza = "EC Hmm"
  "F#7/A#"
  "Bm/D"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"D7+/C#"}
  "E/G#"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"A#°"}
  "Bm"
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"E7/B"}
  \markup { \roman \italic \bold \with-color #(x11-color 'red)"F#"}
  "F#"
  "F#7"
  "B"}


answer = \lyricmode {
  \set stanza = "Answer"
  "F#7/A#"
  "Bm/D"
  "--"
  "E/G#"
  "--"
  "Bm"
  "--"
  "--"
  "F#"
  "F#7"
  "B"}


\score { 
  << 
    \new Devnull = "nowhere" \texto  
    <<
      \new StaffGroup <<
        \override StaffGroup.SystemStartBracket #'style = #'line 
        \new Staff {
          \set Score.currentBarNumber = #9
          \bar ""
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
