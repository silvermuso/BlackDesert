

���ۼ�ġ()
{
	WinGet,processId,ID,%WindowName%
	Loop,3
	{
		if(Search_img("Image\�����縷�̹���.bmp",processId,x,y,80)){
			leftClick(x,y,2)
			
			�̿�����ġ()	
			
			����������()
			sleep, 30000
			��������()

			��������()
			
			��������()
			
			���۵巡��()
			
			startGPS()
			sleep,1000
		}
	}
}

StartSearch:	
	StartWhile()
return 

���۵巡��(){
	WinGet,processId,ID,%WindowName%
	endCheck := false
	while(1){
		if(Search_img("Image\�����е�.bmp",processId,x,y,70)){
			DragClick(x,y)
			endCheck = true
		}
		if(endCheck){
			break 
		}
	}
}
��������(){
	WinGet,processId,ID,%WindowName%
	sleep, 14000
	if(Search_img("Image\�̺�Ʈ����.bmp",processId,x,y,80)){
		leftClick(x,y,1)
		sleep,1000
	}
	if(Search_img("Image\�⼮.bmp",processId,x,y,80)){
		leftClick(x,y,1)
		sleep,1000
	}
}
��������(){
	WinGet,processId,ID,%WindowName%
	
	loop,3
	{
		if(Search_img("Image\��������.bmp",processId,x,y,80)){
			leftClick(x,y,2)
			sleep,3000
		}
	}
}
�̿�����ġ(){
	WinGet,processId,ID,%WindowName%
	sleep, 9000
	loop,3
	{
		if(Search_img("Image\�̿���.bmp",processId,x,y,80)){
			leftClick(x,y,2)
			sleep,1500
		}
		if(Search_img("Image\�̿�������.bmp",processId,x,y,80)){
			;~ MouseMove, x, y
			leftClick(x,y,1)
			sleep,700
			next = 2
		}
		if(Search_img("Image\�̿���Ȯ��.bmp",processId,x,y,70)){
			leftClick(x,y,2)
			break
		}
	}
}
return 
����������(){
	WinGet,processId,ID,%WindowName%
	sleep,7000
	loop,3
	{
		if(Search_img("Image\����������.bmp",processId,x,y,80)){
			leftClick(x,y,1)
			sleep,2500
		}
		if(Search_img("Image\���۰�������.bmp",processId,x,y,80)){
			leftClick(x,y,1)
			sleep,1500
		}
	}
}

StartWhile(){
	WinGet,processId,ID,%WindowName%
	if(search_img_GPS("Image\��������ñ�.bmp",processId,x,y,80,��������ñ�X1,��������ñ�Y1,��������ñ�X2,��������ñ�Y2)){
		leftClick(�������Ȯ��X ,�������Ȯ��Y,2)
		sleep, 6000
		���ۼ�ġ()
	}
	
}
return 


��������(){
	WinGet,processId,ID,%WindowName%
	next := 0
	;~ MsgBox, %x%, %y% ,%WindowName%
	Loop,3
	{
		if(next == 0){
			Loop,3
			{
				if(Search_img("Image\��������.bmp",processId,x,y,60)){
					leftClick(650,100,1)
					;~ leftClick(x,y,1)
					next = 3
				}
				sleep, 2000
			}
		}
		;~ if(next == 1){
			;~ sleep,1000
			;~ if(Search_img("Image\��������2.bmp",processId,x,y,90)){
				;~ leftClick(x,y,1)
				;~ next = 2
			;~ }
		;~ }
		;~ if(next == 2){
			;~ sleep,1000
			;~ ServerSelect()
			;~ next =3
		;~ }
		if(next ==3){
			sleep,10000
			;~ �����̸�
			if(Search_img("Image\ĳ���ͼ���.bmp",processId,x,y,70)){
				leftClick(x,y,3)
				next = 4
				break
			}
		}
	}
}
return 
ServerSelect(){
	WinGet,processId,ID,%WindowName%
	if(Server == "���̵�"){
		if(Search_img("Image\���̵�.bmp",processId,x,y,80)){
			leftClick(x,y,2)
		}
	}else if(Server == "Į���"){
		if(Search_img("Image\Į���.bmp",processId,x,y,80)){
			leftClick(x,y,2)
		}
	}
}
