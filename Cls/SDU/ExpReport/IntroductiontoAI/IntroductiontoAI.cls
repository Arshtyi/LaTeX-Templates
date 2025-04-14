\ProvidesClass{IntroductiontoAI}[Standard LaTeX Template for Experiment Report in SDU Course Introduction to AI]
\NeedsTeXFormat{LaTeX2e}[1995/12/01]

% Define document metadata token commands
\newcommand*\sdu@tokens@college{}
\newcommand*\sdu@tokens@course{}
\newcommand*\sdu@tokens@studentId{}
\newcommand*\sdu@tokens@name{}
\newcommand*\sdu@tokens@experimentalTopics{}
\newcommand*\sdu@tokens@date{}

%% --------------------------- Loading Base Class ----------------------------
\LoadClass[a4paper,12pt]{article}

%% --------------------------- Loading Packages ----------------------------
% XeTeX validation
\RequirePackage{ifxetex}
	\RequireXeTeX
	\ifxetex\else
	\ClassError{IntroductiontoAI}{You must use the `xelatex' driver. Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
	\fi
\RequirePackage{xeCJK}  % Chinese typesetting support
\RequirePackage[texcoord]{eso-pic}  % Drawing support for background elements
\RequirePackage{geometry}  % Page layout management
	\newgeometry{left=1.7cm, right=1.7cm, top=2cm, bottom=2cm}  % Set page margins
\RequirePackage{framed}  % Framed text environments
\RequirePackage{titlesec}  % Title section formatting

% Image handling packages
\RequirePackage{graphicx}  % Graphics inclusion
\RequirePackage{float}  % Float environment control
\RequirePackage{subcaption}  % Support for sub-figures

% Code display packages
\RequirePackage{listings}  % Code listing support
\RequirePackage{xcolor}  % Color management

% List formatting
\RequirePackage{enumitem}  % Customizable lists

% Hyperlinks and bookmarks
\RequirePackage[breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}

%% ----------------------------- Configuration Settings -----------------------------------
% Font configuration
\setmainfont{Consolas}  % Main document font
\setmonofont{Courier New}  % Monospaced font for code
\setCJKmainfont[Path=../../../../Fonts/,BoldFont={SourceHanSansHWSC-Bold.otf}]{SourceHanSansHWSC-Regular.otf}  % CJK font with path

% Section formatting
\titleformat{\section}[block]{\large\bfseries}{}{0em}{\begin{picture}(1,1)\put(-9,22.5){\line(1,0){500}}\end{picture}}
\titleformat{\subsection}[block]{\large\bfseries}{\chinese{subsection}}{0.5em}{}
\titleformat{\subsubsection}[block]{}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}

% Spacing adjustments
\setlength{\abovecaptionskip}{0pt}  % No extra space above captions
\setlength{\belowcaptionskip}{0pt}  % No extra space below captions
\pagestyle{plain}  % Simple page style

% Code styling configuration
% (Commented out as it appears to be overridden in the style file)
% \definecolor{dkgreen}{rgb}{0,0.6,0}
% \definecolor{gray}{rgb}{0.5,0.5,0.5}
% \definecolor{mauve}{rgb}{0.58,0,0.82}
% \lstset{
% 	columns=fullflexible,
% 	captionpos=b,  
% 	numbers=left, 
% 	breaklines=true,   
% 	captionpos=b, 
% 	tabsize=4,
% 	stringstyle=\ttfamily,
% 	numberstyle= \tiny, 
% 	keywordstyle= \color{ blue!70},
% 	commentstyle= \color{red!50!green!50!blue!50}, 
% 	frame=tb,
% 	rulecolor=\color{gray!35},
% 	backgroundcolor=\color{gray!5},
% 	escapeinside=``, % if you want to add a comment in your code
% 	showstringspaces=false,   
% 	xleftmargin=2em, aboveskip=1em,
% 	framexleftmargin=2em,
% 	breaklines = true,
% 	breakatwhitespace = true,
% }

%% ----------------------------- Custom Command Definitions -----------------------------
% Main document environment
\newenvironment{sduDocument}
{	
	\begin{center}
		\huge{山东大学 \underline{~\sdu@tokens@college~} 学院 \\
		\underline{~\sdu@tokens@course~} 实验报告}
	\end{center}
	\begin{framed}
	\AddToShipoutPictureBG*{%
		\setlength{\unitlength}{1mm}
		% \put( 17, -45.6){\line(1,0){176}} % Upper horizontal line
		\put( 20, -51.0){\makebox(0,0)[l]{学号: \sdu@tokens@studentId}}
		\put( 60, -55.1){\line(0,1){8.3}}
		\put( 62, -51.0){\makebox(0,0)[l]{姓名: \sdu@tokens@name}}
        \put( 95, -55.1){\line(0,1){8.3}}
        \put( 97, -51.0){\makebox(0,0)[l]{日期: \sdu@tokens@date}}
		\put( 17, -55.1){\line(1,0){176}} % Lower horizontal line
		\put( 20, -62.2){\makebox(0,0)[l]{\large{实验题目: \sdu@tokens@experimentalTopics}}}
	}
	\vspace{14mm}
}
{
	\end{framed}
}

% Appendix command
\newcommand\sduAppendix{\vspace{4 mm}\begin{center}\huge{附录}\end{center}}

% Document metadata setting commands
\newcommand*\sduCollege[1]{
	\renewcommand{\sdu@tokens@college}{#1}}
\newcommand*\sduCourse[1]{
	\renewcommand{\sdu@tokens@course}{#1}}
\newcommand*\sduStudentId[1]{
	\renewcommand{\sdu@tokens@studentId}{#1}}
\newcommand*\sduName[1]{
	\renewcommand{\sdu@tokens@name}{#1}}
\newcommand*\sduExperimentalTopics[1]{
	\renewcommand{\sdu@tokens@experimentalTopics}{#1}}
\newcommand*\sduDate[1]{
	\renewcommand{\sdu@tokens@date}{#1}}