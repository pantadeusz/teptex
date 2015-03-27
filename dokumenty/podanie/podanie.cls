\NeedsTeXFormat{LaTeX2e}[1994/06/01]
%\LoadClass[11pt,a4paper,draft]{article}
\LoadClass[12pt,a4paper]{article}

\RequirePackage{lastpage}
\RequirePackage{ifthen}
\RequirePackage{datetime}
\RequirePackage[bitstream-charter]{mathdesign}
\RequirePackage[utf8]{inputenc}  % utf8-encoded source
\RequirePackage[T1]{fontenc}



\ddmmyyyydate


\makeatletter

\newcommand{\miejsce      }[1]{\newcommand{\Miejsce}{#1}}
\newcommand{\mojeimie     }[1]{\newcommand{\Mojeimie}{#1}}
\newcommand{\ulica        }[1]{\newcommand{\Ulica}{#1}}
\newcommand{\miasto       }[1]{\newcommand{\Miasto}{#1}}
\newcommand{\telefon      }[1]{\newcommand{\Telefon}{#1}}
\newcommand{\email        }[1]{\newcommand{\Email}{\detokenize{#1}}}
\newcommand{\dostanowisko }[1]{\newcommand{\Dostanowisko}{#1}}
\newcommand{\dotytul      }[1]{\newcommand{\Dotytul}{#1}}
\newcommand{\donazwa      }[1]{\newcommand{\Donazwa}{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{podanie}
{
\begin{minipage}[t][0.17\textheight][t]{0.6\textwidth}
\begin{flushleft}
\sffamily%
\small%
\noindent%
\Mojeimie \\
\noindent ul.~\Ulica\\
\noindent \Miasto\\
\noindent Tel.:~\Telefon\\
\noindent E-mail:~\Email\\
\end{flushleft}
\end{minipage}\\

\hfill
\begin{minipage}[b][0.12\textheight][b]{0.69\textwidth}
\begin{flushleft}
\sffamily
\noindent Do:\newline
\bf \sffamily
\Dostanowisko\newline
\Dotytul~\Donazwa
\end{flushleft}
\end{minipage}


\begin{minipage}[c][0.5\textheight][c]{0.99\textwidth}
\rmfamily
\sloppy%
~\hspace{1cm} %
}
{%
\end{minipage}

\vfill

~\hfill
\begin{minipage}{0.45\textwidth}
\centering
Z wyrazami szacunku\\
\small
\vspace{0.1\textheight}
\Mojeimie\\
\end{minipage}\\
} 



\newcommand{\ps@podanie}{
   \renewcommand{\@oddhead}{\hfill\small \Miejsce, dnia \today}%
%   \renewcommand{\@oddhead}{\hfill\Miejsce, dnia \today, strona  \thepage/\pageref{LastPage}}%
   \renewcommand{\@evenhead}{~}%
%   \renewcommand{\@evenhead}{\thepage/\pageref{LastPage}\hfill}%
   \renewcommand{\@oddfoot}{}%     
   \renewcommand{\@evenfoot}{}%     
}

\pagestyle{podanie}
%\pagestyle{myheadings}
%\markright{\hfill}
%\markboth{X}{y}
% \thepage\ of \pageref{LastPage}


\makeatother

\AtBeginDocument{\begin{podanie}}

\AtEndDocument{\end{podanie}}

%%%%%%%%%%%%%%%%%%%%%  PRZYKLAD  %%%%%%%%%%%%%%%%



