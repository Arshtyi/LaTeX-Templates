%===================================================================
% Shandong University Thesis Document Class
%===================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Thesis}

%-------------------------------------------------------------------
% Base Class and Options
%-------------------------------------------------------------------
\LoadClass[openany]{ctexbook}  % Based on ctexbook class with openany option

%-------------------------------------------------------------------
% Required Packages
%-------------------------------------------------------------------
% Mathematics Packages
\RequirePackage{amsmath}      % AMS mathematical facilities for equations
\RequirePackage{amsthm}       % AMS theorem environments
\RequirePackage{amsfonts}     % AMS font packages for mathematics
\RequirePackage{amssymb}      % AMS symbol packages for mathematics
\RequirePackage{unicode-math} % Unicode mathematics support for XeLaTeX

% Language Support
\RequirePackage{xeCJK}        % Chinese typesetting with XeLaTeX

% Layout and Design
\RequirePackage{xcolor}       % Color extensions for document elements
\RequirePackage{geometry}     % Page layout management
\RequirePackage{float}        % Improved float placement for figures and tables
\RequirePackage{fancyhdr}     % Header and footer control
\RequirePackage{setspace}     % Line spacing control
\RequirePackage{bookmark}     % PDF bookmark support
\RequirePackage{booktabs}     % Publication quality tables

% Figures and Tables
\RequirePackage{graphicx}     % Enhanced graphics inclusion
\RequirePackage{caption}      % Customizing captions for figures and tables
\RequirePackage{subfig}       % Subfigures support
\RequirePackage[subfigure]{tocloft} % TOC support for subfigures

% Lists and Code
\RequirePackage{listings}     % Code listing environments
\RequirePackage{algorithm2e}  % Algorithms typesetting
\RequirePackage{enumitem}     % Customized lists

% Bibliography and TOC
\RequirePackage{tocloft}      % Control table of contents formatting

% Bibliography Management
\RequirePackage[
    backend=biber,            % Bibliography processor
    style=gb7714-2015,        % Chinese standard citation style
    gbnamefmt=givenahead      % Name format according to Chinese standard
]{biblatex}

%-------------------------------------------------------------------
% Hyperref Package (Load Last)
%-------------------------------------------------------------------
\RequirePackage{hyperref}   % Hypertext links for LaTeX - must be loaded last

%-------------------------------------------------------------------
% Font Settings
%-------------------------------------------------------------------
% Reset Font Commands (to avoid conflicts)
\let\songti\relex
\let\heiti\relex
\let\kaiti\relex

% Chinese Font Families Definition
\newCJKfontfamily\songti[
    AutoFakeBold=3,         % Bold weight enhancement
    AutoFakeSlant=0.25      % Slant angle for italics
]{SimSun}                   % Song/Ming typeface

\newCJKfontfamily\heiti[
    AutoFakeBold=3,         % Bold weight enhancement
    AutoFakeSlant=0.25      % Slant angle for italics
]{SimHei}                   % Hei/Gothic typeface

\newCJKfontfamily\kaiti[
    AutoFakeBold=3,         % Bold weight enhancement
    AutoFakeSlant=0.25      % Slant angle for italics
]{KaiTi}                    % Kai/Script typeface

%-------------------------------------------------------------------
% Chinese Font Command Shortcuts
%-------------------------------------------------------------------
% Basic Font Style Commands
\newcommand{\song}[1]{{\songti{#1}}}           % Song typeface
\newcommand{\hei}[1]{{\heiti{#1}}}             % Hei typeface
\newcommand{\kai}[1]{{\kaiti{#1}}}             % Kai typeface

% Bold Font Style Commands
\newcommand{\bfsong}[1]{{\songti\textbf{#1}}}  % Bold Song typeface
\newcommand{\bfhei}[1]{{\heiti\textbf{#1}}}    % Bold Hei typeface
\newcommand{\bfkai}[1]{{\kaiti\textbf{#1}}}    % Bold Kai typeface

% Italic Font Style Commands
\newcommand{\itsong}[1]{{\songti\textit{#1}}}  % Italic Song typeface
\newcommand{\ithei}[1]{{\heiti\textit{#1}}}    % Italic Hei typeface
\newcommand{\itkai}[1]{{\kaiti\textit{#1}}}    % Italic Kai typeface

% Bold+Italic Font Style Commands
\newcommand{\bfitsong}[1]{{\songti\textbf{\textit{#1}}}}  % Bold Italic Song
\newcommand{\bfithei}[1]{{\heiti\textbf{\textit{#1}}}}    % Bold Italic Hei
\newcommand{\bfitkai}[1]{{\kaiti\textbf{\textit{#1}}}}    % Bold Italic Kai

%-------------------------------------------------------------------
% Font Style Combinations (without arguments)
%-------------------------------------------------------------------
\newcommand{\allbfsong}{\songti\bfseries}       % Bold Song environment
\newcommand{\allbfhei}{\heiti\bfseries}         % Bold Hei environment
\newcommand{\allbfkai}{\kaiti\bfseries}         % Bold Kai environment
\newcommand{\allitsong}{\songti\itshape}        % Italic Song environment
\newcommand{\allithei}{\heiti\itshape}          % Italic Hei environment
\newcommand{\allitkai}{\kaiti\itshape}          % Italic Kai environment
\newcommand{\allbfitsong}{\songti\bfseries\itshape}  % Bold Italic Song environment
\newcommand{\allbfithei}{\heiti\bfseries\itshape}    % Bold Italic Hei environment
\newcommand{\allbfitkai}{\kaiti\bfseries\itshape}    % Bold Italic Kai environment

%-------------------------------------------------------------------
% Main Font Settings
%-------------------------------------------------------------------
\setmainfont{Times New Roman}    % Main Latin font (serif)
\setmathfont{XITS Math}          % Primary math font
\setmathfont[range=\mathop]{Latin Modern Math}  % Secondary math font for operators

%-------------------------------------------------------------------
% Basic Document Settings
%-------------------------------------------------------------------
\AtBeginDocument{\zihao{-4}\songti}  % Default font size and family for document
\setstretch{1.5}                      % Default line spacing (1.5)

% Page Geometry Configuration
\geometry{
    a4paper,                          % A4 paper size
    left=3cm,                         % Left margin
    right=3cm,                        % Right margin
    top=2.5cm,                        % Top margin
    bottom=2.5cm,                     % Bottom margin
}

%-------------------------------------------------------------------
% Hyperlink Settings
%-------------------------------------------------------------------
\definecolor{linkdarkblue}{rgb}{0,0.08,0.45}  % Dark blue color for links
\hypersetup{
    colorlinks=true,                          % Colored links instead of boxes
    linkcolor=blue,                           % Internal link color
    urlcolor=linkdarkblue,                    % URL link color
    citecolor=red,                            % Citation link color
}
\hypersetup{
    bookmarksnumbered=true,                   % Numbered bookmarks
    pdfstartview=FitH,                        % Initial PDF view
}
\endinput