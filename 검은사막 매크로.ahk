#include Gdip.ahk		
#include Gdip_ImageSearch.ahk
#include Search_img.ahk		
;~ ��Ȱ�� �̹��� ��ġ ���
#include desert_gui.ahk		; GUI ���
#include MouseClick.ahk		; ���콺 Ŭ�� ���
#include globalXY.ahk		; ��ġ ��ǥ ��� (global ����)
#include common.ahk		    ; �����Լ�

#include start_desert.ahk	; ���� �� ���� ��� ( �ǾƷ� �Լ� ) ƨ���� �� ������ �׽�Ʈ ��
#include ũ��ī.ahk			; ������ġ (ũ��ī) - ���
#include repeat.ahk			; ������ġ (�ڵ����) - ���
;~ #include repeat�׽�Ʈ.ahk	; �ڵ���� �׽�Ʈ
#include fishing.ahk		; ������ġ (����) - ���
#include MQuest.ahk			; ������ġ (������) - ���
#include suppress.ahk		; ������ġ (���) - ���

global �ݺ�Ƚ�� := �ݺ�Ƚ��
global ��Ŭ����Ƚ�� := 0
global PixieEatLimit 
global fishing��ũ�ν���		; ���� �ݺ��� true, false
global main��ũ�ν��� 		; ���� ����Ʈ �ݺ��� true, false
global repeat��ũ�ν��� 		; �ڵ���� �ݺ��� true, false
global ũ��ī��ũ�ν��� 		; ũ��ī �ݺ��� true, false
global �����ũ�ν��� 		; ����Ƿ� �ݺ��� true, false

global IF_Start_GPS			; ������ġ
global SelectStageNum 	; ����ܰ�
global petEat 			;�����
global crystal
global gTobal1, gTobal2, gTobal3, gTobal4, gTobal5, gTobal6, gTobal7, gTobal8, gTobal9, gTobal10, gTobal11, gTobal12, gTobal13, gTobal14 ; ����ܰ�

coordmode,pixel,screen
return 

Button����:
{
	Gui, Submit, NoHide
	GuiControl, , A, ����
	
	global WindowName := WinNmEdit	;	���μ��� �̸�
	;~ global Server := StartServer	;	��������_ ����۽� ���
	IF_Start_GPS := StartGPS		;	������ġ_ ������ �Լ�( ahk )�� ����.
	PixieEatLimit := blackPixieEat	;	������ ���� ���� repeat�� ����
	SelectStageNum  := suppressStage ;	����ܰ� �ޱ�
	;repPoint := repeatPoint 		; 	������
	petEat := petEatSel				; �����
	crystal := crystalSel			; �����ռ�
	
	; ��� �ܰ� ����
	gTobal1 := Tobal1
	gTobal2 := Tobal2
	gTobal3 := Tobal3
	gTobal4 := Tobal4
	gTobal5 := Tobal5
	gTobal6 := Tobal6
	gTobal7 := Tobal7
	gTobal8 := Tobal8
	gTobal9 := Tobal9
	gTobal10 := Tobal10
	gTobal11 := Tobal11
	gTobal12 := Tobal12
	gTobal13 := Tobal13
	gTobal14 := Tobal14
		
	WinGet,processId,ID,%WindowName%

	setTimer, StartSearch, 1800000
	startGPS()
}

return
Button����:
{
	Gui, Submit, noHide
	GuiControl, , A, ����
	
	fishing��ũ�ν��� = false
	main��ũ�ν��� = false
	repeat��ũ�ν��� = false
	ũ��ī��ũ�ν��� = false
	�����ũ�ν��� = false
	SetTimer, StartSearch, Off 
}
return 
Button����:
{
	Gui, Submit, noHide
	; ���μ����̸�
	IniWrite, %WinNmEdit%, %A_ScriptDir%\setting.ini, WindowName, name		
	
	; ���
	IniWrite, %Tobal1%, %A_ScriptDir%\setting.ini, Tobal, boss1
	IniWrite, %Tobal2%, %A_ScriptDir%\setting.ini, Tobal, boss2
	IniWrite, %Tobal3%, %A_ScriptDir%\setting.ini, Tobal, boss3
	IniWrite, %Tobal4%, %A_ScriptDir%\setting.ini, Tobal, boss4
	IniWrite, %Tobal5%, %A_ScriptDir%\setting.ini, Tobal, boss5
	IniWrite, %Tobal6%, %A_ScriptDir%\setting.ini, Tobal, boss6
	IniWrite, %Tobal7%, %A_ScriptDir%\setting.ini, Tobal, boss7
	IniWrite, %Tobal8%, %A_ScriptDir%\setting.ini, Tobal, boss8
	IniWrite, %Tobal9%, %A_ScriptDir%\setting.ini, Tobal, boss9
	IniWrite, %Tobal10%, %A_ScriptDir%\setting.ini, Tobal, boss10
	IniWrite, %Tobal11%, %A_ScriptDir%\setting.ini, Tobal, boss11
	IniWrite, %Tobal12%, %A_ScriptDir%\setting.ini, Tobal, boss12
	IniWrite, %Tobal13%, %A_ScriptDir%\setting.ini, Tobal, boss13
	IniWrite, %Tobal14%, %A_ScriptDir%\setting.ini, Tobal, boss14
	
	; �����ɼ�
	IniWrite, %crystalSel%, %A_ScriptDir%\setting.ini, Option, crystalSel
	; �����۸��̿ɼ�
	IniWrite, %blackPixieEat%, %A_ScriptDir%\setting.ini, Option, blackPixieEat
	; ����̿ɼ�
	IniWrite, %petEatSel%, %A_ScriptDir%\setting.ini, Option, petEatSel
	
	�����Լ�()
}
return

F2::
{
	Gui, Submit, NoHide
	GuiControl, , A, ����
	
	global WindowName := WinNmEdit	;	���μ��� �̸�
	;~ global Server := StartServer	;	��������_ ����۽� ���
	IF_Start_GPS := StartGPS		;	������ġ_ ������ �Լ�( ahk )�� ����.
	PixieEatLimit := blackPixieEat	;	������ ���� ���� repeat�� ����
	SelectStageNum  := suppressStage ;	����ܰ� �ޱ�
	;repPoint := repeatPoint 		; 	������
	petEat := petEatSel				;�����
	crystal := crystalSel			; �����ռ�

	WinGet,processId,ID,%WindowName%

	setTimer, StartSearch, 1800000
	startGPS()
}
return 
F3::
{
	Gui, Submit, noHide
	GuiControl, , A, ����
	
	fishing��ũ�ν��� = false
	main��ũ�ν��� = false
	repeat��ũ�ν��� = false
	ũ��ī��ũ�ν��� = false
	�����ũ�ν��� = false
	SetTimer, StartSearch, Off 
}
return
F4::
{
	�����Լ�()
}
return 

�����Լ�()
{
	��ũ�ν��� :=false
	
	Gui, Submit, noHide
	GuiControl, , A, ����
	
	ExitApp
}

return 

startGPS(){
	
	if(IF_Start_GPS == "���ӽ���"){
		���ۼ�ġ()
	}else if(IF_Start_GPS == "��������"){
		��������()
	}else if(IF_Start_GPS == "�ڵ����"){
		repeat��ũ�ν��� = true
		ũ��ī��ũ�ν��� = true
		�ڵ���ɽ���()
	}else if(IF_Start_GPS == "��������"){
		��������()
	}else if(IF_Start_GPS == "������"){
		main��ũ�ν��� = true
		������()
	}else if(IF_Start_GPS == "����"){
		fishing��ũ�ν��� = true
		����()
	}else if(IF_Start_GPS == "ũ��ī"){
		ũ��ī��ũ�ν��� = true
		ũ��ī("N")
	}else if(IF_Start_GPS == "���"){
		�����ũ�ν��� = true
		�������()
	}
}

return 