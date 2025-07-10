% ===========================================================================
% Code Notebook Class
% A class file for code notes
% ===========================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Code}

% --- Base Class and Options ---
\LoadClass[a4paper,12pt]{article}

% --- Engine Detection ---
\RequirePackage{ifxetex}
\RequireXeTeX % Requires XeTeX engine
\RequirePackage{fancyhdr}

\RequirePackage{fontspec}
\RequirePackage{ctex}

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
\RequirePackage{xcolor}
\RequirePackage{listings}
