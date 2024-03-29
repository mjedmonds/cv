%% Start of file `awesome-cv.cls'.
% Awesome CV Class File
%
% This class has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Notes:
% 1) This class file defines the structure and layout of the template file (cv.tex, resume.tex).
% 2) It has been written in such a way that under most circumstances you
% should not need to edit it.
%
% Class license:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle reverse list environment
\RequirePackage{etaremune}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
% \RequirePackage[showframe]{geometry}
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
\RequirePackage{fontawesome}
\RequirePackage{academicons}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed for the photo ID
\RequirePackage[skins]{tcolorbox}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir

%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
% \definecolor{gray}{HTML}{5D5D5D}
\definecolor{gray}{HTML}{444444}
% \definecolor{lightgray}{HTML}{999999}
\definecolor{lightgray}{HTML}{7A7A7A}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{black}
\colorlet{graytext}{darkgray}
\colorlet{lighttext}{gray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-blue}{HTML}{0277B1}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
% note: this line is also in the main tex and is redefined there
\colorlet{awesome}{awesome-blue}

% Boolean value to switch section color highlighting
\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{false}

% Awesome section color
\def\@sectioncolor#1#2#3{%
  \ifbool{acvSectionColorHighlight}{{\color{awesome}#1#2#3}}{#1#2#3}%
}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
% Set the FontAwesome font to be up-to-date.
% \newfontfamily\FA[Path=\@fontdir]{FontAwesome}
% Set font for header (default is Roboto)
\newfontfamily\roboto[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
]{Roboto}

\newfontfamily\robotolight[
  Path=\@fontdir,
  UprightFont=*-Thin,
  ItalicFont=*-ThinItalic,
  BoldFont=*-Medium,
  BoldItalicFont=*-MediumItalic,
]{Roboto}

\newfontfamily\georgia[
  Path=\@fontdir,
  UprightFont=*-regular,
  ItalicFont=*-italic,
  BoldFont=*-bold,
  BoldItalicFont=*-bold-italic,
]{Georgia}

\newfontfamily\timesnewroman[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  Path=\@fontdir,
]{TimesNewRoman}

\newfontfamily\trebuchetms[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  Path=\@fontdir,
]{TrebuchetMS}

\newfontfamily\avenirnext[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  Path=\@fontdir,
]{AvenirNext}

\newfontfamily\avenirnextlight[
  Path=\@fontdir,
  UprightFont=*-UltraLight,
  ItalicFont=*-UltraLightItalic,
  BoldFont=*-Medium,
  BoldItalicFont=*-MediumItalic,
]{AvenirNext}

\newfontfamily\helvetica[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  Path=\@fontdir,
]{Helvetica}

\newfontfamily\garamond[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
  Path=\@fontdir,
]{AGaramondPro}


% set font for main (original is sourcesanspro)
% \renewcommand{\fontchoice}{\sourcesanspro}
% \renewcommand{\fontchoicelight}{\sourcesansprolight}
\newcommand*{\fontchoice}{\garamond}
\newcommand*{\fontchoicelight}{\garamond}

% set font for header
\newcommand*{\headerfont}{\roboto}
\newcommand*{\headerfontlight}{\robotolight}

\newcommand*{\footerfont}{\fontchoice}
\newcommand*{\bodyfont}{\fontchoice}
\newcommand*{\bodyfontlight}{\fontchoicelight}

\newcommand*{\smallfontsize}{10pt}
\newcommand*{\normalfontsize}{11pt}
\newcommand*{\largefontsize}{12pt}
\newcommand*{\namefontsize}{26pt}


%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\hspace{-8pt}\fontsize{\namefontsize}{1em}\headerfontlight\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{\namefontsize}{1em}\headerfont\bfseries\color{text} #1}}
% \newcommand*{\headerpositionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\scshape\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\itshape\color{text} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{\smallfontsize}{1em}\headerfont\itshape\color{text} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{9pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{\smallfontsize}{1em}\footerfont\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{\smallfontsize}{1em}\bodyfontlight\upshape\color{text}}

% For elements of entry
% \newcommand*{\entrytitlestyle}[1]{{\fontsize{\normalfontsize}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\entrytitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\entrysmalltitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\entrysmalltitlestyleit}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\itshape\color{text} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\color{text} #1}}
% \newcommand*{\entrydatestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\color{text} #1}}
% \newcommand*{\entrylocationstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\color{text} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of presentation
\newcommand*{\presentationentrytitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\bfseries\color{text} #1}}

% For elements of publication
\newcommand*{\publicationcontributionstyle}{\fontsize{\smallfontsize}{1em}\bodyfont\color{text}}
\newcommand*{\publicationenumeratestyle}{\fontsize{\smallfontsize}{1em}\bodyfont\color{text}}
% title with or without italics
% \newcommand*{\publicationtitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{text} #1}}
\newcommand*{\publicationtitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\color{text} #1}}
\newcommand*{\publicationauthorstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\color{text} #1}}
\newcommand*{\publicationconferencestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\publicationawardstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\bfseries\slshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\mdseries\color{text} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\scshape\color{text} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\color{text} #1}}
\newcommand*{\honorpositionstyle}[1]{\entrysmalltitlestyle{#1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\color{text} #1}}
% \newcommand*{\honorlocationstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{text} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\color{text} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\color{text} #1}}

% For elements of the cover letter
\newcommand*{\lettersectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\recipientaddressstyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\recipienttitlestyle}[1]{{\fontsize{\normalfontsize}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\lettertitlestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
\newcommand*{\letterdatestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\lettertextstyle}{\fontsize{\smallfontsize}{1.4em}\bodyfontlight\upshape\color{graytext}}
\newcommand*{\letternamestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\letterenclosurestyle}[1]{{\fontsize{\smallfontsize}{1em}\bodyfontlight\slshape\color{lighttext} #1}}


%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
% Define photo ID
% Usage: \photo[circle|rectangle,edge|noedge,left|right]{<path-to-image>}
\newcommand{\photo}[2][circle,edge,left]{%
  \def\@photo{#2}
  \@for\tmp:=#1\do{%
    \ifthenelse{\equal{\tmp}{circle} \or \equal{\tmp}{rectangle}}%
      {\let\@photoshape\tmp}{}%
    \ifthenelse{\equal{\tmp}{edge} \or \equal{\tmp}{noedge}}%
      {\let\@photoedge\tmp}{}%
    \ifthenelse{\equal{\tmp}{left} \or \equal{\tmp}{right}}%
      {\let\@photoalign\tmp}{}%
  }%
}
\def\@photoshape{circle}
\def\@photoedge{edge}
\def\@photoalign{left}

% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's gitlab (optional)
% Usage: \gitlab{<gitlab-nick>}
\newcommand*{\gitlab}[1]{\def\@gitlab{#1}}

% Defines writer's stackoverflow profile (optional)
% Usage: \stackoverflow{<so userid>}{<so username>}
%   e.g.https://stackoverflow.com/users/123456/sam-smith
%       would be \stackoverflow{123456}{sam-smith}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% google scholar
\newcommand*{\googlescholar}[1]{\def\@googlescholar{#1}}

% Usage: \twitter{<twitter handle>}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}

% Defines writer's skype (optional)
% Usage: \skype{<skype account>}
\newcommand*{\skype}[1]{\def\@skype{#1}}

% Defines writer's reddit (optional)
% Usage: \reddit{<reddit account>}
\newcommand*{\reddit}[1]{\def\@reddit{#1}}

% Defines writer's xing (optional)
% Usage: \xing{<xing name>}
\newcommand*{\xing}[1]{\def\@xing{#1}}

% Defines writer's twitter (optional)
% Defines writer's extra informations (optional)
% Usage: \extrainfo{<extra informations>}
\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}

% Defines recipient's information (cover letter only)
% Usage: \recipient{<recipient name>}{<recipient address>}
% Usage: \recipientname{<recipient name>}
% Usage: \recipientaddress{<recipient address>}
\newcommand*{\recipient}[2]{\def\@recipientname{#1}\def\@recipientaddress{#2}}
\newcommand*{\recipientname}[1]{\def\@recipientname{#1}}
\newcommand*{\recipientaddress}[1]{\def\@recipientaddress{#1}}

% Defines the title for letter (cover letter only, optional)
% Usage: \lettertitle{<title>}
\newcommand*{\lettertitle}[1]{\def\@lettertitle{#1}}

% Defines the date for letter (cover letter only)
% Usage: \letterdate{<date>}
\newcommand*{\letterdate}[1]{\def\@letterdate{#1}}

% Defines a message of opening for letter (cover letter only)
% Usage: \letteropening{<message>}
\newcommand*{\letteropening}[1]{\def\@letteropening{#1}}

% Defines a message of closing for letter (cover letter only)
% Usage: \letterclosing{<message>}
\newcommand*{\letterclosing}[1]{\def\@letterclosing{#1}}

% Defines an enclosure for letter (cover letter only, optional)
% Usage: \letterenclosure[<enclosure name>]{<enclosure>}
\newcommand*{\letterenclname}[1][Enclosure]{\def\@letterenclname{#1}}
\newcommand*{\letterenclosure}[2][]{%
  % if an optional argument is provided, use it to redefine \enclname
  \ifthenelse{\equal{#1}{}}{}{\def\@letterenclname{#1}}
  \def\@letterenclosure{#2}
}


%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
%% Define helper macros a user can change easily
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{0mm}
\newcommand{\acvHeaderAfterPositionSkip}{0mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvLocationDateSep}{ \textbar }
\newcommand{\acvHeaderAfterSocialSkip}{2mm}
\newcommand{\acvHeaderAfterQuoteSkip}{1mm}
\newcommand{\achPublicationEnumerateSep}{0.05\textwidth}

% Others
\newcommand{\acvSectionTopSkip}{1mm}
\newcommand{\acvSectionContentTopSkip}{0mm}
\newcommand{\acvSectionContentBottomSkip}{2mm}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% Use to align an element of tabular table
\newcolumntype{Q}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{W}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{E}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}

%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][L]{%
  % \newcommand*{\drawphoto}{%
  %   \ifthenelse{\isundefined{\@photo}}{}{%
  %     \newlength{\photodim}
  %     \ifthenelse{\equal{\@photoshape}{circle}}%
  %       {\setlength{\photodim}{1.3cm}}%
  %       {\setlength{\photodim}{1.8cm}}%
  %     \ifthenelse{\equal{\@photoedge}{edge}}%
  %       {\def\@photoborder{darkgray}}%
  %       {\def\@photoborder{none}}%
  %     \begin{tikzpicture}%
  %       \node[\@photoshape, draw=\@photoborder, line width=0.3mm, inner sep=\photodim, fill overzoom image=\@photo] () {};
  %     \end{tikzpicture}
  %   }%
  % }
  % \newlength{\headertextwidth}
  % \newlength{\headerphotowidth}
  % \ifthenelse{\isundefined{\@photo}}{
  %   \setlength{\headertextwidth}{\textwidth}
  %   \setlength{\headerphotowidth}{0cm}
  % }{%
  %   \setlength{\headertextwidth}{0.76\textwidth}
  %   \setlength{\headerphotowidth}{0.24\textwidth}
  % }%
  % \begin{minipage}[c]{\headerphotowidth}%
  %   \ifthenelse{\equal{\@photoalign}{left}}{\raggedright\drawphoto}{}
  % \end{minipage}
  % todo: hacky way to avoid margin...
  \begin{minipage}[l]{0.984\textwidth}
  \begin{tabular}{ l r }
    \begin{minipage}{0.34\textwidth}
      % \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
      \raggedright
      \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \end{minipage}
    &
    \begin{minipage}{0.65\textwidth}
      %\\[\acvHeaderAfterNameSkip]%
      \raggedleft
      \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}%
      \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
      \headersocialstyle{%
        \newbool{isstart}%
        \setbool{isstart}{true}%
        \ifthenelse{\isundefined{\@mobile}}%
          {}%
          {%
            \faMobile\acvHeaderIconSep\@mobile%
            \setbool{isstart}{false}%
          }%
        \ifthenelse{\isundefined{\@email}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}%
          }%
        \ifthenelse{\isundefined{\@homepage}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}%
          }%
        \ifthenelse{\isundefined{\@github}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://github.com/\@github}{\faGithubSquare\acvHeaderIconSep}%
          }%
        \ifthenelse{\isundefined{\@gitlab}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://gitlab.com/\@gitlab}{\faGitlab\acvHeaderIconSep\@gitlab}%
          }%
        \ifthenelse{\isundefined{\@stackoverflowid}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\acvHeaderIconSep\@stackoverflowname}%
          }%
        \ifthenelse{\isundefined{\@googlescholar}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://scholar.google.com/citations?user=\@googlescholar}{\aiGoogleScholar\acvHeaderIconSep}%
          }%
        \ifthenelse{\isundefined{\@linkedin}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedinSquare\acvHeaderIconSep}%
          }%
        \ifthenelse{\isundefined{\@twitter}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://twitter.com/\@twitter}{\faTwitter\acvHeaderIconSep\@twitter}%
          }%
        \ifthenelse{\isundefined{\@skype}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \faSkype\acvHeaderIconSep\@skype%
          }%
        \ifthenelse{\isundefined{\@reddit}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://www.reddit.com/user/\@reddit}{\faReddit\acvHeaderIconSep\@reddit}%
          }%
        \ifthenelse{\isundefined{\@xing}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \href{https://www.xing.com/profile/\@xing}{\faXingSquare\acvHeaderIconSep\@xing}
          }%
        \ifthenelse{\isundefined{\@extrainfo}}%
          {}%
          {%
            \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
            \@extrainfo%
          }%
      }
      % \\[\acvHeaderAfterSocialSkip]%
      \ifthenelse{\isundefined{\@quote}}%
        {}%
        {\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}%
    \end{minipage}
  \end{tabular}
  \end{minipage}
  % uncommend to renable drawing photo
  % \begin{minipage}[c]{\headerphotowidth}%
    % \ifthenelse{\equal{\@photoalign}{right}}{\raggedleft\drawphoto}{}
  % \end{minipage}
  \vspace{6mm}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{gray}\vhrulefill{0.9pt}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{%
  \vspace{\acvSectionContentTopSkip}
  % \vspace{-3mm}
  \subsectionstyle{#1}
  \phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{%
  \vspace{\acvSectionContentTopSkip}
  % \vspace{-3mm}
  \paragraphstyle
}{%
  \par
  % \vspace{2mm}
}

% Define an environment for cventry
\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
  \vspace{\acvSectionContentBottomSkip}
}

\newenvironment{pubenumerate}
  {\renewcommand\labelenumi{\publicationenumeratestyle[\theenumi]}
   \etaremune[
     topsep=0pt,
     itemsep=0pt,
     parsep=0pt,partopsep=0pt,
     itemindent=0pt,
     leftmargin={\achPublicationEnumerateSep}]}
  {\endetaremune}

% Define an environment for cventry
\newenvironment{cvpublications}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
  % \begin{pubenumerate}[leftmargin=\achPublicationEnumerateSep, nosep, noitemsep, font=\publicationenumeratestyle, label={[\arabic*]}]
  \begin{pubenumerate}
    \setlength{\parskip}{0pt}
}{%
  \end{pubenumerate}
  \end{center}
}
% \renewcommand{enumerate}{\begin{etaremune}}{\end{etaremune}}

% Define an environment for cventry
\newenvironment{resumepublications}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
}
% \renewcommand{enumerate}{\begin{etaremune}}{\end{etaremune}}

% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
\newcommand*{\cventry}[5]{%
  % \vspace{-2mm}
  % \setlength\tabcolsep{0pt}
  % \setlength{\extrarowheight}{0pt}
  \ifempty{#2#3}
  {\entrypositionstyle{#1} \hfill \entrydatestyle{#4}\\}
  % style below is multiline for position, title, location and date
  % {\entrytitlestyle{#2} \hfill \entrylocationstyle{#3}\\
  % \entrypositionstyle{#1} \hfill \entrydatestyle{#4}\\}
  % single line
  {\ifempty{#3}{
    \entrytitlestyle{#2}, \entrypositionstyle{#1} \hfill \entrydatestyle{#4}
  }{
    \entrytitlestyle{#2}, \entrypositionstyle{#1}, \entrylocationstyle{#3} \hfill \entrydatestyle{#4}}
  }
  % \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} &

  \descriptionstyle{#5}
  % if you want to have the description not be part of the tabular, comment above and uncomment this
  % \descriptionstyle{#5}
}

\newcommand*{\educationentry}[3]{%
  % \vspace{-2mm}
  % \setlength\tabcolsep{0pt}
  % \setlength{\extrarowheight}{0pt}
  % style below is multiline for position, title, location and date
  % {\entrytitlestyle{#2} \hfill \entrylocationstyle{#3}\\
  % \entrypositionstyle{#1} \hfill \entrydatestyle{#4}\\}
  % single line
  \begin{justify}
    \entrytitlestyle{#1}, \entrylocationstyle{#2}\\
  % \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} &
  \vspace{1mm}
  \descriptionstyle{#3}
  \end{justify}
  % if you want to have the description not be part of the tabular, comment above and uncomment this
  % \descriptionstyle{#5}
}

\newcommand*{\educationdescription}[3]{%
  \descriptionstyle{#1} \hfill \entrydatestyle{#2}\\
  \ifempty{#3}
  {% show nothing if no thesis title is specified
  }
  {
    \vspace{-7mm}
    \begin{cvitems}
      \item {#3}
    \end{cvitems}
  }
}

% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
\newcommand*{\presentationentry}[5]{%
  % \vspace{-2mm}
  % \setlength\tabcolsep{0pt}
  % \setlength{\extrarowheight}{0pt}
  \ifempty{#2#3}
    {\entrypositionstyle{#1} \hfill \entrydatestyle{#4} \\}
    {\presentationentrytitlestyle{#2} \hfill \entrylocationstyle{#3} \\
    \entrypositionstyle{#1} \hfill \entrydatestyle{#4} \\}
  % \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} &
  \descriptionstyle{#5} \hfill
  % if you want to have the description not be part of the tabular, comment above and uncomment this
  % \descriptionstyle{#5}
}

% Define a publication of cv information
% Usage: \cvpublication{<publication title>}{<authors>}{<conference>}{<awards>}
\newcommand*{\cvpublication}[4]{%
  % \vspace{-2.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  % todo: magical number in vspace is hacky
  \begin{minipage}[t]{\textwidth - \achPublicationEnumerateSep}\vspace{-9.35pt}
  % \begin{tabular*}{\textwidth - \achPublicationEnumerateSep}{@{\extracolsep{\fill}} L{\textwidth - \achPublicationEnumerateSep - 1.5cm} R{1.5cm}}
  \publicationauthorstyle{#2} \hfill \publicationawardstyle{#4}
  \\
  % this can be moved inside of the tabular if desired
  ``\publicationtitlestyle{#1},'' \publicationconferencestyle{#3}
  \end{minipage}
}

% Define a publication of cv information
% Usage: \cvpublication{<publication title>}{<authors>}{<conference>}{<awards>}
\newcommand*{\resumepublication}[1]{%
  \descriptionstyle{#1}
}

\newcommand*{\cvequalcontribution}{
  % equal contributors
  \vspace{-4pt}
  \begin{flushright}
    \publicationcontributionstyle (* indicates equal contribution)
  \end{flushright}
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{%
  \begin{center}
}{%
  \end{center}
}
% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{%
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define an environment for cvhonor
\newenvironment{cvhonors}{%
  \vspace{\acvSectionContentTopSkip}
  % \vspace{-2mm}
  \begin{center}
    % \setlength\tabcolsep{0pt}
    % \setlength{\extrarowheight}{0pt}
}{%
  \end{center}
}
% Define a line of cv information(honor, award or something else)
% Usage: \cvhonor{<position>}{<title>}{<location>}{<date>}
\newcommand*{\cvhonor}[4]{%
  \honorpositionstyle{#1}, \honortitlestyle{#2}, \honorlocationstyle{#3} \hfill \honordatestyle{#4}\\
}

% Define an environment for cvskill
\newenvironment{cvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
    \setlength\tabcolsep{1.5ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} l Q{\textwidth * \real{0.9}}}
}{%
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(skill)
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{%
  \skilltypestyle{#1} & \skillsetstyle{#2} \\
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{%
  % \vspace{-4.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=4ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\bullet}
}{%
  \end{itemize}
  \end{justify}
  % \vspace{-4.0mm}
}


%-------------------------------------------------------------------------------
%                Commands for elements of Cover Letter
%-------------------------------------------------------------------------------
% Define an environment for cvletter
\newenvironment{cvletter}{%
  \lettertextstyle
}{%
}

% Define a section for the cover letter
% Usage: \lettersection{<section-title>}
\newcommand{\lettersection}[1]{%
  \par\addvspace{2.5ex}
  \phantomsection{}
  \lettersectionstyle{#1}
  \color{gray}\vhrulefill{0.9pt}
  \par\nobreak\addvspace{0.4ex}
}

% Define a title of the cover letter
% Usage: \makelettertitle
\newcommand*{\makelettertitle}{%
  \vspace{8.4mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \recipienttitlestyle{\@recipientname} & \letterdatestyle{\@letterdate}
  \end{tabular*}
  \begin{singlespace}
    \recipientaddressstyle{\@recipientaddress} \\\\
  \end{singlespace}
  \ifthenelse{\isundefined{\@lettertitle}}
    {}
    {\lettertitlestyle{\@lettertitle} \\}
  \lettertextstyle{\@letteropening}
}

% Define a closing of the cover letter
% Usage: \makeletterclosing
\newcommand*{\makeletterclosing}{%
  \vspace{3.4mm}
  \lettertextstyle{\@letterclosing} \\\\
  \letternamestyle{\@firstname\ \@lastname}
  \ifthenelse{\isundefined{\@letterenclosure}}
    {\\}
    {%
      \\\\\\
      \letterenclosurestyle{\@letterenclname: \@letterenclosure} \\
    }
}