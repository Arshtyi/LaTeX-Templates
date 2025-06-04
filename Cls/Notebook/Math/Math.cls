% ===========================================================================
% Mathematics Notebook Class
% A class file for mathematical notes and documents
% ===========================================================================

% --- Class Declaration ---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Math}

% --- Base Class and Options ---
\LoadClass[a4paper,12pt,twoside,openany]{book}

% ===========================================================================
% I. ENGINE DETECTION AND CORE PACKAGES
% ===========================================================================

% --- Engine Detection ---
\RequirePackage{ifxetex}
\RequireXeTeX % Requires XeTeX engine

% --- Core Programming Tools ---
\RequirePackage{etoolbox}    % Programming utilities for LaTeX

% --- PDF Support ---
\RequirePackage{ifpdf}
\ifpdf
    \RequirePackage{transparent}
\fi

% ===========================================================================
% II. LANGUAGE SUPPORT AND FONTS
% ===========================================================================

% --- CJK Support ---
\RequirePackage{ctex}        % Chinese language support

% --- Font Configuration ---
\setmainfont{Source Han Serif SC}[
    BoldFont=Source Han Serif SC Bold,
    ItalicFont=Source Han Serif SC Light,
    BoldItalicFont=Source Han Serif SC Bold
]

\setsansfont{Source Han Sans SC}[
    BoldFont=Source Han Sans SC Bold
]

\setmonofont{Consolas}[
    Scale=MatchLowercase
]

% ===========================================================================
% III. MATHEMATICS SUPPORT
% ===========================================================================

% --- Core Math Packages ---
\RequirePackage[tbtags]{amsmath}  % Advanced math environments
\RequirePackage{amsthm}           % Theorem environments
\RequirePackage{amsfonts}         % Math fonts (blackboard bold, etc.)
\RequirePackage{amssymb}          % Extended math symbols

% --- Extended Math Support ---
\RequirePackage{mathtools}        % Enhancements for amsmath
\RequirePackage{bm}               % Bold math symbols
\RequirePackage{extarrows}        % Extended arrow commands
% IV. GRAPHICS AND DIAGRAMS
% ===========================================================================

% --- TikZ and Diagram Support ---
\RequirePackage{tikz}             % Vector graphics system
\RequirePackage{tikz-cd}          % Commutative diagrams
\RequirePackage{tikzsymbols}      % Additional TikZ symbols

% ===========================================================================
% V. DOCUMENT STRUCTURE
% ===========================================================================

% --- Structure and Organization ---
\RequirePackage{appendix}         % Appendix formatting
\RequirePackage{environ}          % Environment creation tools

% ===========================================================================
% VI. BIBLIOGRAPHY SYSTEM
% ===========================================================================

% --- Modern Bibliography with biblatex ---
\RequirePackage[
    backend=biber,            % Bibliography processor (more powerful than bibtex)
    style=numeric-comp,       % International numeric citation style with compression
    sorting=nyt,              % Sort by name, year, title
    maxbibnames=99,           % Show all authors in bibliography
    maxcitenames=2,           % Show max 2 authors in citations
    mincitenames=1,           % Show min 1 author in citations
    giveninits=false,         % Use full given names
    uniquename=false,         % Don't disambiguate names
    uniquelist=false,         % Don't disambiguate lists
    alldates=terse,           % Compact date format
    defernumbers=true         % Defer numbering for proper sorting
]{biblatex}

% ===========================================================================
% VII. HYPERLINKS AND REFERENCES
% ===========================================================================

% --- Hyperlink System ---
\RequirePackage[
    breaklinks,
    colorlinks,
    linkcolor=black,
    citecolor=black,
    urlcolor=red,
    bookmarksdepth=2,
    bookmarksnumbered=true,
    bookmarksopen=true
]{hyperref}

% --- Enhanced References ---
\RequirePackage{theoremref}                     % Theorem references
\RequirePackage[depth=2,open=true,numbered=true]{bookmark} % PDF bookmarks
\RequirePackage[nameinlink]{cleveref}           % Intelligent cross-references
\RequirePackage{nameref}                        % Reference by name

% ===========================================================================
% End of Class File
% ===========================================================================

\endinput