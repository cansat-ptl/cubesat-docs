\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yktsat-datasheet}[2020/07/19 Yktsat Datasheet]

\LoadClass[a4paper,11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%% Page geometry %%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[top=2cm, bottom=2cm, left=2.75cm, right=1.5cm]{geometry}

\setlength{\headheight}{20pt}
\setlength{\headsep}{15pt}
\setlength{\footskip}{25pt}

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
\markboth{Left}{Right}
\pagestyle{fancy}

\fancyheadoffset[L]{1.25cm}
\fancyfootoffset[L]{1.25cm}

\fancyhf{}
\AtBeginDocument{%
\lhead{{\footnotesize \nouppercase{\rightmark}}}%
\rhead{{\footnotesize \iDocName{}}}%
\rfoot{{\footnotesize {[PUBLIC]}\iDocCode{} \iDocRevision{} \iDocDate{} \hspace{1cm} \thepage}}%
\lfoot{{\footnotesize Якутские космические системы - http://yktsat.sjsa.ru/docs}}%
\chead{\HeaderRect}%
}

\let\HeadRule\headrule

\renewcommand\headrule{\color{blueAux}\HeadRule}

\fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Title formats %%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{titlesec}

\newlength\titleindent
\setlength\titleindent{1.0cm}

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

\hypersetup{
    colorlinks=true,
    linktoc=all,
    linkcolor=black,
}
\renewcommand{\contentsname}{Содержание}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%% Unmarked sections %%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\unmarkedsection}[1]{\section*{#1\phantomsection\markright{#1}{}} \addcontentsline{toc}{section}{#1}}
\newcommand{\unmarkedsectionL}[1]{\section*{#1\phantomsection\markright{#1}{}} \addcontentsline{toc}{subsection}{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Line height %%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{setspace}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
