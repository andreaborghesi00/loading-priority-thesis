\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}

\newif\if@compact
\DeclareOption{compact}{\@compacttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage[base]{babel}
\RequirePackage{graphics}

\RequirePackage{geometry}
\if@compact
	\geometry{
		paperheight=\dimexpr\textheight+8mm\relax,
		paperwidth=\dimexpr\textwidth+2mm\relax,
		left=1mm,
		top=4mm,
		right=1mm,
		bottom=4mm
	}
\else
	\geometry{includehead}
	\pagestyle{headings}
\fi

% override text parameters
\renewcommand{\baselinestretch}{1.1}

% front matter
\newcommand{\matrtext}{matr.}

\newcommand{\logo}[1]{\newcommand{\@logo}{#1}}
\newcommand{\matr}[1]{\newcommand{\@matr}{#1}}

\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\begin{center}
		\Large{\textsc{\expandafter{\@title}}}
	\end{center}
	\vskip 0.1in
 
    \begin{center}
        {\large \@author{ }-{ }matr. 952944}
    \end{center}   
    \vskip .6in
}
