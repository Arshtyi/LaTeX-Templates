\ProvidesClass{Physics}
\NeedsTeXFormat{LaTeX2e}

% --- Base Class Loading ---
% Load the standard 'report' class with A4 paper size and 12pt font size
\LoadClass[a4paper,12pt]{report}%

% --- Engine Check ---
% Check if XeTeX engine is being used, as it's required for CJK support
\RequirePackage{ifxetex}%      % Provides \ifxetex conditional
\RequireXeTeX%                 % Ensure XeTeX is used
\ifxetex\else%                % Error if not using XeTeX
    \ClassError{Physics}{You must use the 'xelatex' driver. Please choose 'xelatex'}{Just choose 'xelatex', no 'pdflatex' or 'latex' and so on.}%
\fi%

% --- Required Packages ---
% Typography and language support packages
\RequirePackage{xeCJK}%        % Provides support for Chinese, Japanese, and Korean typesetting with XeTeX

% Graphics and image support packages
\RequirePackage{graphicx}%     % For including external graphics files

% --- Graphics Path Configuration ---
% Set the path where graphic files are located
% This points to the Pictures directory relative to the main .tex file
\graphicspath{{Pictures/}}%     % Changed from './' to 'Pictures/' to match actual usage

% --- Internal Metadata Storage Commands ---
% Commands to store metadata provided by the user
\newcommand*\sdu@tokens@name{}%             % Stores the student name
\newcommand*\sdu@tokens@partners{}%         % Stores the partner names
\newcommand*\sdu@tokens@course{}%           % Stores the course name
\newcommand*\sdu@tokens@experimentalTopics{}% % Stores the experimental topics
\newcommand*\sdu@tokens@date{}%             % Stores the date

% --- User-facing Metadata Commands ---
% Commands for users to set their specific information
\newcommand*\sduName[1]{%
    \renewcommand*\sdu@tokens@name{#1}%
}%
\newcommand*\sduPartners[1]{%
    \renewcommand*\sdu@tokens@partners{#1}%
}%
\newcommand*\sduCourse[1]{%
    \renewcommand*\sdu@tokens@course{#1}%
}%
\newcommand*\sduExperimentalTopics[1]{%
    \renewcommand*\sdu@tokens@experimentalTopics{#1}%
}%
\newcommand*\sduDate[1]{%
    \renewcommand*\sdu@tokens@date{#1}%
}%

% --- Custom Environment for Title Block ---
% Defines the 'sdu' environment to create the report's title block
\newenvironment{sdu}{%
    \begin{center}%
        % Include the SDU logo
        \includegraphics[height=10ex]{SDU.png}%
        % Report title and date
        \huge{山东大学实验报告}~\large{\underline{~\sdu@tokens@date~}}% % Use non-breaking space for proper spacing
    \end{center}%
    \normalsize% % Reset font size after the title block
    \begin{center}%
        % Student information with proper underlining and spacing
        姓名\underline{~\sdu@tokens@name~}~~同组者\underline{~\sdu@tokens@partners~}\\%
        课程\underline{~\sdu@tokens@course~}~~题目\underline{~\sdu@tokens@experimentalTopics~}%
    \end{center}%
}{}% % End of environment definition