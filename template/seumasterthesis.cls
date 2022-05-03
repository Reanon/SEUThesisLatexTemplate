%%  This is file `seumasterthesis.cls'.
%% ----------------------------------------------------------------------------
%%  This file provides a LaTeX document class for typesetting thesis of
%%  Southeast University, Nanjing, China.
%%  Version: 2020/05/10 v3.4.1
%% ----------------------------------------------------------------------------
%%  Copyright (C) 2007-2012 Yuan Xu, email: xuyuan.cn@gmail.com
%%  Copyright (C) 2016 James Fan, email: zhimengfan1990@163.com
%%  Copyright (C) 2019 Rui Song, email: wurahara@163.com
%%  License: GNU General Public License, version 3


\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{seumasterthesis}[2020/05/10 3.4.1 The LaTeX template for master thesis of Southeast University]
\typeout{Document Class `seumasterthesis' 3.4.1 by Rui Song (2020/05/10)}

\newif\ifnocolorlinks\nocolorlinksfalse
\newif\ifalgorithmlist\algorithmlistfalse
\newif\iffigurelist\figurelistfalse
\newif\iftablelist\tablelistfalse
\newif\ifnomlist\nomlistfalse
\newif\ifengineer\engineerfalse

\InputIfFileExists{template/seumasterthesis.cfg}  % 修改1 —— Reanon
{\typeout{[seumasterthesis]: Load seumasterthesis.cfg successfully!}}
{\typeout{[seumasterthesis]: Load seumasterthesis.cfg failed!}}

%% Template Parameters
\DeclareOption{nocolorlinks}{\nocolorlinkstrue}
\DeclareOption{algorithmlist}{\algorithmlisttrue}
\DeclareOption{figurelist}{\figurelisttrue}
\DeclareOption{tablelist}{\tablelisttrue}
\DeclareOption{nomlist}{\nomlisttrue}
\DeclareOption{engineer}{\engineertrue}

%% Template Pre-definition
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexrep}}
\ProcessOptions
\LoadClass[twoside,a4paper,zihao=-4,UTF8,openright]{ctexrep}
\RequirePackage[top=1.1in,bottom=1.1in,left=2.5cm,right=2.5cm,a4paper]{geometry}
\RequirePackage[titles]{tocloft}
\RequirePackage{fontspec}
\RequirePackage{datetime}
\RequirePackage{url}

%% ----------------------------------------------------------------------------
%%                          Font and Font Size
%% ----------------------------------------------------------------------------

%% Font
\RequirePackage[font=small]{caption}
\setmainfont[Mapping=tex-text]{Times New Roman}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftdotsep}}
\newcommand{\cmufont}{\fontspec{CMU Serif}}
%\newcommand{\codefont}{\fontspec{Consolas}}                %% Microsoft Windows
\newcommand{\codefont}{\fontspec{Ubuntu Mono}}              %% Ubuntu GNU/Linux

%% Font size
\newcommand{\chuhao}{\fontsize{42bp}{46bp}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36bp}{40bp}\selectfont}
\newcommand{\yichu}{\fontsize{32bp}{36bp}\selectfont}
\newcommand{\yihao}{\fontsize{28bp}{32bp}\selectfont}
\newcommand{\erhao}{\fontsize{21bp}{24bp}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18bp}{20bp}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75bp}{18bp}\selectfont}
\newcommand{\sihao}{\fontsize{14bp}{16bp}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12bp}{14bp}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5bp}{13bp}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9bp}{11bp}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5bp}{9bp}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5bp}{7.5bp}\selectfont}
\newcommand{\qihao}{\fontsize{5.5bp}{6.5bp}\selectfont}

\ctexset{
    %% Chapter: three, bold, centered
    chapter/format=\centering,
    chapter/nameformat=\sanhao\heiti,
    chapter/numberformat=\sanhao\heiti,
    chapter/titleformat=\sanhao\heiti,
    chapter/beforeskip=0pt,
    %% Section: four, bold song, lefted
    section/format=\raggedright,
    section/nameformat={\large\bfseries},
    section/numberformat={\large\bfseries},
    section/titleformat={\sihao\bfseries},
    %% Subsection: small four, bold, lefted
    subsection/format=\raggedright,
    subsection/nameformat={\xiaosihao\heiti},
    subsection/numberformat={\xiaosihao\heiti},
    subsection/titleformat={\xiaosihao\heiti},
    %% Subsubsection
    subsubsection/format=\xiaosihao\bfseries\raggedright,
    %% List of figure and table
    contentsname={目 \quad 录},
    listfigurename={插图目录},
    listtablename={表格目录}
}

%% ----------------------------------------------------------------------------
%%                        Mathematics Environment
%% ----------------------------------------------------------------------------

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\numberwithin{equation}{chapter}
\newcommand{\dif}{\mathrm{d}}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\sinc}{sinc}
\DeclareMathOperator{\unwrap}{unwrap}
\def\me{\mathrm{e}}
\RequirePackage[mathscr]{eucal}
\RequirePackage{eufrak}
\RequirePackage{bm}

%% ----------------------------------------------------------------------------
%%                        Terminology and Symbols
%% ----------------------------------------------------------------------------

\RequirePackage{nomencl}
\makenomenclature
\newcommand{\setnomname}[1]{\renewcommand\nomname{#1}}
\renewcommand{\nomname}{术语与符号列表}

%% ----------------------------------------------------------------------------
%%                          Algorithm Settings
%% ----------------------------------------------------------------------------

\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\numberwithin{algorithm}{chapter}
\renewcommand{\algorithmicrequire}{\textbf{输入:}}
\renewcommand{\algorithmicensure}{\textbf{输出:}}
\floatname{algorithm}{算法}
\renewcommand{\listalgorithmname}{算法目录}

%% ----------------------------------------------------------------------------
%%                        Reference and Citation
%% ----------------------------------------------------------------------------

\RequirePackage[super,square,comma,compress]{natbib}
\newcommand\citen[1]{[\!\!\citenum{#1}]}

%% ----------------------------------------------------------------------------
%%                          Code Env Settings
%% ----------------------------------------------------------------------------

\RequirePackage{tcolorbox}
\tcbset{
    size=title,
    boxrule=0.35mm,
    colback=white,
    colframe=black,
    arc=0.35mm,
    lowerbox=ignored
}
\RequirePackage{listings}
\lstset{
    basicstyle=\wuhao\codefont,
    keywordstyle=\codefont,
    rulesepcolor= \color{gray},
    breaklines=true,
    tabsize=4,
    columns=flexible,
    numberstyle= \small,
    keywordstyle= \color{blue},
    commentstyle=\color{gray},
    frame=none
}

%% ----------------------------------------------------------------------------
%%                          Table & Figure Settings
%% ----------------------------------------------------------------------------

\renewcommand{\thetable}{\thechapter{}.\arabic{table}}
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\captionsetup[table]{labelsep=space}
\captionsetup[figure]{labelsep=space}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\renewcommand{\toprule}{\specialrule{.08em}{0pt}{.5ex}}
\renewcommand{\midrule}{\specialrule{.03em}{.5ex}{.5ex}}
\renewcommand{\bottomrule}{\specialrule{.08em}{.5ex}{0pt}}
\RequirePackage{subfig}

%% ----------------------------------------------------------------------------
%%                         Reference Hyper-links
%% ----------------------------------------------------------------------------

\RequirePackage{hyperref}
\ifnocolorlinks
    \hypersetup{colorlinks=false, hidelinks}
\else
    \hypersetup{colorlinks=true}
\fi
\hypersetup{
    linkcolor=blue,
    anchorcolor=black,
    citecolor=red,
    filecolor=magenta,
    menucolor=red,
    urlcolor=magenta
}

%% ----------------------------------------------------------------------------
%%                          Back Cover Settings
%% ----------------------------------------------------------------------------

\AtEndDocument{\backcover}
\newcommand{\backcover} {
    \clearpage
    \thispagestyle{empty}
    \begin{picture}(0,0)
        \put(-1,-22) {
            \includegraphics[width=\textwidth]{figures/defined/back-cover.png}
        }
    \end{picture}
}

%% ----------------------------------------------------------------------------
%%                           Header and Footer
%% ----------------------------------------------------------------------------

\RequirePackage{fancyhdr}
\fancypagestyle{seustyle} {
    \fancyhf{}
    \fancyhead[CO]{\xiaowuhao\leftmark}
    \fancyhead[CE]{\xiaowuhao\universityname{}\@thesistype}
    \fancyfoot[CO,CE]{\thepage}
}
\pagestyle{seustyle}
\fancypagestyle{nom} {
    \fancyhf{}
    \fancyhead[CO]{\xiaowuhao\nomname}
    \fancyhead[CE]{\xiaowuhao\universityname{}\@thesistype}
    \fancyfoot[CO,CE]{\thepage}
}
\renewcommand{\headrulewidth}{0.4pt}
\RequirePackage{eso-pic}

%% ----------------------------------------------------------------------------
%%                            Tag Definition
%% ----------------------------------------------------------------------------

%% Author
\renewcommand{\author}[2] {
    \def\@author{#1}
    \newcommand{\@authoreng}{#2}
}

%% Normal Title and Subtitle
\newcommand{\@titleeng}{}
\newcommand{\@subtitleeng}{}
\renewcommand{\title}[4]{
    \def\@title{#1}
    \newcommand{\@subtitle}{#2}
    \renewcommand{\@titleeng}{#3}
    \renewcommand{\@subtitleeng}{#4}
}

%% Engineering Thesis Type
\newcommand{\@engthesistype}{}
\newcommand{\engthesistype}[1]{
    \renewcommand{\@engthesistype}{#1}
}

%% Name of Advisor and Co-advisor
\newcommand{\@advisorname}{}
\newcommand{\@advisornameeng}{}
\newcommand{\@advisortitleeng}{}
\newcommand{\advisor}[3]{
    \renewcommand{\@advisorname}{#1}
    \renewcommand{\@advisornameeng}{#2}
    \renewcommand{\@advisortitleeng}{#3}
}
\newif\ifcoadvisor\coadvisorfalse
\newcommand{\@coadvisorname}{}
\newcommand{\@coadvisortitle}{}
\newcommand{\@coadvisornameeng}{}
\newcommand{\@coadvisortitleeng}{}
\newcommand{\coadvisor}[3]{
    \coadvisortrue
    \renewcommand{\@coadvisorname}{#1}
    \renewcommand{\@coadvisornameeng}{#2}
    \renewcommand{\@coadvisortitleeng}{#3}
}

%% Meta Data of the Thesis
\newcommand{\@categorynumber}{}
\newcommand{\categorynumber}[1]{
    \renewcommand{\@categorynumber}{#1}
}
\newcommand{\@secretlevel}{}
\newcommand{\secretlevel}[1]{
    \renewcommand{\@secretlevel}{#1}
}
\newcommand{\@UDC}{}
\newcommand{\UDC}[1]{
    \renewcommand{\@UDC}{#1}
}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{
    \renewcommand{\@studentid}{#1}
}

%% Basic Data of the Thesis
\newcommand\degreetype[2]{
    \renewcommand\@degreetype{#1}
    \renewcommand\@degreetypeen{#2}
}
\newcommand{\@majorlen}{8em}
\newcommand{\@major}{}
\newcommand{\major}[2][8em]{
    \renewcommand{\@majorlen}{#1}
    \renewcommand{\@major}{#2}
}
\newcommand{\@department}{}
\newcommand{\@departmenteng}{}
\newcommand{\department}[2]{
    \renewcommand{\@department}{#1}
    \renewcommand{\@departmenteng}{#2}
}
\newcommand{\@submajor}{}
\newcommand{\submajor}[1]{
    \renewcommand{\@submajor}{#1}
}
\newcommand{\@defenddate}{}
\newcommand{\defenddate}[1]{
    \renewcommand{\@defenddate}{#1}
}
\newcommand{\authorizeorganization}[1]{
    \renewcommand{\@authorizeorganization}{#1}
}
\newcommand{\@authorizedate}{}
\newcommand{\authorizedate}[1]{
    \renewcommand{\@authorizedate}{#1}
}
\newcommand{\@committeechair}{}
\newcommand{\committeechair}[1]{
    \renewcommand{\@committeechair}{#1}
}
\newcommand{\@reviewerA}{}
\newcommand{\@reviewerB}{}

\newcommand{\reviewer}[2]{
    \renewcommand{\@reviewerA}{#1}
    \renewcommand{\@reviewerB}{#2}
}

%% Blank
\newcommand{\CoverTopOption}[3][s]{
    \makebox[1.5cm][#1]{\xiaowuhao #2}:{
        \underline{
            \makebox[1.5cm][c]{\xiaowuhao #3}
        }
    }
}
\newcommand{\CoverBottomOption}[3][4.5cm] {
    \makebox[7cm][s]{
        {\songti\xiaosihao#2}
        \underline{
            \makebox[#1][c]{\heiti\xiaosihao#3}
        }
    }
}

%% Thanks or Short Acknowledgement
\newif\ifthanks\thanksfalse
\newcommand\@seuthesisthanks{}
\newcommand\seuthesisthanks[1]{
    \thankstrue
    \renewcommand\@seuthesisthanks{#1}
}
\newcommand\@thesisthanks{
    \ifthanks
        \thispagestyle{thanksstyle}
    \fi
}
\fancypagestyle{thanksstyle}{
    \fancyhf{}
    \fancyfoot[L]{
        \setlength{\baselineskip}{0pt}
        \rule[-2.5pt]{8cm}{1.0pt}\\
        \vspace{4.0pt}
        \footnotesize\@seuthesisthanks
    }
    \renewcommand\headrulewidth{0pt}
}

%% Title for Spine in A3 Cover
%% Which address the problem of rotation of English characters
\newif\ifspine\spinefalse
\newcommand{\@spinetitle}{}
\newcommand{\@spinesubtitle}{}
\newcommand{\spine}[2]{
    \spinetrue
    \renewcommand{\@spinetitle}{#1}
    \renewcommand{\@spinesubtitle}{#2}
}
\ifspine
\else
    \renewcommand{\@spinetitle}{\@title}
    \renewcommand{\@spinesubtitle}{\@subtitle}
\fi

%% ----------------------------------------------------------------------------
%%                           Generate A3 cover
%% ----------------------------------------------------------------------------

\newcommand\makebigcover {

    %% Basic settings
    \pdfpagewidth=420mm
    \pdfpageheight=297mm
    \setlength{\paperheight}{297mm}
    \setlength{\paperwidth}{420mm}
    \thispagestyle{empty}
    \setlength{\unitlength}{1cm}
    \noindent

    %% University title and the picture of grand auditorium
    \begin{picture}(0,0)
        \setlength{\unitlength}{1cm}
        \put(19.5,-8.5){
            \includegraphics[width=19cm]{figures/defined/front-cover.jpg}
        }
    \end{picture}

    %% The basic information of the thesis
    \begin{picture}(0,0)
        \put(19.5,1) {
            \renewcommand{\arraystretch}{1.0}
                \begin{tabular}{l}
                    \CoverTopOption{\schoolcodepre}{\schoolcode} \\
                    \CoverTopOption{\categorynumberpre}{\@categorynumber} \\
                    \CoverTopOption{\secretlevelpre}{\@secretlevel}\\
                    \CoverTopOption{U D C}{\@UDC} \\
                    \CoverTopOption{\studentidpre}{\@studentid}
                \end{tabular}
        }
    \end{picture}

    %% Thesis name
    \begin{picture}(0,0)
        \ifengineer
            \put(23,-7.5){\includegraphics[scale=0.32]{figures/defined/master-engineer.png}}
        \else
            \put(24.2,-7.5){\includegraphics[scale=0.32]{figures/defined/master.png}}
        \fi
    \end{picture}

    %% Southeast University badge
    \begin{picture}(0,0)
        \put(35,2){
            \includegraphics[width=2.15cm]{figures/defined/seu-color-logo.png}
        }
    \end{picture}

    %% Back cover
    \begin{picture}(0,0)
        \put(-1,-21){
            \includegraphics[width=\textwidth]{figures/defined/back-cover.png}
        }
    \end{picture}

    %% Thesis spine
    \begin{picture}(0,0)
        \put(18,-8){
            \parbox[c]{\ccwd}{
                \heiti
                \setlength{\baselineskip}{0pt}
                \@spinetitle\\
                \rule{0pt}{\ccwd}\\
                \@spinesubtitle\\
                \vspace*{4cm}
                \@author\\
                \vspace*{4cm}
                \universityname
            }
        }
    \end{picture}

    %% Thesis title
    \ifengineer
        \vspace*{5.7cm}
    \else
        \vspace*{6.0cm}
    \fi
    \hspace*{21cm}
    \begin{minipage}{16cm}
        \begin{center}
            \linespread{1.25}
            \erhao\heiti\@title\\
%            \erhao\heiti\@subtitle\\    % 修改3 -- Reanon 为了避免空副标题
        \end{center}
    \end{minipage}

    %% Engineering Thesis Type
    \ifengineer
        \vspace*{0.6cm}
        \hspace*{21cm}
        \begin{minipage}{16cm}
            \begin{center}
                \sihao\bfseries
                (\engthesistypepre\@engthesistype)
            \end{center}
        \end{minipage}
    \else
    \fi

    %% Thesis author and advisor
    \ifengineer
        \vspace*{0.4cm}
    \else
        \vspace*{1.5cm}
    \fi
    \hspace*{21cm}
    \begin{minipage}{16cm}
        \begin{center}
            \setlength{\tabcolsep}{0pt}
            \renewcommand{\arraystretch}{2.0}
            \begin{tabular}{cr}
                \makebox[3.5cm][s]{\xiaoerhao\songti\authorpre: } &
                \underline{\makebox[6cm][s]{
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@author}
                    \makebox[2cm][r]{}}
                } \\
                \makebox[3.5cm][s]{\xiaoerhao\songti\advisorpre: } &
                \underline{\makebox[6cm][s]{
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@advisorname}
                    \makebox[2cm][r]{}}
                } \\
                &
                \ifcoadvisor
                \underline{\makebox[6cm][s]{
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@coadvisorname}
                    \makebox[2cm][r]{}}
                }
                \else
                \fi \\
            \end{tabular}
        \end{center}
    \end{minipage}

    %% Degree application and defense information
    \hspace*{21cm}
    \begin{minipage}{16cm}
        \begin{center}
            \setlength{\tabcolsep}{10pt}
            \renewcommand{\arraystretch}{2.0}
            \begin{tabular}{ll}
                \CoverBottomOption{\appdegreepre}{\@degreetype} &
                \CoverBottomOption{\authorizeorganizationpre}{\@authorizeorganization} \\
                \ifengineer
                    \CoverBottomOption{\engfieldpre}{\@major} &
                \else
                    \CoverBottomOption{\majorpre}{\@major} &
                \fi
                \CoverBottomOption{\defenddatepre}{\@defenddate}\\
                \ifengineer
                    \CoverBottomOption{\resdirepre}{\@submajor} &
                \else
                    \CoverBottomOption{\submajorpre}{\@submajor} &
                \fi
                \CoverBottomOption{\authorizedatepre}{\@authorizedate}\\
                \CoverBottomOption[4.05cm]{\committeechairpre}{\@committeechair} &
                \CoverBottomOption{\reviewerpre}{\@reviewerA}\\
                & \CoverBottomOption{\makebox[2.55cm]{}}{\@reviewerB}
            \end{tabular}
        \end{center}
    \end{minipage}

    %% Date
    \vfill
    \hspace*{20.5cm}
    {\songti\sihao\centerline{\todaychn} \par}

    \eject
    \pdfpagewidth=210mm
    \pdfpageheight=297mm
    \setlength{\paperheight}{297mm}
    \setlength{\paperwidth}{210mm}
}

%% ----------------------------------------------------------------------------
%%                          Generate Chinese cover
%% ----------------------------------------------------------------------------

\newcommand{\makechinesecover} {

    %% Basic settings
    \hypersetup {
        pdfauthor={\@author},
        pdftitle={\universityname{}\@thesistype},
        pdfsubject={\@title \@subtitle},
        pdfcreator={xetex}
    }

    %% The basic information of the thesis
    \thispagestyle{empty}
    \AddToShipoutPictureFG* {
        \setlength{\unitlength}{1cm}
        \put(1,26.8) {
            \renewcommand{\arraystretch}{1.0}
            \begin{tabular}{l}
                \CoverTopOption{\schoolcodepre}{\schoolcode} \\
                \CoverTopOption{\categorynumberpre}{\@categorynumber} \\
                \CoverTopOption{\secretlevelpre}{\@secretlevel}\\
                \CoverTopOption{U D C}{\@UDC} \\
                \CoverTopOption{\studentidpre}{\@studentid}
            \end{tabular}
        }
    }

    %% University title and the picture of grand auditorium
    \AddToShipoutPictureBG*{
        \setlength{\unitlength}{1cm}
        \put(0,23.5) {
            \parbox{\paperwidth} {
                \centering
                \includegraphics[width=.9\paperwidth]{figures/defined/front-cover.jpg}
            }
        }
    }

    %% Thesis name
    \AddToShipoutPictureBG*{
        \setlength{\unitlength}{1cm}
        \put(0,18.6){
            \parbox{\paperwidth}{
                \centering
                \ifengineer
                    \includegraphics[scale=0.32]{figures/defined/master-engineer.png}
                \else
                    \includegraphics[scale=0.32]{figures/defined/master.png}
                \fi
            }
        }
    }

    %% Southeast University badge
    \AddToShipoutPictureBG*{
        \setlength{\unitlength}{1cm}
        \put(17,27.5) {
            \parbox{\paperwidth} {
                \includegraphics[width=2.15cm]{figures/defined/seu-color-logo.png}
            }
        }
    }

    %% Thesis title
    \ifengineer
        \vspace*{8.3cm}
    \else
        \vspace*{8.6cm}
    \fi
    \begin{center}
        \linespread{1.25}
        \erhao\heiti\@title\\
        \erhao\heiti\@subtitle
    \end{center}

    %% Engineering Thesis Type
    \ifengineer
        \begin{center}
            \sihao\bfseries
            (\engthesistypepre\@engthesistype)
        \end{center}
    \else
    \fi

    %% Thesis author and advisor
    \ifengineer
        \vspace*{0.1cm}
    \else
        \vspace*{0.9cm}
    \fi
    \begin{center}
        \setlength{\tabcolsep}{0pt}
        \renewcommand{\arraystretch}{2.0}
        \begin{tabular}{cr}
            \makebox[3.5cm][s]{\xiaoerhao\songti\authorpre: } &
            \underline{
                \makebox[6cm][s] {
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@author}
                    \makebox[2cm][r]{}
                }
            } \\
            \makebox[3.5cm][s]{\xiaoerhao\songti\advisorpre: } &
            \underline {
                \makebox[6cm][s] {
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@advisorname}
                    \makebox[2cm][r]{}
                }
            }
            \\
            &
            \ifcoadvisor
            \underline{
                \makebox[6cm][s] {
                    \hspace*{1.7cm}
                    \makebox[2.5cm][c]{\xiaoerhao\heiti\@coadvisorname}
                    \makebox[2cm][r]{}
                }
            }
            \else
            \fi \\
        \end{tabular}
    \end{center}

    %% Degree application and defense information
    \begin{center}
        \setlength{\tabcolsep}{10pt}
        \renewcommand{\arraystretch}{2.0}
        \begin{tabular}{ll}
            \CoverBottomOption{\appdegreepre}{\@degreetype} &
            \CoverBottomOption{\authorizeorganizationpre}{\@authorizeorganization} \\
            \ifengineer
                \CoverBottomOption{\engfieldpre}{\@major} &
            \else
                \CoverBottomOption{\majorpre}{\@major} &
            \fi
            \CoverBottomOption{\defenddatepre}{\@defenddate}\\
            \ifengineer
                \CoverBottomOption{\resdirepre}{\@submajor} &
            \else
                \CoverBottomOption{\submajorpre}{\@submajor} &
            \fi
            \CoverBottomOption{\authorizedatepre}{\@authorizedate}\\
            \CoverBottomOption[4.05cm]{\committeechairpre}{\@committeechair} &
            \CoverBottomOption{\reviewerpre}{\@reviewerA}\\
            & \CoverBottomOption{\makebox[2.55cm]{}}{\@reviewerB}
        \end{tabular}
    \end{center}

    %% Date
    \vfill
    \setcounter{page}{1} {
        \songti\sihao\centerline{\todaychn} \par
    }

    %% Blanck page
    \clearpage
    \thispagestyle{empty}
    \cleardoublepage
    \thispagestyle{empty}

    %% ---------------------------------------------------------------------------
    %%                             Inner page
    %% ---------------------------------------------------------------------------

    %% University title
    \begin{center}
        \xiaochuhao
        \includegraphics[height=0.63in]{figures/defined/seu-text-logo.png}\\
        \includegraphics[scale=0.35]{figures/defined/master.png}

        %% Thesis title
        \vspace{40pt}
        \erhao\heiti\@title\@thesisthanks\\
        \erhao\heiti\@subtitle

        %% Author and advisor
        \vspace{120pt}
        {
            \setlength{\tabcolsep}{0pt}
            \renewcommand{\arraystretch}{1.5}
            \begin{tabular}{cc}
                \makebox[3.5cm][s]{\xiaoerhao\heiti\mainmajorpre:  } &
                \underline{
                    \makebox[6cm][s] {
                        \xiaoerhao\songti\textbf{\@major}
                    }
                } \\
                \makebox[3.5cm][s]{\xiaoerhao\heiti\authorpre:  } &
                \underline {
                    \makebox[6cm][s] {
                        \xiaoerhao\songti\textbf{\@author}
                    }
                } \\
                \makebox[3.5cm][s]{\xiaoerhao\heiti\advisorpre:  } &
                \underline {
                    \makebox[6cm][s] {
                        \xiaoerhao\songti\textbf{\@advisorname}
                    }
                }
                \\
                &
                \ifcoadvisor
                \underline{
                    \makebox[6cm][s] {
                        \xiaoerhao\songti\textbf{\@coadvisorname}
                    }
                }
                \else
                \fi
            \end{tabular}
        }
    \end{center}
}

%% ----------------------------------------------------------------------------
%%                          Generate English cover
%% ----------------------------------------------------------------------------

\newcommand{\makeenglishcover} {

    %% Black page
    \clearpage
    \thispagestyle{empty}
    \cleardoublepage
    \thispagestyle{empty}

    \begin{center}

        %% English title and subtitle
        {
            \fontsize{24pt}{28pt}\selectfont
            \MakeUppercase{\@titleeng}\\
            \MakeUppercase{\@subtitleeng}
            \par
        }

        %% Declaration
        \vspace{2cm}
        {
            \fontsize{16pt}{24pt}
            \selectfont
            {
                A Thesis Submitted to
            }\\
            {\universitynameeng}\\
            % 修改4 -- Reanon, 专业硕士为 Professional，学术硕士为 Academic
            {For the Professional Degree of \@degreetypeen}\\

            %% Author
            {\vspace{0.5in}}
            {BY}\\
            {\@authoreng}\\

            %% Advisor
            {\vspace{0.5in}}
            {Supervised by}\\
            {\@advisortitleeng\  \@advisornameeng}\\
            \ifcoadvisor
            {and}\\
            {\@coadvisortitleeng\  \@coadvisornameeng}\\
            \else
            \fi

            %% School and University
            {\vfill}
            {\@departmenteng}\\
            {\universitynameeng}\\
            {\todayeng}
            \par
        }
    \end{center}
}

%% ----------------------------------------------------------------------------
%%                               Make cover
%% ----------------------------------------------------------------------------

\newcommand\makecover {
    \makechinesecover
    \makeenglishcover
    \seudeclare
}

%% ----------------------------------------------------------------------------
%%                           Chinese Abstract
%% ----------------------------------------------------------------------------

\renewenvironment{abstract}[1] {
    \pagenumbering{Roman}
    \clearpage
    \thispagestyle{empty}
    \cleardoublepage
    \thispagestyle{plain}
    \newcommand{\@keywords}{#1}
    \hypersetup{pdfkeywords={\@keywords}}
    \phantomsection
    \addcontentsline{toc}{chapter}{\@abstracttoc}
    \chapter*{\@abstracttitle}
    \setcounter{page}{1}
}
{
    \par
    \begin{description}
        \item[\@abtractkeywords] \@keywords
    \end{description}
}

%% ----------------------------------------------------------------------------
%%                           English Abstract
%% ----------------------------------------------------------------------------

\newenvironment{englishabstract}[1] {
    \cleardoublepage\thispagestyle{plain}
    \newcommand{\@keywords}{#1}
    \phantomsection
    \addcontentsline{toc}{chapter}{\@engabstracttoc}
    \ctexset{
        chapter/nameformat=\large\bfseries,
        chapter/titleformat=\large\bfseries
    }
    \chapter*{\@engabstracttitle}
    \ctexset{
        chapter/nameformat=\large\heiti,
        chapter/titleformat=\large\heiti
    }
}
{
    \par
    \begin{description}
    \item[\@engabtractkeywords] \@keywords
    \end{description}
}

%% ----------------------------------------------------------------------------
%%                            Summary list
%% ----------------------------------------------------------------------------

\newcommand\listofothers {

    %% figure list
    \iffigurelist
        \cleardoublepage
        \phantomsection
        \addcontentsline{toc}{chapter}{\listfigurename}
        \listoffigures
    \fi

    %% table list
    \iftablelist
        \cleardoublepage
        \phantomsection
        \addcontentsline{toc}{chapter}{\listtablename}
        \listoftables
    \fi

    %% algorithm list
    \ifalgorithmlist
        \cleardoublepage
        \phantomsection
        \addcontentsline{toc}{chapter}{\listalgorithmname}
        \listofalgorithms
    \fi

    %% terminology list
    \ifnomlist
        \cleardoublepage
        \clearpage
        \phantomsection
        \addcontentsline{toc}{chapter}{\nomname}
        \pagestyle{nom}
        \printnomenclature[2in]
    \fi
}

\newcommand{\mainmatter} {
    \cleardoublepage
    \pagenumbering{arabic}
    \pagestyle{seustyle}
}

%% ----------------------------------------------------------------------------
%%                            Acknowledgement
%% ----------------------------------------------------------------------------

\newcommand{\acknowledgement} {
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\@acktoc}
    \chapter*{\@acktitle}
}

%% ----------------------------------------------------------------------------
%%                             Bibliography
%% ----------------------------------------------------------------------------

\newcommand{\thesisbib}[1] {
    \bibliographystyle{template/seumasterthesis} % 修改2 —— Reanon
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\bibname}
    \bibliography{#1}
}

%% ----------------------------------------------------------------------------
%%                              Resume
%% ----------------------------------------------------------------------------

\newcommand{\resume}[1] {
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{#1}
    \chapter*{#1}
}
\endinput
