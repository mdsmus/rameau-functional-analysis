\header {
  tagline = ""
}

texto = {c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 }

%  A: I    d   c#   c#   e 
%     iiø  b   d    g    b 
%     vii° d   d    b    b 
%     I    e   a    c#   c# 
%     I    c#  a    g#   f# 
%     ii   f#  d    b    b 
%     vii° d   d    d    g# 
%  C: V    g   g    d    g 
%     V    a   d    d    b 
%     I    c   e    e    c 
%     V    b   g    g    g 
%     V    f   d    f    g 
%     V    g   g    d    b 



Original =  \lyricmode {
\set stanza = "Original"
\markup{\roman \italic \bold \with-color #(x11-color 'red)"A: I"}
\markup{\roman \italic \bold \with-color #(x11-color 'red)"iiø"}
\markup{\roman \italic \bold \with-color #(x11-color 'red)"vii°"}
"I"
\markup{\roman \italic \bold \with-color #(x11-color 'red)"I"}
"ii"
"vii°"
"C:V"
"V"
"I"
"V"
"V"
"V"
}

Analise =  \lyricmode {
\set stanza = "HMM Analysis"
\markup{\roman \italic \bold \with-color #(x11-color 'red)"A: I"}
\markup{\roman \italic \bold \with-color #(x11-color 'red)"iiø"}
\markup{\roman \italic \bold \with-color #(x11-color 'red)"vii°"}
"I"
"vi"
"ii"
"vii°"
"C:V"
"V"
"I"
"V"
"V"
"G: I"}


Gabarito =  \lyricmode {
\set stanza = "Correct analysis"
"A: ?"
"vii°"
"iiø"
"I"
"vi"
"ii"
"vii°"
"C:V"
"V"
"I"
"V"
"V"
"V"
}


\score { << \new Devnull = "nowhere" \texto  <<
    \new Staff {  
      <<
        \new Voice { \voiceOne \relative c'' {
d 
b 
d 
e 
cis
fis
d 
g, 
a 
c 
b 
f 
g 
}}
        \new Voice { \voiceTwo \relative c'  {
cis
d 
d 
a 
a 
d 
d 
g 
d 
e 
g 
d 
g 
}}
      >>
    }
    \new Staff { 
      \clef "bass" 
      <<
        \new Voice { \voiceOne \relative c'  {
cis
g
b   
cis
gis 
b   
d   
d   
d   
e   
g   
f   
d   
}}
        \new Voice { \voiceTwo \relative c   {
e 
b 
b 
cis
fis
b 
gis
g 
b 
c 
g 
g 
b 
}}
      >>
    }
  >>
\new Lyrics \lyricsto "nowhere" \Original
\new Lyrics \lyricsto "nowhere" \Analise
\new Lyrics \lyricsto "nowhere" \Gabarito
 >>
  \layout {
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #1.0
    }
  }
  \midi {}
}


\paper {
  paper-width = 20\cm
  line-width = 16\cm
  paper-height = 12\cm
}
