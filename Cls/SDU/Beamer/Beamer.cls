% Beamer Class File - Refactored for Clarity and Grouped Functionality

% --- 1. Class Identification and LaTeX Format Requirement ---
\NeedsTeXFormat{LaTeX2e} % Specify the required LaTeX format version
\ProvidesClass{Beamer} % Identify the class name

% --- 2. Load Base Class ---
\LoadClass{beamer} % Load the standard Beamer class as the foundation

% --- 3. Engine Check ---
% Ensure that the XeTeX engine is being used, as required by fontspec and xeCJK.
\RequirePackage{ifxetex}      % Load the package to check the engine
\RequireXeTeX                 % Declare that XeTeX is required
\ifxetex\else                 % If XeTeX is not the current engine...
    % ...issue a class error message and stop compilation.
    \ClassError{Beamer}{You must use the `xelatex' driver. Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% Add a comment character to prevent potential parsing issues with the next command if any macro expansion happens unexpectedly.
%

% --- 4. Core Language and Font Support ---
% These packages are fundamental for handling Chinese characters and modern fonts with XeLaTeX.
\RequirePackage{ctex}       % Provides comprehensive Chinese language support (typesetting rules, localization, etc.)
\RequirePackage{xeCJK}      % Provides CJK (Chinese, Japanese, Korean) character support specifically for XeLaTeX
\RequirePackage{fontspec}   % Allows easy selection and use of OpenType and TrueType fonts installed on the system
\RequirePackage{csquotes}   % Provides context-sensitive quotation marks (important for multilingual documents)

% --- 5. Graphics Support ---
% Packages for including and creating graphics.
\RequirePackage{graphicx}   % Standard package for including external graphics files (\\includegraphics)
\RequirePackage{epsfig}     % Older package for including EPS figures (often redundant with graphicx, but included for compatibility)
\RequirePackage{tikz}       % Powerful package for creating vector graphics programmatically within LaTeX

% --- 6. Table Support ---
% Packages to enhance the creation of tables.
\RequirePackage{array}      % Extends options for column formatting in tabular and array environments
\RequirePackage{multirow}   % Allows table cells to span multiple rows
\RequirePackage{booktabs}   % Provides commands for creating publication-quality table rules (\\toprule, \\midrule, \\bottomrule)

% --- 7. List Environment Enhancements ---
\RequirePackage{enumerate}  % Provides enhanced customization options for enumerated lists

% --- 8. Utilities ---
% General utility packages.
\RequirePackage{comment}    % Allows defining comment environments to easily exclude large blocks of text
\RequirePackage[bookmarks=true]{hyperref} % Creates hyperlinks within the document (e.g., for TOC, citations) and PDF bookmarks. `bookmarks=true` is often default but explicitly stated here.

% --- 9. Initial Beamer Customization ---
% Basic Beamer settings applied at the class level. More detailed customization is done in the .sty file.
\beamertemplatenavigationsymbolsempty % Remove the default Beamer navigation symbols (circles, arrows, etc.). They are re-added later in the .sty file within the custom footline.
% Add a comment character to prevent potential parsing issues.
%

% --- End of Class File ---