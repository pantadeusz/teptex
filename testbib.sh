#!/bin/bash

echo '
\documentclass[10pt]{article}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}  % utf8-encoded source
\usepackage[bitstream-charter]{mathdesign} % outstanding font, BEST
%\usepackage{natbib}
\begin{document}
\section{Sekcja testowa}
' > cytaty.tex


for i in `cat bibliografia.bib | grep @ | sed s/@.*[{]// | sed s/[},]//`
do
echo "\\cite{$i}" >> cytaty.tex
done

echo '

\bibliographystyle{abbrv}
%\bibliographystyle{amsalpha}
\bibliography{bibliografia}{}

\end{document}

' >> cytaty.tex

latexmk -pdf cytaty.tex 
latexmk -pdf cytaty.tex 

rm -f cytaty.aux  cytaty.bbl  cytaty.blg  cytaty.fdb_latexmk  cytaty.log  cytaty.tex

