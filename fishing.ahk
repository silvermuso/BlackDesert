global fishingCheck := true

����(){
	fishingStart()
}
fishingStart(){
	WinGet,processId,ID,%WindowName%
	;~ DragClick(160,560)
	;~ ������ġã��()
	while(%fishing��ũ�ν���% == true){
		;~ MsgBox, 1
		if(search_img_GPS("Image\fishing\���ô�1.bmp",processId,x,y,120,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			;~ MsgBox, 2
			fishingClick(x,y)
		}else if(search_img_GPS("Image\fishing\���ô�2.bmp",processId,x,y,120,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			;~ MsgBox, 3
			fishingClick(x,y)
		}else if(search_img_GPS("Image\fishing\���ô�3.bmp",processId,x,y,120,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			;~ MsgBox, 4
			fishingClick(x,y)
		}else if(search_img_GPS("Image\fishing\���ô�4.bmp",processId,x,y,120,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			;~ MsgBox, 5
			fishingClick(x,y)
		}else if(search_img_GPS("Image\fishing\���ô�5.bmp",processId,x,y,120,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			;~ MsgBox, 6
			fishingClick(x,y)
		}
		;~ MsgBox, 7
		tutorial_fishing()
		if(Search_img("Image\fishing\�����ʰ�.bmp",processId,x,y,80)){
			leftClick(x,y,1)
			�����ʰ�()
		}else if(Search_img("Image\fishing\�����ʰ�2.bmp",processId,x,y,80)){
			leftClick(x,y,1)
			�����ʰ�()
		}
		if(%fishingCheck% == true){
			������ġã��()
		}
		fishingCheck = true
		sleep,4000
	}
}
������ġã��(){
	WinGet,processId,ID,%WindowName%
	
	leftClick(���θ�Ϲ�ưX,���θ�Ϲ�ưY,1)
	sleep,700
	;~ if(Search_img("Image\fishing\������ġ��1.bmp",processId,x,y,85)){
	leftClick(���θ����ġ��X,���θ����ġ��Y,1)
	sleep,700
	;~ }else if(Search_img("Image\fishing\������ġ��2.bmp",processId,x,y,85)){
		;~ leftClick(x,y,1)
	;~ }else if(Search_img("Image\fishing\������ġ��3.bmp",processId,x,y,85)){
		;~ leftClick(x,y,1)
	;~ }
	
	if(search_img_GPS("Image\fishing\���û���1.bmp",processId,x,y,100,���θ���ƮX1,���θ���ƮY1,���θ���ƮX2,���θ���ƮY2)){
		leftClick(x,y,1)
		sleep,60000
	}else if(search_img_GPS("Image\fishing\���û���2.bmp",processId,x,y,110,���θ���ƮX1,���θ���ƮY1,���θ���ƮX2,���θ���ƮY2)){
		leftClick(x,y,1)
		sleep,60000
	}
	
	sleep,700
	;~ if(Search_img("Image\fishing\��������1.bmp",processId,x,y,85)){
	leftClick(���θ������X,���θ������Y,1)
	
	;~ }else if(Search_img("Image\fishing\��������2.bmp",processId,x,y,85)){
		;~ leftClick(x,y,1)
	;~ }
	sleep,1000
	DragClick(160,560)
} 
�����ʰ�(){
	WinGet,processId,ID,%WindowName%
	sleep,60000
	if(search_img_GPS("Image\����.bmp",processId,x,y,140,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		leftClick(x,y,1)
		sleep,500
	}else if(search_img_GPS("Image\����2.bmp",processId,x,y,140,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		leftClick(x,y,1)
		sleep,500
	}
	if(search_img_GPS("Image\fishing\���.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\��ġ.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\����.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\���վ�.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\����.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\���ڸ�.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\�Ұ��縮.bmp",processId,x,y,110,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\��ġ.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	if(search_img_GPS("Image\fishing\������.bmp",processId,x,y,95,�ȱ�_������âX1,�ȱ�_������âY1,�ȱ�_������âX2,�ȱ�_������âY2)){
		sale(x,y)
	}
	sleep,500
	leftClick(1230,70,1)
	sleep,1500
	������ġã��()
	fishingCheck = false
}
sale(x,y){
	leftClick(x,y,1)
	sleep,1000
	leftClick(550,600,1)
	sleep,4500
}
fishingClick(x,y){
	WinGet,processId,ID,%WindowName%
	innerX := x
	innerY := y
	leftClick(innerX,innerY,1)
	sleep,15000
	Loop,8
	{
		if(search_img_GPS("Image\fishing\����1.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����2.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����3.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����4.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����5.bmp",processId,x,y,110,���ô�X1,���ô�Y1,���ô�X2,���ô�Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����6.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}else if(search_img_GPS("Image\fishing\����7.bmp",processId,x,y,110,����Ӹ���X1,����Ӹ���Y1,����Ӹ���X2,����Ӹ���Y2)){
			break
		}
		sleep,2000
	}
	leftClick(innerX,innerY,1)
	sleep,850
	leftClick(innerX,innerY,1)
	
	fishingCheck = false
}

tutorial_fishing(){
	WinGet,processId,ID,%WindowName%
	;~ tutorialCheck := false
	;~ if(Search_img("Image\main_quest\Ʃ�丮��1.bmp",processId,x,y,120,Ʃ�丮�����X1,Ʃ�丮�����Y1,Ʃ�丮�����X2,Ʃ�丮�����Y2)){
		;~ tutorialCheck = true
	;~ }else if(Search_img("Image\main_quest\Ʃ�丮��2.bmp",processId,x,y,120,Ʃ�丮�����X1,Ʃ�丮�����Y1,Ʃ�丮�����X2,Ʃ�丮�����Y2)){
		;~ tutorialCheck = true
	;~ }
	
	;~ sleep,300
	;~ if(%tutorialCheck% == true){
		if(search_img_GPS("Image\main_quest\Ʃ�丮�����.bmp",processId,x,y,100,Ʃ�丮�����X1,Ʃ�丮�����Y1,Ʃ�丮�����X2,Ʃ�丮�����Y2)){
			;~ MsgBox,%x%, %y%
			leftClick(x,y,1)
		}
	;~ }
}