;~ ����Ƿ� ahk
global NextStageCheckCnt := 1
global CharacterStopCheckCnt := 1
�������(){
	;~ �������
	�������()
	NextStageCheck()

	while(%�����ũ�ν���% == true){
		;~ ����Ƿ� �����ܰ� üũ
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

}

;~ ����Ƿ� �����ܰ� üũ �Լ�
NextStageCheck(){
	WinGet,processId,ID,%WindowName%
	
	;~ �ӹ������� Ȯ�ι�ư
	if(search_img_GPS("Image\tobal\����Ϸ�Ȯ��.bmp",processId,x,y,50,����Ϸ�Ȯ��X1,����Ϸ�Ȯ��Y1,����Ϸ�Ȯ��X2,����Ϸ�Ȯ��Y2)){
		sleep, 400
		;~ �����ܰ� üũ
		if(search_img_GPS("Image\tobal\2�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,2)
		}else if(search_img_GPS("Image\tobal\3�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,3)
		}else if(search_img_GPS("Image\tobal\4�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,4)
		}else if(search_img_GPS("Image\tobal\5�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,5)
		}else if(search_img_GPS("Image\tobal\6�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,6)
		}else if(search_img_GPS("Image\tobal\7�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,7)
		}else if(search_img_GPS("Image\tobal\8�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,8)
		}else if(search_img_GPS("Image\tobal\9�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,9)
		}else if(search_img_GPS("Image\tobal\10�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,10)
		}else if(search_img_GPS("Image\tobal\11�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,11)
		}else if(search_img_GPS("Image\tobal\12�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,12)
		}else if(search_img_GPS("Image\tobal\13�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,13)
		}else if(search_img_GPS("Image\tobal\14�ܰ�.bmp",processId,x,y,50,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
			NextClick(x,y,14)
		}else{
			NextClick(650,660,999)
		}
	}
	;~ else if(search_img_GPS("Image\tobal\15�ܰ�.bmp",processId,x,y,100,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
		;~ NextClick(x,y,15)
	;~ }else if(search_img_GPS("Image\tobal\16�ܰ�.bmp",processId,x,y,100,��������ܰ�X1,��������ܰ�Y1,��������ܰ�X2,��������ܰ�Y2)){
		;~ NextClick(x,y,16)
	;~ }
}
;~ ���� ���������� Ŭ������ �������� ����. ������ ������������ ������ ����
NextClick(x,y,NextStageNum){
	if(SelectStageNum >= NextStageNum){
		;~ msgbox, ����Ȯ��
		leftClick(x,y,1)
	}else{
		;~ msgbox, ����Ȯ��
		leftClick(650,660,1)
		�����ũ�ν��� = false
		return
	}
	sleep, 17000
	;~ �ڵ����Ŭ��
	leftClick(442,700,1)
}

�������(){
	WinGet,processId,ID,%WindowName%
	
	;~ �������Ȯ��
	if(search_img_GPS("Image\tobal\�������.bmp",processId,x,y,50,�������X1,�������Y1,�������X2,�������Y2)){
		
	sleep,10000
		leftCLick(x,y,1)
		sleep, 17000
		;~ �ڵ����Ŭ��
		leftClick(442,700,1)
	}
}