\ProvidesClass{zjureport}
\LoadClass{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}

\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}

\setCJKmainfont[ItalicFont={KaiTi},BoldFont={SimHei}]{SimSun}

\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}
\newcommand\class[1]{\def\@class{#1}}
% 页眉
\pagestyle{fancy}
\lhead{报告名称：\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
\begin{figure}[h]
    \centerline{\includegraphics[width=0.5\linewidth]{head.jpg}}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
	姓名：    & \zjuu[120pt]\@name    	&学号： 		& \zjuu[75pt]\@stuid 			&学院: 		&\zjuu[120pt]\@college \\	
	专业： 	& \zjuu[120pt]\@major      &班级:		&\zjuu[75pt]\@class			&课程:		& \zjuu[120pt]\@course    \\	
	时间:		&\zjuu[120pt]\@date		&地点： 		& \zjuu[75pt]\@lab			&指导老师： 	& \zjuu[120pt]\@instructor  		
  \end{tabular*}
\end{table}
\begin{figure}[h]
    \centerline{\includegraphics[width=\linewidth]{line.png}}
\end{figure}
\begin{center}
	\vspace{0.1cm}
	\bfseries\huge{实验一}\\
	\vspace{0.1cm}
\end{center}	
\thispagestyle{empty}

}

% 封面
\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \includegraphics[width=\linewidth]{cover.png}
    \end{center}
    \vspace{1cm}
    \bfseries\Huge{\@course}\\
    \vspace{0.5cm}
    \bfseries\Large{\@expname}
    \vspace{3cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
        \bfseries{专业：}     & \@course \\ \cline{2-2}
        \bfseries{班别：} 	   & \@class  \\ \cline{2-2}
	   \bfseries{姓名：}     & \@name   \\ \cline{2-2}
        \bfseries{学号：}     & \@stuid  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}
