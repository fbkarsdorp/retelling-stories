\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{thesis}

\LoadClass{book}

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{14}%
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalbaselineskip=14pt
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt{12}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xipt{15}}
\renewcommand\Large{\@setfontsize\Large\@xiipt{16}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xivpt{18}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{30}}
\renewcommand\Huge{\@setfontsize\Huge{24}{36}}

\RequirePackage{roboto}
\RequirePackage[osf,sc]{mathpazo}
\RequirePackage[scaled=0.85]{beramono}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{textcomp}

% outer=1in,inner=0.667in,top=0.833in,bottom=1.166in
\RequirePackage[twoside,
    papersize={6in,9in},outer=0.875in,inner=0.75in,top=0.835in,bottom=0.985in]{geometry}

\RequirePackage{emptypage}
\RequirePackage{fancyhdr}

\newcommand{\uppersf}{%
    \scriptsize\sffamily\lsstyle\MakeUppercase
}

\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\fancyhead{}

\renewcommand\frontmatter{%
  \if@openright%
    \cleardoublepage%
  \else%
    \clearpage%
  \fi%
  \@mainmatterfalse%
  \pagenumbering{roman}%
  %\pagestyle{plain}%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt} % remove lines as well
  \renewcommand{\footrulewidth}{0pt}
  \fancyhead[C]{\uppersf{\thepage\hspace{0.5cm}\textbullet\hspace{0.5cm}\leftmark}}  
}
\makeatother

\fancypagestyle{plain}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{1pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyfoot[C]{\footnotesize\uppersf{\thepage}}
}

\makeatletter 
\renewcommand\mainmatter{%
  \if@openright%
    \cleardoublepage%
  \else%
    \clearpage%
  \fi%
  \@mainmattertrue%
  \pagenumbering{arabic}%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt} % remove lines as well
  \renewcommand{\footrulewidth}{0pt}
  \fancyhead[CE]{\uppersf{\thepage\hspace{0.5cm}\textbullet\hspace{0.5cm}\leftmark}}
  \fancyhead[CO]{\uppersf{\rightmark\hspace{0.5cm}\textbullet\hspace{0.5cm}\thepage}}
}
\makeatother

\makeatletter
\renewcommand\backmatter{%
  \if@openright%
    \cleardoublepage%
  \else%
    \clearpage%
  \fi%
  \@mainmatterfalse%
}

\RequirePackage{titletoc}
\titlecontents{chapter}[1.44em]{\filcenter}%\vspace{1cm}
  {{\contentslabel[\thecontentslabel.]{1.25em}}}%numbered
  {}
  {\\{\centering\thecontentspage}}[\medskip]%

\RequirePackage{enumerate,enumitem}
\setlist[description]{font=\normalfont\itshape\space}

\RequirePackage{epigraph}
\setlength\epigraphrule{0pt}
\setlength\epigraphwidth{0.7\textwidth}
\renewcommand{\epigraphflush}{center}
\renewcommand{\sourceflush}{center}

\newcommand{\prechapterprecis}{%
  %\vspace*{-2\baselineskip}%
  \begin{quote}\normalfont\itshape}
\newcommand{\postchapterprecis}{\end{quote}}

\newcommand{\chapterprecishere}[3]{%
  \prechapterprecis #1\center\textup{\textls{\footnotesize\MakeUppercase{#2}}}, #3\postchapterprecis}

\RequirePackage[algoruled,noend]{algorithm2e}
\renewcommand\AlCapFnt{\normalfont}


\usepackage{caption}
\captionsetup{font=small}

\renewenvironment{quote}
  {\list{}{\rightmargin\leftmargin}%
   \small%
   \item\relax}
  {\endlist}

\RequirePackage[kerning=true, tracking=true, letterspace=180]{microtype}
\RequirePackage{setspace}
\RequirePackage[center,explicit]{titlesec}
\titleformat{\chapter}[display]{\LARGE\sffamily\lsstyle\filcenter}{\large CHAPTER \thechapter}{2.5\baselineskip}{\parbox[t][][t]{0.75\textwidth} {\setstretch{1.2}\filcenter\MakeUppercase{#1}}}
\titleformat{name=\chapter,numberless}[display]{\large\sffamily\lsstyle\filcenter}{\MakeUppercase{#1}}{2.5\baselineskip}{}
\titleformat{\section}{\large\sffamily\lsstyle\filcenter}{\thesection}{4pt}{\MakeUppercase{#1}}
\titleformat{\subsection}{\lsstyle\filcenter}{\oldstylenums\thesubsection}{4pt}{\MakeUppercase{#1}}
\titleformat{\subsubsection}{\it\filcenter}{\oldstylenums\thesubsubsection}{4pt}{#1}
\titleformat{\paragraph}[runin]{\it}{}{0pt}{#1}

\titlespacing{\chapter}{0pt}{0pt}{2.2\baselineskip}
\titlespacing{name=\chapter,numberless}{0pt}{0pt}{0pt}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlespacing*{\subsection}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus.2ex}


\setcounter{secnumdepth}{3}

\endinput