\NeedsTeXFormat{LaTeX2e}[1994/06/01]
%\LoadClass[11pt,a4paper,draft]{article}
\LoadClass[12pt,a4paper]{article}

\RequirePackage{lastpage}
\RequirePackage{ifthen}
\RequirePackage{datetime}
\RequirePackage[bitstream-charter]{mathdesign}
\RequirePackage[utf8]{inputenc}  % utf8-encoded source
\RequirePackage[T1]{fontenc}


\RequirePackage{amsmath}         % better mathematics
\RequirePackage{multirow}        % multi row lines in tables now possible
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{graphics}
\RequirePackage{placeins}
\RequirePackage[bitstream-charter]{mathdesign} % outstanding font, BEST
\renewcommand*\ttdefault{txtt}


\ddmmyyyydate



\makeatletter

\newcounter{zadanie}
\newcounter{przyklad}


\newcommand{\Tytul}{}
\newcommand{\ImieINazwisko}{}
\newcommand{\Data}{}

\newcommand{\tytul      }[1]{\renewcommand{\Tytul}{#1}}
\newcommand{\data     }[1]{\renewcommand{\Data}{#1}}
\newcommand{\doTest}[0]{\renewcommand{\ImieINazwisko}{set \thesection\\
Name:\\
Index:
}}
\newcommand{\doLab}[0]{\renewcommand{\Data}{}}


\newcommand{\question}[0]{Question}
\newcommand{\example}[0]{Example}


\newcommand{\setPL}[0]{
\renewcommand{\question}[0]{Zadanie}
\renewcommand{\example}[0]{Przyklad}
\renewcommand{\doTest}[0]{\renewcommand{\ImieINazwisko}{rz. \thesection\\
Imię i nazwisko:\\
Indeks:
}}
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\naglowek}[1]{%
\newpage
\setcounter{section}{#1}%
\setcounter{zadanie}{0}%
{\sc \textbf{\Large \Tytul}}\hfill
\ImieINazwisko \medskip%
}

\newcommand{\zadanie}{%
%\medskip%
\par
\textbf{\refstepcounter{zadanie}\textsc{\question} \thezadanie:\ }}
\newcommand{\przyklad}{%
%\medskip%
\par
\noindent\textbf{\refstepcounter{przyklad}\textsc{\example} \theprzyklad:\ }}
%\newtheorem{twierdzenie}{\textsc{Theorem}}[section]
%\newtheorem{definicja}{\textsc{Definition}}[section]
%\newtheorem{fakt}{\textsc{fact}}[section]
\newcommand{\comment}[1]{}
%\newcommand{\eOdp}{\ $\sharp$}


%\addtolength{\textheight}{4.2cm}
%\addtolength{\textwidth}{3.4cm}
\addtolength{\hoffset}{0.5cm}
%\addtolength{\voffset}{-2.4cm}
\setlength{\parindent}{-1cm}
\setlength{\parskip}{2ex}
%\setlength{\oddsidemargin}{30mm}
%\setlength{\evensidemargin}{30mm}


\pagestyle{plain}


\makeatother


%%%%%%%%%%%%%%%%%%%%%  Interface  %%%%%%%%%%%%%%%%


% \doTest   - ustawia, ze to bedzie test / kolokwium
% \doLab    - ustawia ze to bedzie zestaw zadan na lab/cw
% \naglowek - zaczyna naglowek (nowa strona)
% \zadanie  - zaczyna zadanie
% \przyklad - zaczyna przyklad
% \tytul    - ustawia tytul zb zadan

%%%%%%%%%%%%%%%%%%%%%  PRZYKLAD  %%%%%%%%%%%%%%%%
%
%
%  \documentclass[10pt]{tpexercise}
%
%  \doTest
%  %\doLab
%  \tytul{\example Test {--} Advanced Algorithms 2012}
%
%  \begin{document}
%  \naglowek{0}
%
%  \zadanie Calculate using Knuth's division algorithm (the base of 10):\\
%  \[
%  \frac{2533}{11}
%  \]
%
%
%  \end{document}
%
%
