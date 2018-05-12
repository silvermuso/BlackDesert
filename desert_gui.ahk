Gui, Add, Text, x12 y9 w90 h20 , *시작위치
Gui, Add, ComboBox, x102 y9 w100 h20 vStartGPS Choose1, 자동사냥|메인퀘|크자카|낚시|토벌
Gui, Add, Text, x212 y9 w80 h20 , *프로세스명
Gui, Add, Edit, x292 y9 w100 h20 vWinNmEdit
Gui, Add, Text, x12 y39 w90 h20 , 장비제물
Gui, Add, ComboBox, x102 y39 w100 h20 vblackPixieEat Choose5, |회색|하얀색|초록색|파란색|보라색|노란색
Gui, Add, Text, x12 y69 w90 h20 , 펫 먹이
Gui, Add, ComboBox, x102 y69 w100 h20 vpetEatSel Choose2, |기본|영양식
Gui, Add, Text, x212 y39 w80 h20 , 수정합성
Gui, Add, ComboBox, x292 y39 w100 h20 vcrystalSel Choose2, |초록색|파란색
Gui, Add, GroupBox, x2 y-11 w130 h0 , GroupBox
Gui, Add, Tab, x12 y139 w550 h150 , 토벌
Gui, Add, Text, x22 y169 w80 h20 , 빨간코
Gui, Add, DropDownList, x102 y169 w40 h60 vTobal1, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x152 y169 w80 h20 , 기아스
Gui, Add, DropDownList, x232 y169 w40 h20 vTobal2, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x282 y169 w80 h20 , 비겁한베그
Gui, Add, DropDownList, x362 y169 w40 h20 vTobal3, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x412 y169 w80 h20 , 알룬디
Gui, Add, DropDownList, x492 y169 w40 h20 vTobal4, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x22 y199 w80 h20 , 티티움
Gui, Add, DropDownList, x102 y199 w40 h20 vTobal5, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x152 y199 w80 h20 , 머스칸
Gui, Add, DropDownList, x232 y199 w40 h20 vTobal6, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x282 y199 w80 h20 , 오르그
Gui, Add, DropDownList, x362 y199 w40 h20 vTobal7, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x412 y199 w80 h20 , 켈카스
Gui, Add, DropDownList, x492 y199 w40 h20 vTobal8, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x22 y229 w80 h20 , 검은갈기
Gui, Add, DropDownList, x102 y229 w40 h20 vTobal9, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x152 y229 w80 h20 , 사우닐
Gui, Add, DropDownList, x232 y229 w40 h20 vTobal10, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x282 y229 w80 h20 , 게아쿠
Gui, Add, DropDownList, x362 y229 w40 h20 vTobal11, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x412 y229 w80 h20 , 쿠베
Gui, Add, DropDownList, x492 y229 w40 h20 vTobal12, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x22 y259 w80 h20 , 우라카
Gui, Add, DropDownList, x102 y259 w40 h20 vTobal13, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x152 y259 w80 h20 , 핵세마리
Gui, Add, DropDownList, x232 y259 w40 h20 vTobal14, 1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25
Gui, Add, Text, x12 y99 w90 h20 , 현재상태:
Gui, Add, Text, x102 y99 w90 h20 vA, 멈춤
Gui, Add, ListBox, x12 y300 w560 h120 vl_b
Gui, Add, Button, x412 y99 w50 h20 vButton시작, 시작
Gui, Add, Button, x462 y99 w50 h20 vButton멈춤, 멈춤
Gui, Add, Button, x512 y99 w50 h20 vButton종료, 종료

Gui, Show

;창이름 불러오기
IniRead OutputVar, %A_ScriptDir%\setting.ini, WindowName, name
GuiControl, , WinNmEdit,  %OutputVar%
;토벌세팅 불러오기
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss1
GuiControl, ChooseString, Tobal1, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss2
GuiControl, ChooseString, Tobal2, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss3
GuiControl, ChooseString, Tobal3, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss4
GuiControl, ChooseString, Tobal4, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss5
GuiControl, ChooseString, Tobal5, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss6
GuiControl, ChooseString, Tobal6, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss7
GuiControl, ChooseString, Tobal7, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss8
GuiControl, ChooseString, Tobal8, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss9
GuiControl, ChooseString, Tobal9, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss10
GuiControl, ChooseString, Tobal10, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss11
GuiControl, ChooseString, Tobal11, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss12
GuiControl, ChooseString, Tobal12, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss13
GuiControl, ChooseString, Tobal13, %OutputVar%
IniRead OutputVar, %A_ScriptDir%\setting.ini, Tobal, boss14
GuiControl, ChooseString, Tobal14, %OutputVar%


