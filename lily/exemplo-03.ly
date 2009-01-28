
\version "2.10.33"

\header {
  tagline = ""
}

global =  {
  \time 4/4 
  \key b \minor
}

soprano = \relative c'' {
  fis4 fis e d 
  cis2 b4 
}


alto = \relative c'' {
  cis4 b8 ais b4 b 
  b ais fis
}


tenor = \relative c' {
  e4 d8 cis b cis d e 
  fis4. e8 dis4
}


baixo = \relative c' {
  ais4 d gis,8 ais b4 
  fis2 b,4
}


texto = {c4 c8 c8 c8 c8 c8 c8 c4 c8 c8 c4 }



sonorities =  \lyricmode {
  \set Stanza = "Sonority"
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

FHmm =  \lyricmode {
  \set stanza = "F Hmm"
  "B: V"
  "A: ii"
  "vi"
  "V"
  "iii"
  "ii"
  "V"
  "E: V"
  "B: V"
  "V"
  "I"}


Fknn =  \lyricmode {
  \set stanza = "F knn"
  "B: V"
  "f#: iv"
  "iv"
  "B: IV"
  "IV"
  "G: iii"
  "a#: V"
  "b: i"
  "B: V"
  "V"
  "I"}


ESPB =  \lyricmode {
  \set stanza = "ES PB"
  "V7"
  "i"
  "V"
  "IV"
  "vii°"
  "i"
  "IV7"
  "V"
  "V"
  "V7"
  "I"}


Tsui =  \lyricmode {
  \set stanza = "Tsui"
  "b: V"
  "f#: I"
  "A: IV"
  "IV"
  "b: V"
  "I"
  "i"
  "B: V"
  "V"
  "V"
  "b: I"}


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
  line-width = 16\cm
  paper-height = 12\cm
}