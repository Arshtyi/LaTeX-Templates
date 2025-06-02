%%===========================================================================
%% IntroductiontoComputing Class File
%%===========================================================================

%%-----------------------------------
%% Class Declaration and Basic Setup
%%-----------------------------------
\ProvidesClass{IntroductiontoComputing}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}  % Load the base article class

%%-----------------------------------
%% Variable Declarations
%%-----------------------------------
% Define internal variables to store report information
\newcommand*\sdu@tokens@topics{}          % Stores the experimental topics
\newcommand*\sdu@tokens@id{}              % Stores the student ID
\newcommand*\sdu@tokens@date{}            % Stores the date
\newcommand*\sdu@tokens@class{}           % Stores the class name
\newcommand*\sdu@tokens@name{}            % Stores the student name

%%-----------------------------------
%% Engine Requirements
%%-----------------------------------
% Ensure XeTeX is being used for proper CJK support
\RequirePackage{ifxetex}                  % Check if XeTeX engine is being used
\RequireXeTeX                             % Ensure XeTeX is used
\ifxetex\else                             % Error if not using XeTeX
    \ClassError{IntroductiontoComputing}{You must use the `xelatex' driver. Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi

%%-----------------------------------
%% Package Imports (by functionality)
%%-----------------------------------
% CJK and font support
\RequirePackage{xeCJK}                    % Provides support for Chinese, Japanese, and Korean typesetting with XeTeX

% Document layout packages
\RequirePackage{geometry}                 % For customizing page dimensions
\RequirePackage{titlesec}                 % Provides control over section titles formatting
\RequirePackage{framed}                   % Creates framed environments for text blocks
\RequirePackage[texcoord]{eso-pic}        % Allows adding elements to the background/foreground of pages

% Visual elements packages
\RequirePackage{xcolor}                   % Provides color management capabilities
\RequirePackage{graphicx}                 % For including external graphics files
\RequirePackage{float}                    % Improves control over floating objects like figures and tables
\RequirePackage{subcaption}               % Allows creating subfigures and subtables within a single float

% Content formatting packages
\RequirePackage{listings}                 % For typesetting source code listings

% Hyperlink and navigation
\RequirePackage[breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref} % Creates hyperlinks within the document

%%-----------------------------------
%% Page Layout and Formatting
%%-----------------------------------
% Set paper size and page margins
\geometry{a4paper, left=1.7cm, right=1.7cm, top=2cm, bottom=2cm}

% Caption spacing settings
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}

% Set page style for numbering
\pagestyle{plain}                         % Use the 'plain' page style (page numbers at the bottom center)

%%-----------------------------------
%% Font Settings
%%-----------------------------------
\setmainfont{Consolas}                                            % Set the main font to Consolas
\setCJKmainfont[{SourceHanSansHWSC-Bold}]{SourceHanSansHWSC-Regular}  % Set the CJK main font
\setCJKmonofont{Courier New}                                      % Set the CJK monospaced font

%%-----------------------------------
%% Section Formatting
%%-----------------------------------
% Format \section titles: large, bold with a horizontal line above
\titleformat{\section}[block]{\large\bfseries}{}{0em}{\begin{picture}(1,1)\put(-9,22.5){\line(1,0){500}}\end{picture}}

% Format \subsection titles: large, bold, prefixed with Chinese numbering
\titleformat{\subsection}[block]{\large\bfseries}{\chinese{subsection}}{0.5em}{} % //

% Format \subsubsection titles: numbered with subsection.subsubsection format
\titleformat{\subsubsection}[block]{}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{} % //

%%-----------------------------------
%% Custom Environments and Commands
%%-----------------------------------
% Define the main report environment with header information
\newenvironment{sdu}{
    \begin{center}
        \huge{计算机学院计算概论实验报告}
    \end{center}
    \begin{framed}
        \AddToShipoutPictureBG*{%
            \setlength{\unitlength}{1mm}
            \put(20,-38.0){\makebox(0,0)[l]{实验题目：\sdu@tokens@topics}}
            \put(138,-43.0){\line(0,1){11}}
            \put(140,-38.0){\makebox(0,0)[l]{学号：\sdu@tokens@id}}
            \put(17.2,-43){\line(1,0){176}}
            \put(20,-49.0){\makebox(0,0)[l]{日期：\sdu@tokens@date}}
            \put(100,-52.3){\line(0,1){9.4}}
            \put(102,-49.0){\makebox(0,0)[l]{班级：\sdu@tokens@class}}
            \put(138,-52.3){\line(0,1){9.4}}
            \put(140,-49.0){\makebox(0,0)[l]{姓名：\sdu@tokens@name}}
        }
        \vspace{16mm}
        }{
    \end{framed}
}

% User commands for setting report information
\newcommand*\sduTopic[1]{
    \renewcommand{\sdu@tokens@topics}{#1}  % Set experimental topic
}

\newcommand*\sduID[1]{
    \renewcommand{\sdu@tokens@id}{#1}      % Set student ID
}

\newcommand*\sduDate[1]{
    \renewcommand{\sdu@tokens@date}{#1}    % Set report date
}

\newcommand*\sduClass[1]{
    \renewcommand{\sdu@tokens@class}{#1}   % Set class name
}

\newcommand*\sduName[1]{
    \renewcommand{\sdu@tokens@name}{#1}    % Set student name
}