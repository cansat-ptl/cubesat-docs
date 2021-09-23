\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yktsat-datasheet}[2020/07/19 Yktsat Datasheet]

\LoadClass[a4paper,11pt,twoside]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%% Page geometry %%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[top=2cm, bottom=2cm, left=3cm, right=1.5cm, asymmetric]{geometry}

\setlength{\headheight}{7mm}
\setlength{\headsep}{5mm}
\setlength{\footskip}{10mm}

\usepackage{parskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%% Color definitions %%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{color}
\usepackage{xcolor}
\usepackage{colortbl}

\definecolor{blueMain}{RGB}{69, 122, 171}
\definecolor{blueMain1}{RGB}{69, 122, 171}
\definecolor{blueAux}{RGB}{208, 225, 239}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Font definitions %%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fontspec}

\newfontfamily\ArialMain[SizeFeatures={Size=11}]{Arial}
\newfontfamily\ArialTitleC[SizeFeatures={Size=28}]{Arial}
\newfontfamily\ArialTitleM[SizeFeatures={Size=26}]{Arial}
\newfontfamily\ArialSubtitle[SizeFeatures={Size=14}]{Arial}

\setmainfont{Arial}
\setsansfont{Arial}
\setmonofont{Consolas}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Tikz graphics %%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{graphicx}
\usepackage{tikz}

\newcommand\HeaderRect{%
	\begin{tikzpicture}[remember picture,overlay]
   	\draw[draw=blueMain,fill=blueMain] (-100, 10) rectangle (\paperwidth,0.8cm);
	\end{tikzpicture}%
}

\newcommand\FooterRect{%
	\begin{tikzpicture}[remember picture,overlay]
	  \draw[draw=blueMain,fill=blueMain] (-100, -10) rectangle (\paperwidth,-0.5cm);
	\end{tikzpicture}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

%%%%%%%%%%%%%%%%%%%%%%%% Header and footer %%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fancyhdr}
\pagestyle{fancy}

\fancyheadoffset[L]{1.5cm}
\fancyfootoffset[L]{1.5cm}

\fancyhf{}
\AtBeginDocument{%
\fancyhead[LE,RO]{{\footnotesize \nouppercase{\rightmark}}}%
\fancyhead[RE,LO]{{\footnotesize \iDocName{}}}%
\fancyfoot[LO]{{\footnotesize \thepage \hspace{1cm} {[PUBLIC]}\iDocCode{} \iDocRevision{} \iDocDate{}}}%
\fancyfoot[RE]{{\footnotesize {[PUBLIC]}\iDocCode{} \iDocRevision{} \iDocDate{} \hspace{1cm} \thepage}}%
\fancyfoot[RO,LE]{{\footnotesize Якутские космические системы - http://yktsat.sjsa.ru/docs}}%
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\chead{\HeaderRect}%
}

%\let\HeadRule\headrule

%\renewcommand\headrule{\color{blueAux}\HeadRule}

\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{titlepage}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \rfoot{{\footnotesize {[PUBLIC]}\iDocCode{} \iDocRevision{} \iDocDate{} - http://yktsat.sjsa.ru/docs/ykts-000001.pdf}}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Title formats %%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{titlesec}

\newlength\titleindent
\setlength\titleindent{1.5cm}

\titleformat{\section}
  {\Large\bfseries}{\llap{\parbox[b]{\titleindent}{\bfseries\thesection\hfill}}}{0cm}{}
\titleformat{\subsection}
  {\large}{\llap{\parbox[b]{\titleindent}{\bfseries\thesubsection\hfill}}}{0cm}{\bfseries}
\titleformat{\subsubsection}
  {\normalsize}{\llap{\parbox[b]{\titleindent}{\bfseries\thesubsubsection}}}{0cm}{\bfseries}
  
\renewcommand{\sectionmark}[1]{\markright{\arabic{section} -\ #1}}
\renewcommand{\subsectionmark}[1]{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%% Table of contents %%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{hyperref}
\usepackage{blindtext}

\hypersetup{
    colorlinks=true,
    linktoc=all,
    linkcolor=black,
}
\renewcommand{\contentsname}{Содержание}

% Redefinition of ToC command to get centered heading
\makeatletter
\renewcommand{\tableofcontents}{%
  \@starttoc{toc}%
}
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%% Unmarked sections %%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{changepage}

\newcommand{\unmarkedsection}[1]{\begin{adjustwidth}{-0.75cm}{0cm}\section*{#1\phantomsection\markright{#1}{}}\end{adjustwidth} \addcontentsline{toc}{section}{#1}}
\newcommand{\unmarkedsectionL}[1]{\begin{adjustwidth}{-0.75cm}{0cm}\section*{#1\phantomsection\markright{#1}{}}\end{adjustwidth} \addcontentsline{toc}{subsection}{#1}}
\newcommand{\unmarkedsectionNT}[1]{\begin{adjustwidth}{-0.75cm}{0cm}\section*{#1\phantomsection\markright{#1}{}}\end{adjustwidth}}
\newcommand{\unmarkedsectionLine}[0]{\vspace{-0.5cm} \begin{adjustwidth}{-0.75cm}{0cm}{\color{blueMain}\rule{\linewidth}{1pt}}\end{adjustwidth}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Line height %%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{setspace}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
