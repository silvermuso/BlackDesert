

global mainQuestCnt := 0
global tutorialCnt := 0
global questActionCnt := 0
global dialogueNextCnt := 0
global questSuccessCnt := 0

return

������(){

	;~ Item_Leave()
	;~ Weight_main()
	;~ eat()
	quest_success()
	quest_accept()
	tutorial()
	action()
	dialogueNext()
	
	quest_success()
	;~ MsgBox, %main��ũ�ν���%
	while(%main��ũ�ν���% == true){
		if(mainQuestCnt >= 8){
			quest_accept()
			mainQuestCnt = 0
		}else{
			mainQuestCnt++
		}
		
		if(tutorialCnt >= 9){
			tutorial()
			tutorialCnt = 0
		}else{
			tutorialCnt++
		}
		
		if(questActionCnt >= 9){
			action()
			questActionCnt = 0
		}else{
			questActionCnt++
		}
		
		if(dialogueNextCnt >= 6){
			dialogueNext()
			dialogueNextCnt = 0
		}else{
			dialogueNextCnt++
		}
		if(questSuccessCnt >= 9){
			quest_success()
			Weight_main()
			questSuccessCnt = 0 
		}else{
			questSuccessCnt++
		}
		sleep, 2000
	}
}
��������üũ(){
	WinGet,processId,ID,%WindowName%
	;~ �ӹ����� �� �ӹ� ����ñ� ĳġ
	�ӹ�����breakcnt := 0
	while(%�ӹ�����breakcnt% <60){
		sleep,10000
		if(search_img_GPS("Image\main_quest\�����ӹ�����.bmp",processId,x,y,120,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
			leftClick(x,y,1)
			break
		}
		MouseDragClick_Timer(160,560,205,470,200)
		�ӹ�����breakcnt++
	}
	;~ ���� ������ �ε�
	sleep, 10000
}
quest_success(){
	WinGet,processId,ID,%WindowName%
	if(search_img_GPS("Image\main_quest\�ǷڿϷ�1.bmp",processId,x,y,80,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
		leftClick(x,y,1)
		getCat()
	}else if(search_img_GPS("Image\main_quest\�ǷڿϷ�2.bmp",processId,x,y,80,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
		leftClick(x,y,1)
		getCat()
	}else if(search_img_GPS("Image\main_quest\�ǷڿϷ�3.bmp",processId,x,y,80,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
		leftClick(x,y,1)
		getCat()
	}else if(search_img_GPS("Image\main_quest\�ӹ�����.bmp",processId,x,y,60,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
		leftClick(x,y,1)
		sleep, 20000
		loop,6{
			leftClick(970,200,1)
			sleep,1000
		}
		��������üũ()
	}else if(search_img_GPS("Image\main_quest\�ӹ�����.bmp",processId,x,y,80,�������X1,�������Y1,�������X2,�������Y2)){
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�������_�ٽõ���.bmp",processId,x,y,80,�ӹ�����X1,�ӹ�����Y1,�ӹ�����X2,�ӹ�����Y2)){
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�򰡴ݱ�.bmp",processId,x,y,60,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�����Ƿ�_�ڵ�.bmp",processId,x,y,90,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		leftClick(730,610,1)
	}else if(search_img_GPS("Image\main_quest\�ڵ�������Ը�ũ.bmp",processId,x,y,60,�ڵ��������X1,�ڵ��������Y1,�ڵ��������X2,�ڵ��������Y2)){
		;~ �ڵ��������
		leftClick(490,600,1)
		sleep,1500
		leftClick(730,610,1)
		sleep,2000
		leftClick(640,300,1)
		;~ �ڵ���� ����Ʈ ������ Ŭ��
		sleep,4000
		leftClick(500,430,1)
		sleep, 40000
		if(search_img_GPS("Image\main_quest\�۵�.bmp",processId,x,y,90,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
			leftClick(x,y,1)
			sleep, 1000
			leftClick(x,y,1)
			sleep, 1000
			leftClick(x,y,1)
			sleep, 1000
			leftClick(600,610,1)
			sleep, 1000
			leftClick(x,y,1)
			sleep, 1000
			leftClick(x,y,1)
			sleep, 1000
			leftClick(x,y,1)
			sleep,500
			if(search_img_GPS("Image\main_quest\�ݺ��Ƿڼ���.bmp",processId,x,y,70,�ݺ��Ƿڼ���X1,�ݺ��Ƿڼ���Y1,�ݺ��Ƿڼ���X2,�ݺ��Ƿڼ���Y2)){
				leftClick(x,y,1)
				main��ũ�ν��� = false
				if(search_img_GPS("Image\�ݺ�����Ʈ.bmp",processId,x,y,80,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
					leftClick(x,y,1)
					sleep,500
					leftClick(x-30,y,2)
				}
				�ڵ���ɽ���()
			}
		}
	}else if(search_img_GPS("Image\main_quest\��������.bmp",processId,x,y,80,��������X1,��������Y1,��������X2,��������Y2)){
		leftClick(x,y,1)
		sleep, 2000
		leftClick(1150,700,1)
		sleep, 1000
		leftClick(1230,70,1)
		sleep, 500
	}else if(search_img_GPS("Image\main_quest\���δ�������.bmp",processId,x,y,60,���δ�������X1 ,���δ�������Y1,���δ�������X2,���δ�������Y2)){
		leftClick(x,y,1)
	;~ else if(search_img_GPS("Image\main_quest\�ݺ��Ƿ�ã�ư���.bmp",processId,x,y,120,�ݺ��Ƿ�ã�ư���X1,�ݺ��Ƿ�ã�ư���Y1,�ݺ��Ƿ�ã�ư���X2,�ݺ��Ƿ�ã�ư���Y2)){
	;~ MsgBox, 2
		sleep, 20000
		;~ ����Ʈ Ŭ������ �ڵ�����
		loop,6
		{
			leftClick(970,210,1)
			sleep,1000
		}
		��������üũ()
		
		;~ leftClick(x,y,1)
		
	}
}
dialogueNext(){
	WinGet,processId,ID,%WindowName%
	whileCnt := 0
	if(search_img_GPS("Image\main_quest\���ùޱ�.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}
}
dialogue_Click(x,y){
	leftClick(x,y,1)
}
quest_accept(){
	WinGet,processId,ID,%WindowName%
	if(search_img_GPS("Image\main_quest\�̵�.bmp",processId,x,y,80,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
		;~ MsgBox,%x%,%y%
		MainQuest_sub(x,y)
	}else if(search_img_GPS("Image\main_quest\����ձ�.bmp",processId,x,y,90,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
		;~ MsgBox,3
		MainQuest_sub(x,y)
	}else if(search_img_GPS("Image\main_quest\��ȭ.bmp",processId,x,y,70,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
		;~ MsgBox,4
		MainQuest_sub(x,y)
	}else if(search_img_GPS("Image\main_quest\������.bmp",processId,x,y,90,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
		;~ MsgBox,4
		fishingClick(1165,630)
	}else if(search_img_GPS("Image\main_quest\�������Ʈ.bmp",processId,x,y,80,����ƮX1,����ƮY1,����ƮX2,����ƮY2)){
		;~ MsgBox,5
		MainQuest_sub(x,y)
		sleep,400
		if(search_img_GPS("Image\main_quest\1����������.bmp",processId,x,y,80,����X1,����Y1 ,����X2 ,����Y2 )){
			;~ MsgBox,6
			leftClick(x,y,2)
		}
	}else if(search_img_GPS("Image\main_quest\�ڵ����.bmp",processId,x,y,120,�ڵ�����̹���X1,�ڵ�����̹���Y1,�ڵ�����̹���X2,�ڵ�����̹���Y2)){
		;~ MsgBox,8
		leftClick(x,y,1)
	}else{
		;~ msgbox,7
		leftClick(1230,200,1)
		sleep, 500
		leftClick(1190,200,1)
		sleep,500
		leftClick(1230,200,1)
		sleep, 500
		leftClick(1190,200,1)
		sleep, 500
		leftClick(1130,200,1)
		sleep, 500
	}
}

action(){
	WinGet,processId,ID,%WindowName%
	MouseDragClick(560,630,800,645)
	if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 2
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 3
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����2.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 4
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 6
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 7
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 8
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������4.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 9
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������5.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 10
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������6.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 11
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\������7.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 12
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���1.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 34
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 35
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 36
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���4.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 37
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���5.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 38
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ȣ��2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 13
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ȣ��3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 14
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ȣ��4.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 15
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ȣ��5.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 16
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ȣ��6.bmp",processId,x,y,110,����Ʈ�ൿ����X1,����Ʈ�ൿ����Y1,����Ʈ�ൿ����X2,����Ʈ�ൿ����Y2)){
		;~ MsgBox, 17
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 18
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 19
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 20
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 21
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 22
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 23
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 24
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 25
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 26
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 27
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 28
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���4.bmp",processId,x,y,110,����Ʈ�ൿ����X1,����Ʈ�ൿ����Y1,����Ʈ�ൿ����X2,����Ʈ�ൿ����Y2)){
		;~ MsgBox, 29
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\ä��.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 30
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�Ѹ���.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 31
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�Ѹ���2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 32
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�Ѹ���3.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 33
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���ٵ��1.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 39
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���ٵ��2.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 40
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 41
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����2.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 42
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����3.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 43
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\����4.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 44
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���.bmp",processId,x,y,60,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 45
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�μ���.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 46
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\�μ���2.bmp",processId,x,y,120,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		;~ MsgBox, 47
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\���߱�1.bmp",processId,x,y,110,����Ʈ�ൿ����X1,����Ʈ�ൿ����Y1,����Ʈ�ൿ����X2,����Ʈ�ൿ����Y2)){
		;~ MsgBox, 5
		leftClick(x,y,1)
	}else if(search_img_GPS("Image\main_quest\��������.bmp",processId,x,y,100,��������X1,��������Y1,��������X2,��������Y2)){
		;~ MsgBox, 48
		leftClick(710,200,1)
		sleep,1000
		leftClick(920,180,1)
		sleep,1000
		leftClick(700,550,1)
		sleep,1000
		leftClick(1230,70,1)
	}else{
		;~ MsgBox,��
		return 
	}
		;~ MsgBox,��2
		sleep,4000
}
getCat(){
	WinGet,processId,ID,%WindowName%
	sleep,1000
	if(Search_img("Image\main_quest\����̼���.bmp",processId,x,y,80)){
		�ǷڿϷ�_select(x,y)
	}else if(search_img_GPS("Image\main_quest\�߱޺�����.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}else if(search_img_GPS("Image\main_quest\�߱޺�����.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}else if(search_img_GPS("Image\main_quest\�ٷ�������.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}else if(search_img_GPS("Image\main_quest\�ٷ��������.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}else if(search_img_GPS("Image\main_quest\���ùޱ�.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
		�ǷڿϷ�_select(x,y)
	}else{
		�ǷڿϷ�_select(720,500)
	}
}
�ǷڿϷ�_select(x,y){
	leftClick(x,y,1)
	sleep, 1500
	leftClick(1100,y,1)
	sleep, 1000
	leftClick(700,730,1)
	sleep, 1000
	leftClick(700,730,1)
	sleep,500
}
tutorial(){
	WinGet,processId,ID,%WindowName%
	;~ tutorialCheck := false
	;~ if(Search_img("Image\main_quest\Ʃ�丮��1.bmp",processId,x,y,120)){
		;~ tutorialCheck = true
	;~ }else if(Search_img("Image\main_quest\Ʃ�丮��2.bmp",processId,x,y,120)){
		;~ tutorialCheck = true
	;~ }
	
	sleep,300
	;~ if(%tutorialCheck% == true){
		if(search_img_GPS("Image\main_quest\Ʃ�丮�����.bmp",processId,x,y,100,Ʃ�丮�����X1,Ʃ�丮�����Y1,Ʃ�丮�����X2,Ʃ�丮�����Y2)){
			;~ MsgBox,%x%, %y%
			leftClick(x,y,1)
		}
	;~ }
}
mainQuest_sub(x,y){
	sleep,100
	leftClick(x,y,1)
	sleep,600
	leftClick(x-25,y,1)
}
Weight_main(){
	WinGet,processId,ID,%WindowName%
	
	if(search_img_GPS("Image\�����ʰ�.bmp",processId,x,y,100,����X1,����Y1,����X2,����Y2)){
		leftClick(x,y,1)
		sleep,1500
		if(search_img_GPS("Image\����_�����̵�.bmp",processId,x,y,100,���Ը����̵�X1,���Ը����̵�Y1,���Ը����̵�X2,���Ը����̵�Y2)){
			leftClick(x,y,1)
			sleep,2000
		}
		sleep,45000
		leftClick(1100,75,1)
		sleep,2000
		;~ leftClick(750,710,1)
		;~ sleep,1000
		leftClick(1230,75,1)
		sleep,2000
		if(search_img_GPS("Image\����.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
			;~ msgbox, 1
			leftClick(x,y,1)
			sleep,500
		}else if(search_img_GPS("Image\����2.bmp",processId,x,y,100,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
			;~ msgbox, 2
			leftClick(x,y,1)
			sleep,500
		}else if(search_img_GPS("Image\����3.bmp",processId,x,y,100,����_2X1,����_2Y1,����_2X2,����_2Y2)){
			leftClick(x,y,1)
			sleep,1300
		}	
		if(search_img_GPS("Image\����ǰ����.bmp",processId,x,y,100,����ǰ����X1,����ǰ����Y1,����ǰ����X2,����ǰ����Y2)){
			leftClick(x,y,1)
			sleep,1000
			leftClick(1220,70,1)
			sleep,1000
			end = true
			Item_Leave()
			skill_up()
		}
	}
	
}