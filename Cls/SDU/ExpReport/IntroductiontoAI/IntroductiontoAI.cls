%% ============================================================================
%% Introduction to AI Course Report Class
%% ============================================================================

\ProvidesClass{IntroductiontoAI}
\NeedsTeXFormat{LaTeX2e}

%% ============================================================================
%% ==                     Document Metadata Definitions                      ==
%% ============================================================================
% Define internal commands to store document metadata provided by the user.
\newcommand*\sdu@tokens@college{}          % Stores the college name
\newcommand*\sdu@tokens@course{}           % Stores the course name
\newcommand*\sdu@tokens@studentId{}        % Stores the student ID
\newcommand*\sdu@tokens@name{}             % Stores the student name
\newcommand*\sdu@tokens@experimentalTopics{} % Stores the experimental topics
\newcommand*\sdu@tokens@date{}             % Stores the date

%% ============================================================================
%% ==                         Loading Base Class                           ==
%% ============================================================================
% Load the standard 'article' class with A4 paper size and 12pt font size.
\LoadClass[a4paper,12pt]{article}

%% ============================================================================
%% ==                         Loading Packages                             ==
%% ============================================================================

% --- XeTeX and CJK Support ---
\RequirePackage{ifxetex}      % Check if XeTeX engine is being used
\RequireXeTeX             % Ensure XeTeX is used
\ifxetex\else            % Error if not using XeTeX
    \ClassError{IntroductiontoAI}{You must use the `xelatex' driver. Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
\RequirePackage{xeCJK}        % Provides support for Chinese, Japanese, and Korean typesetting with XeTeX

% --- Page Layout and Appearance ---
\RequirePackage{geometry}      % For customizing page dimensions
\RequirePackage[texcoord]{eso-pic} % Allows adding elements to the background/foreground of pages
\RequirePackage{framed}        % Creates framed environments for text blocks
\RequirePackage{titlesec}      % Provides control over section titles formatting
\RequirePackage{xcolor}        % Provides color management capabilities

% --- Graphics and Floats ---
\RequirePackage{graphicx}      % For including external graphics files
\RequirePackage{float}         % Improves control over floating objects like figures and tables
\RequirePackage{subcaption}    % Allows creating subfigures and subtables within a single float

% --- Code Listing ---
\RequirePackage{listings}      % For typesetting source code listings

% --- List Formatting ---
\RequirePackage{enumitem}      % Provides enhanced control over list environments (enumerate, itemize, description)

% --- Hyperlinks and References ---
\RequirePackage[breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref} % Creates hyperlinks within the document

%% ============================================================================
%% ==                       Configuration Settings                         ==
%% ============================================================================

% --- Page Geometry ---
% Set page margins: 1.7cm left/right, 2cm top/bottom.
\newgeometry{left=1.7cm, right=1.7cm, top=2cm, bottom=2cm}

% --- Font Configuration ---
% Set the main document font to Consolas.
\setmainfont{Consolas}
% Set the monospaced font (for code listings, etc.) to Courier New.
\setmonofont{Courier New}
% Set the CJK font. Uses Source Han Sans SC Regular as the main CJK font,
% and specifies the Bold variant path explicitly.
\setCJKmainfont[{SourceHanSansHWSC-Bold}]{SourceHanSansHWSC-Regular}

% --- Section Title Formatting ---
% Format \section titles: large, bold, with a horizontal line below.
\titleformat{\section}[block]{\large\bfseries}{}{0em}{\begin{picture}(1,1)\put(-9,22.5){\line(1,0){500}}\end{picture}}
% Format \subsection titles: large, bold, prefixed with Chinese "小节".
\titleformat{\subsection}[block]{\large\bfseries}{\chinese{subsection}}{0.5em}{}
% Format \subsubsection titles: numbered with subsection.subsubsection format.
\titleformat{\subsubsection}[block]{}{\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}

% --- Spacing Adjustments ---
% Remove extra vertical space above and below captions.
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
% Use the 'plain' page style (page numbers at the bottom center).
\pagestyle{plain}

% --- Code Listing Styling (listings package) ---
% Note: This section is commented out in the original file.
% It defines colors and sets various options for code appearance.
% If uncommented, it would configure aspects like line numbers, frames,
% background color, keyword highlighting, etc.
% \definecolor{dkgreen}{rgb}{0,0.6,0}
% \definecolor{gray}{rgb}{0.5,0.5,0.5}
% \definecolor{mauve}{rgb}{0.58,0,0.82}
% \lstset{
% 	columns=fullflexible,
% 	captionpos=b,
% 	numbers=left,
% 	breaklines=true,
% 	tabsize=4,
% 	stringstyle=\ttfamily,
% 	numberstyle= \tiny,
% 	keywordstyle= \color{ blue!70},
% 	commentstyle= \color{red!50!green!50!blue!50},
% 	frame=tb,
% 	rulecolor=\color{gray!35},
% 	backgroundcolor=\color{gray!5},
% 	escapeinside=``, % Allows embedding LaTeX commands within code comments
% 	showstringspaces=false,
% 	xleftmargin=2em, aboveskip=1em,
% 	framexleftmargin=2em,
% 	breaklines = true,
% 	breakatwhitespace = true,
% }

%% ============================================================================
%% ==                     Custom Command Definitions                       ==
%% ============================================================================

% --- Main Document Environment ---
% Defines the 'sduDocument' environment for the main report structure.
\newenvironment{sduDocument}
{	% Begin environment code
    % Centered title block
    \begin{center}
        \huge{山东大学 \underline{~\sdu@tokens@college~} 学院 \\ % College Name
            \underline{~\sdu@tokens@course~} 实验报告} % Course Name
    \end{center}
    % Framed section containing metadata
    \begin{framed}
        % Add metadata to the background of the page using eso-pic
        \AddToShipoutPictureBG*{%
            \setlength{\unitlength}{1mm} % Set unit for positioning
            % Position and display metadata fields
            % \put( 17, -45.6){\line(1,0){176}} % Upper horizontal line (commented out)
            \put( 20, -50.0){\makebox(0,0)[l]{学号: \sdu@tokens@studentId}} % Student ID
            \put( 60, -55.1){\line(0,1){9.8}} % Vertical separator line
            \put( 62, -50.0){\makebox(0,0)[l]{姓名: \sdu@tokens@name}}     % Student Name
            \put( 95, -55.1){\line(0,1){9.8}} % Vertical separator line
            \put( 97, -50.0){\makebox(0,0)[l]{日期: \sdu@tokens@date}}     % Date
            \put( 17, -55.1){\line(1,0){176}} % Lower horizontal line
            \put( 20, -62.2){\makebox(0,0)[l]{\large{实验题目: \sdu@tokens@experimentalTopics}}} % Experimental Topics
        }
        \vspace{14mm} % Add vertical space after the header block
        }
        {	% End environment code
    \end{framed} % End the framed metadata section
}

% --- Appendix Command ---
% Defines a command to start the appendix section with a centered title.
% \newcommand\sduAppendix{\vspace{4 mm}\begin{center}\huge{附录}\end{center}}

% --- Metadata Setting Commands ---
% User-facing commands to set the document metadata.
% These commands update the internal token commands defined earlier.
\newcommand*\sduCollege[1]{             % Sets the college name
    \renewcommand{\sdu@tokens@college}{#1}}
\newcommand*\sduCourse[1]{              % Sets the course name
    \renewcommand{\sdu@tokens@course}{#1}}
\newcommand*\sduStudentId[1]{           % Sets the student ID
    \renewcommand{\sdu@tokens@studentId}{#1}}
\newcommand*\sduName[1]{                % Sets the student name
    \renewcommand{\sdu@tokens@name}{#1}}
\newcommand*\sduExperimentalTopics[1]{  % Sets the experimental topics
    \renewcommand{\sdu@tokens@experimentalTopics}{#1}}
\newcommand*\sduDate[1]{                % Sets the date
    \renewcommand{\sdu@tokens@date}{#1}}

%% ============================================================================
%% ==                         End of Class File                            ==
%% ============================================================================