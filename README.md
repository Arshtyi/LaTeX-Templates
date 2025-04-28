<!-- @format -->

# Project Introduction

-   A collection of self-made LaTeX templates, also referencing various projects (see [Reference Projects](#reference-projects)).
-   **Commercial use is prohibited.**

# Important Notes

-   When using this project, pay close attention to file paths (including `.cls` file paths, font file paths, etc.). Ensure they are correctly configured for your environment.

# Environment

-   Developed on Ubuntu 24.04. (This implies potential compatibility issues on other operating systems, especially regarding fonts. Please ensure dependencies are met.)
-   Using [TeX Live 20250308](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/).
-   Package version issues may occur. Use the command `tlmgr update --all` to update your packages.
-   All templates are compiled using either `XeLaTeX -> XeLaTeX` or `XeLaTeX -> BibTeX -> XeLaTeX -> XeLaTeX` compilation workflows.

# Project Structure

-   **Templates/**: Contains various templates. Typically, TeX content is separated into subfolders like `Code/`, `Figures/`, etc. PDF output files are generally not included in the repository.
-   **Cls/**: Contains the `.cls` (class) files used by each template.
-   **Fonts/**: Contains all fonts used in the templates.
-   **Styles/**: Contains the `.sty` (style) files used by each template.
-   **Scripts/**: Contains potentially useful scripts (currently unused).

# Current Templates (See [CHANGELOG.md](https://github.com/Arshtyi/LaTeX-Templates/blob/master/CHANGELOG.md) for details)

-   [x] [Shandong University - Introduction to AI Experiment Report Template](https://github.com/Arshtyi/LaTeX-Templates/tree/master/Templates/SDU/ExpReport/IntroductiontoAI)
-   [x] [Shandong University - College Physics Experiment Report Template](https://github.com/Arshtyi/LaTeX-Templates/tree/master/Templates/SDU/ExpReport/Physics)
-   [x] [Shandong University - Introduction to Computing Experiment Report Template](https://github.com/Arshtyi/LaTeX-Templates/tree/master/Templates/SDU/ExpReport/Introductionto)
-   [ ] Shandong University - Beamer Template
-   [x] [Mathematics Notes Template](https://github.com/Arshtyi/LaTeX-Templates/tree/master/Templates/Notebook/Math)

# License

-   See the [MIT LICENSE](https://github.com/Arshtyi/LaTeX-Templates/blob/master/LICENSE) file for details.
-   These templates are intended for personal use only. **Commercial use is strictly prohibited.**

# Contact

-   QQ: 640006128
-   Email: arshtyi_trantor@outlook.com

# Reference Projects

-   [LaTeX Templates](http://www.latextemplates.com/)
-   [SDU-Report](https://github.com/oops-sdu/sdu_report)
-   [SDU-Beamer](https://github.com/timerring/SDU-beamer)
-   [Dotfiles](https://github.com/SeniorMars/dotfiles)
-   [AlJabr](https://github.com/wenweili/AlJabr-1)
