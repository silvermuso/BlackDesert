﻿#include Gdip.ahk		
#include Gdip_ImageSearch.ahk
#include Search_img.ahk		
;~ 비활성 이미지 서치 헤더
#include desert_gui.ahk		; GUI 헤더
#include MouseClick.ahk		; 마우스 클릭 헤더
#include globalXY.ahk		; 서치 좌표 헤더 (global 변수)
#include common.ahk		    ; 공통함수

#include start_desert.ahk	; 시작 시 참조 헤더 ( 맨아래 함수 ) 튕겼을 시 재접속 테스트 중
#include 크자카.ahk			; 시작위치 (크자카) - 헤더
#include repeat.ahk			; 시작위치 (자동사냥) - 헤더
;~ #include repeat테스트.ahk	; 자동사냥 테스트
#include fishing.ahk		; 시작위치 (낙시) - 헤더
#include MQuest.ahk			; 시작위치 (메인퀘) - 헤더
#include suppress.ahk		; 시작위치 (토벌) - 헤더

global 반복횟수 := 반복횟수
global 총클리어횟수 := 0
global PixieEatLimit 
global fishing매크로시작		; 낚시 반복문 true, false
global main매크로시작 		; 메인 퀘스트 반복문 true, false
global repeat매크로시작 		; 자동사냥 반복문 true, false
global 크자카매크로시작 		; 크자카 반복문 true, false
global 토벌매크로시작 		; 토벌의뢰 반복문 true, false

global IF_Start_GPS			; 시작위치
global SelectStageNum 	; 토벌단계
global petEat 			;펫먹이
global crystal
global gTobal1, gTobal2, gTobal3, gTobal4, gTobal5, gTobal6, gTobal7, gTobal8, gTobal9, gTobal10, gTobal11, gTobal12, gTobal13, gTobal14 ; 토벌단계

coordmode,pixel,screen
return 

Button시작:
{
	Gui, Submit, NoHide
	GuiControl, , A, 시작
	
	global WindowName := WinNmEdit	;	프로세스 이름
	;~ global Server := StartServer	;	서버선택_ 재시작시 사용
	IF_Start_GPS := StartGPS		;	시작위치_ 시작할 함수( ahk )를 정함.
	PixieEatLimit := blackPixieEat	;	흑정령 먹이 제한 repeat에 있음
	SelectStageNum  := suppressStage ;	토벌단계 받기
	;repPoint := repeatPoint 		; 	사냥장소
	petEat := petEatSel				; 펫먹이
	crystal := crystalSel			; 수정합성
	
	; 토벌 단계 세팅
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
Button멈춤:
{
	Gui, Submit, noHide
	GuiControl, , A, 멈춤
	
	fishing매크로시작 = false
	main매크로시작 = false
	repeat매크로시작 = false
	크자카매크로시작 = false
	토벌매크로시작 = false
	SetTimer, StartSearch, Off 
}
return 
Button종료:
{
	Gui, Submit, noHide
	; 프로세스이름
	IniWrite, %WinNmEdit%, %A_ScriptDir%\setting.ini, WindowName, name		
	
	; 토벌
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
	
	; 수정옵션
	IniWrite, %crystalSel%, %A_ScriptDir%\setting.ini, Option, crystalSel
	; 아이템먹이옵션
	IniWrite, %blackPixieEat%, %A_ScriptDir%\setting.ini, Option, blackPixieEat
	; 펫먹이옵션
	IniWrite, %petEatSel%, %A_ScriptDir%\setting.ini, Option, petEatSel
	
	종료함수()
}
return

F2::
{
	Gui, Submit, NoHide
	GuiControl, , A, 시작
	
	global WindowName := WinNmEdit	;	프로세스 이름
	;~ global Server := StartServer	;	서버선택_ 재시작시 사용
	IF_Start_GPS := StartGPS		;	시작위치_ 시작할 함수( ahk )를 정함.
	PixieEatLimit := blackPixieEat	;	흑정령 먹이 제한 repeat에 있음
	SelectStageNum  := suppressStage ;	토벌단계 받기
	;repPoint := repeatPoint 		; 	사냥장소
	petEat := petEatSel				;펫먹이
	crystal := crystalSel			; 수정합성

	WinGet,processId,ID,%WindowName%

	setTimer, StartSearch, 1800000
	startGPS()
}
return 
F3::
{
	Gui, Submit, noHide
	GuiControl, , A, 멈춤
	
	fishing매크로시작 = false
	main매크로시작 = false
	repeat매크로시작 = false
	크자카매크로시작 = false
	토벌매크로시작 = false
	SetTimer, StartSearch, Off 
}
return
F4::
{
	종료함수()
}
return 

종료함수()
{
	매크로시작 :=false
	
	Gui, Submit, noHide
	GuiControl, , A, 멈춤
	
	ExitApp
}

return 

startGPS(){
	
	if(IF_Start_GPS == "게임시작"){
		시작서치()
	}else if(IF_Start_GPS == "서버선택"){
		서버선택()
	}else if(IF_Start_GPS == "자동사냥"){
		repeat매크로시작 = true
		크자카매크로시작 = true
		자동사냥시작()
	}else if(IF_Start_GPS == "광고제거"){
		광고제거()
	}else if(IF_Start_GPS == "메인퀘"){
		main매크로시작 = true
		메인퀘()
	}else if(IF_Start_GPS == "낚시"){
		fishing매크로시작 = true
		낚시()
	}else if(IF_Start_GPS == "크자카"){
		크자카매크로시작 = true
		크자카("N")
	}else if(IF_Start_GPS == "토벌"){
		토벌매크로시작 = true
		토벌시작()
	}
}

return 