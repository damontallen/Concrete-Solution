%=====================================================================
% jhwhw.cls
% Provide jhwhw.cls class
%=====================================================================

%=====================================================================
% Identification
%=====================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{datest}[2015/01/21 Damon Allen's Test Class]

\LoadClass[letterpaper, 12pt]{report}

\RequirePackage{fancyhdr}
\RequirePackage[top=1in,bottom=1in,left=0.5in,right=0.5in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{empheq}
\RequirePackage{ifthen}


%=====================================================================
% Commands
%=====================================================================


  %\setlength{\headheight}{15pt}
  %\lhead{\@title}\chead{\today}\rhead{\@author \vrule height 0 pt depth 0.4 pt width 2.25 in}
  \lfoot{}\cfoot{\thepage}\rfoot{\@author}
  \pagestyle{fancy}
  \setlength{\footskip}{1.45in}
  \setlength{\textheight}{565pt}
  %\lfoot{}\cfoot{\thepage}\rfoot{}

\ifx\pdfoutput\undefined                         %LaTeX
  \RequirePackage[ps2pdf,bookmarks=true]{hyperref}
  \hypersetup{ %
%    pdfcourse   = {\@course},
    pdfauthor   = {\@author},
    pdftitle    = {\@title},
    pdfcreator  = {LaTeX with hyperref package},
    pdfproducer = {dvips + ps2pdf}
  }
\else                                            %PDFLaTeX
  \RequirePackage[pdftex,bookmarks=true]{hyperref}
  \hypersetup{ %
%    pdfcourse   = {\@course},
    pdfauthor   = {\@author},    
    pdftitle    = {\@title},
    pdfcreator  = {LaTeX with hyperref package},
    pdfproducer = {dvips + ps2pdf}
  }
\pdfadjustspacing=1
\fi

% Set up counters for problems and subsections

\newcounter{ProblemNum}
\newcounter{SubProblemNum}[ProblemNum]
\newcounter{ExtraProblemNum}

%\newcommand*{\soln}[1]{\subsubsection*{#1}}
%\newcommand*{\course}[1]{\; #1}

\renewcommand{\theProblemNum}{\arabic{ProblemNum}}
\renewcommand{\theSubProblemNum}{\alph{SubProblemNum}}
\renewcommand{\theExtraProblemNum}{\arabic{ExtraProblemNum}}

\newcommand*{\important}[1]{\emph{\underline{\textbf{#1}}}}
\newcommand*{\problem}[1]{\stepcounter{ProblemNum} %
   \textbf{\theProblemNum.} #1 \vspace{0.92in}}
   
\newcommand*{\extraproblem}[1]{\stepcounter{ExtraProblemNum} %
   \textbf{\theExtraProblemNum. }\emph{(1 point) } #1 \vspace{1.75in}}

\newcommand*{\saproblem}[1]{\stepcounter{ProblemNum} %
    \textbf{\theProblemNum.} #1 }
   
\newcommand*{\mcproblem}[1]{\stepcounter{ProblemNum} %
   \textbf{\theProblemNum.} #1 }
\renewcommand*{\part}{\stepcounter{SubProblemNum} %
  \theSubProblemNum) } 
  
\newcommand*{\answer}[1]{#1}% \vspace{0.0625in}}  
   
%\newcommand*{\soln}[1]{\subsubsection*{#1}}
\newcommand*{\instruction}[3]{\textbf{For problems #1 - #2:} #3}

\newcommand*{\tightlist}{\itemsep1pt \parskip0pt \parsep0pt}

\newenvironment{attachedpage}[2]{
\begin{list}{}{
\setlength{\footskip}{#1}
\setlength{\textheight}{#2}
}
\item[]}{\end{list}}

\newenvironment{problemlist}[1]{
\begin{list}{}{
\setlength{\leftmargin}{#1}%
\setlength{\parindent}{-#1}
}
\item[]}{\end{list}}

%\newcommand*{\soln}[1]{\subsubsection*{#1}}
%\newcommand*{\instruction}{\soln{Instructions}}
%%\newcommand*{\anyinstruction}[1]{\subsubsection*{#1}}
%%\newcommand*{\instructions}\anyinstruction{Instructions \; #1}}
%\newcommand*{\anyproblem}[1]{\subsubsection*{#1}}
%\newcommand*{\problem}[1]{\stepcounter{ProblemNum}
%\anyproblem{\theProblemNum. \; #1}}

\renewcommand{\theenumi}{(\alph{enumi})}
\renewcommand{\labelenumi}{\theenumi}
\renewcommand{\theenumii}{\roman{enumii}}

% \def\problemmark{}

% % Typesetting problems

% % \newcommand*{\prob}[1]{\newpage \noindent \textbf{\Large #1}}
% % \newcommand*{\problem}[1]{\stepcounter{ProblemNum} \prob{Problem %
% % \theProblemNum.}}
% % \newcommand*{\soln}[1]{\\ \noindent \textbf{\Large #1}}
% % \newcommand*{\solution}{\soln{Solution}}
% % \renewcommand*{\part}{\\ \noindent \stepcounter{SubProblemNum} %
% % \textbf{\Large Part (\theSubProblemNum)}}

% \newcommand\problem{\@startsection{problem}{1}{\z@}%
%                      {-3.25ex \@plus -1ex \@minus -.2ex}%
%                      {1.5ex \@plus .2ex}%
%                      {\normalfont\large\bfseries}}


