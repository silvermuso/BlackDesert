;~ 토벌의뢰 ahk
global NextStageCheckCnt := 1
global CharacterStopCheckCnt := 1
토벌시작(){
	;~ 토벌입장
	;WinGet,processId,ID,%WindowName%
	global 
	Gui, Submit, noHide

	startTobal(gTobal1, "빨간코") 
	startTobal(gTobal2, "기아스")
	startTobal(gTobal3, "비겁한베그")
	startTobal(gTobal4, "알룬디")
	startTobal(gTobal5, "티티움")
	startTobal(gTobal6, "머스칸")
	startTobal(gTobal7, "오르그")
	startTobal(gTobal8, "켈카스")
	startTobal(gTobal9, "검은갈기")
	startTobal(gTobal10, "사우닐공성대장")
	startTobal(gTobal11, "게아쿠")
	startTobal(gTobal12, "쿠베")
	startTobal(gTobal13, "우라카")
	startTobal(gTobal14, "핵세마리")
			
	; 토벌 나가기
	leftClick(1230,70,1)
	sleep,1500

	; 영지 나가기
	leftClick(960,70,1)
	sleep,2000
	
	if(Search_img("Image\tobal\영지나가기확인.bmp",processId,x,y,70)){
		leftClick(x,y,1)
		sleep,5000
	}
	
	; 자동사냥
	leftClick(440,700,1)
	sleep,1000

	IF_Start_GPS := "자동사냥"
	GuiControl, ChooseString, StartGPS, %IF_Start_GPS%

	startGPS()
	/*
	NextStageCheck()

	while(%토벌매크로시작% == true){
		;~ 토벌의뢰 다음단계 체크
		if(NextStageCheckCnt >= 30){
			NextStageCheck()
			NextStageCheckCnt = 0
		}else{
			NextStageCheckCnt++
		}
		if(CharacterStopCheckCnt >= 60){
			MouseDragClick_Timer(160,560,205,470,300)
			CharacterStopCheckCnt = 0
		}else{
			CharacterStopCheckCnt++
		}
		
		sleep, 1000
	}
	*/
	
}

;~ 토벌의뢰 다음단계 체크 함수
NextStageCheck(){
	WinGet,processId,ID,%WindowName%
	
	;~ 임무성공시 확인버튼
	if(search_img_GPS("Image\tobal\토벌완료확인.bmp",processId,x,y,50,토벌완료확인X1,토벌완료확인Y1,토벌완료확인X2,토벌완료확인Y2)){
		sleep, 400
		;~ 다음단계 체크
		if(search_img_GPS("Image\tobal\2단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,2)
		}else if(search_img_GPS("Image\tobal\3단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,3)
		}else if(search_img_GPS("Image\tobal\4단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,4)
		}else if(search_img_GPS("Image\tobal\5단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,5)
		}else if(search_img_GPS("Image\tobal\6단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,6)
		}else if(search_img_GPS("Image\tobal\7단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,7)
		}else if(search_img_GPS("Image\tobal\8단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,8)
		}else if(search_img_GPS("Image\tobal\9단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,9)
		}else if(search_img_GPS("Image\tobal\10단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,10)
		}else if(search_img_GPS("Image\tobal\11단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,11)
		}else if(search_img_GPS("Image\tobal\12단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,12)
		}else if(search_img_GPS("Image\tobal\13단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,13)
		}else if(search_img_GPS("Image\tobal\14단계.bmp",processId,x,y,50,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
			NextClick(x,y,14)
		}else{
			NextClick(650,660,999)
		}
	}
	;~ else if(search_img_GPS("Image\tobal\15단계.bmp",processId,x,y,100,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
		;~ NextClick(x,y,15)
	;~ }else if(search_img_GPS("Image\tobal\16단계.bmp",processId,x,y,100,토벌다음단계X1,토벌다음단계Y1,토벌다음단계X2,토벌다음단계Y2)){
		;~ NextClick(x,y,16)
	;~ }
}
;~ 다음 스테이지를 클릭할지 안할지를 정함. 설정한 스테이지보다 높으면 중지
NextClick(x,y,NextStageNum){
	if(SelectStageNum >= NextStageNum){
		;~ msgbox, 다음확인
		leftClick(x,y,1)
	}else{
		;~ msgbox, 종료확인
		leftClick(650,660,1)
		토벌매크로시작 = false
		return
	}
	sleep, 17000
	;~ 자동사냥클릭
	leftClick(442,700,1)
}
/*
토벌입장(){
	startTobal(gTobal1, "빨간코") 
	startTobal(gTobal2, "기아스")
	startTobal(gTobal3, "비겁한베그")
	startTobal(gTobal4, "알룬디")
	startTobal(gTobal5, "티티움")
	startTobal(gTobal6, "머스칸")
	startTobal(gTobal7, "오르그")
	startTobal(gTobal8, "켈카스")
	startTobal(gTobal9, "검은갈기")
	startTobal(gTobal10, "사우닐공성대장")
	startTobal(gTobal11, "게아쿠")
	startTobal(gTobal12, "쿠베")
	startTobal(gTobal13, "우라카")
	startTobal(gTobal14, "핵세마리")
}
*/

;토벌 돌기
startTobal(psStage, psBossNm) {
	WinGet,processId,ID,%WindowName%
	find := false
	
	; 맨 왼쪽보스로 드래그
	while(true) {
		MouseDragClick(400,590,950,590)
		if(A_Index > 4) {
			break
		}
	}	

	if(psStage > 0) { ; 빨간코 토벌 시작	
		Loop, 14 {

			if(search_img_GPS("Image\tobal\도전.bmp",processId,x,y,50,0,540,238,600)){
				leftCLick(x,y,1)
			} else {
				leftCLick(100,570,1)
			}
		
			sleep,1000
			
			if(search_img("Image\tobal\" . psBossNm . ".bmp",processId,x,y,60)) {
				find := true
				sleep,1000
				break
			}
			
			if(search_img_GPS("Image\tobal\도전.bmp",processId,x,y,50,239,540,476,600)){
				leftCLick(x,y,1)
			} else {
				leftCLick(339,570,1)
			}	
			
			sleep,1000
			
			if(search_img("Image\tobal\" . psBossNm . ".bmp",processId,x,y,60)) {
				find := true
				sleep,1000
				break
			}
					
			if(search_img_GPS("Image\tobal\도전.bmp",processId,x,y,50,477,540,714,600)){
				leftCLick(x,y,1)
			} else {
				leftCLick(577,570,1)
			}	
			
			sleep,1000
			
			if(search_img("Image\tobal\" . psBossNm . ".bmp",processId,x,y,60)) {
				find := true
				sleep,1000
				break
			}
				
			
			if(search_img_GPS("Image\tobal\도전.bmp",processId,x,y,50,715,540,952,600)){
				leftCLick(x,y,1)
			} else {
				leftCLick(777,570,1)
			}	
			
			sleep,1000
				
			if(search_img("Image\tobal\" . psBossNm . ".bmp",processId,x,y,60)) {
				find := true
				sleep,1000
				break
			}
							
			
			if(search_img_GPS("Image\tobal\도전.bmp",processId,x,y,50,953,540,1280,600)){
				leftCLick(x,y,1)
			} else {
				leftCLick(1077,570,1)
			}	
			
			sleep,1000
				
			if(search_img_GPS("Image\tobal\" . psBossNm . ".bmp",processId,x,y,50,토벌보스X1,토벌보스Y1,토벌보스X2,토벌보스Y2)){	
				find := true
				sleep,1000
				break
			}
							
			;0 238, 476, 714, 952, 1190
			;540 600		
			MouseDragClick(952,600,239,600)
			sleep,2000
		}

		; 입장 횟수 0 이면 패스
		if(find) {
			if(search_img_GPS("Image\tobal\초기입장권0.bmp",processId,x,y,50,토벌입장X1,토벌입장Y1,토벌입장X2,토벌입장Y2)){
				find := false
			}
		}

		if(find){	
			if(search_img_GPS("Image\tobal\토벌입장.bmp",processId,x,y,50,토벌입장X1,토벌입장Y1,토벌입장X2,토벌입장Y2)){
				leftCLick(x,y,1)
				sleep,2000
				
				Loop, 30 {
					if(search_img_GPS("Image\tobal\" . psStage . "단계.bmp",processId,x,y,50,토벌이전단계X1,토벌이전단계Y1,토벌이전단계X2,토벌이전단계Y2)) {
					
						if(search_img_GPS("Image\tobal\반복재시작.bmp",processId,x,y,50,토벌반복재시작X1,토벌반복재시작Y1,토벌반복재시작X2,토벌반복재시작Y2)) {	
							leftClick(x,y,1)
							sleep, 1000
						}

						if(search_img_GPS("Image\tobal\토벌시작.bmp",processId,x,y,50,토벌시작X1,토벌시작Y1,토벌시작X2,토벌시작Y2)) {	
							leftClick(x,y,1)
							find := true
							sleep, 1000
							break
						}						
						
					} else {
						; 단계 낮춤
						leftCLick(500,280,1)
						sleep, 1000
					}
				}

			}
		}

		while(find) {
			
			if(search_img_GPS("Image\tobal\입장권0.bmp",processId,x,y,70,토벌입장권X1,토벌입장권Y1,토벌입장권X2,토벌입장권Y2)) {
				if(search_img_GPS("Image\tobal\그만하기.bmp",processId,x,y,70,즉시재도전X1,즉시재도전Y1,즉시재도전X2,즉시재도전Y2)) {
					leftCLick(x,y,1)
					sleep, 10000
					break
				}
			}
			
			if(search_img_GPS("Image\tobal\즉시재도전.bmp",processId,x,y,70,즉시재도전X1,즉시재도전Y1,즉시재도전X2,즉시재도전Y2)) {
				leftCLick(x,y,1)
				sleep, 10000
				
				; 멈춤 방지
				if(Search_img("Image\게임패드.bmp",processId,x,y,70)){
					DragClick(x,y)
				}
			}
		}	
		
	}	
	
}

토벌수행() {
	;~ 토벌입장확인
	if(search_img_GPS("Image\tobal\토벌입장.bmp",processId,x,y,50,토벌입장X1,토벌입장Y1,토벌입장X2,토벌입장Y2)){
		
	sleep,10000
		leftCLick(x,y,1)
		sleep, 17000
		;~ 자동사냥클릭
		leftClick(442,700,1)
	}
}