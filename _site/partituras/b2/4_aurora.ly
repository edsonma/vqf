
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "A Taça do Mundo (sem ritmo)"
  subtitle = "Para instrumentos em C"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	d8 
}

letraum = \lyricmode {
 	
	


}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	bes'

}

letradois = \lyricmode { 

	
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes bes {
			\parteum
		}
	}
	\new Lyrics \lyricsto "um" {
        \letraum
    }
	>>
}

\markup { \vspace #2 }

\score {
	<<
	\new Voice = "dois" {
		\transpose bes bes {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
