ũ��ī(repeatYn){
	WinGet,processId,ID,%WindowName%
	ũ��ī�̵�(50000,repeatYn)
	cnt := 0
	while(%ũ��ī��ũ�ν���% == true){
		if(search_img_GPS("Image\world_boss\ũ��ī�Ա�.bmp",processId,x,y,110,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
			leftClick(x,y,1)
			
			;~ ���� Ŭ��
			sleep,1500
			leftClick(640,615,1)
			
			;~ �ڵ����Ŭ��
			sleep,15000
			leftClick(450,700,1)
			sleep,100
			break
		}
		
		if(cnt++ > 50){
			cnt = 0
			ũ��ī�̵�(5000,"N")
			sleep,1000
		}
	}
	
	while(%ũ��ī��ũ�ν���% == true){
		if(search_img_GPS("Image\world_boss\���.bmp",processId,x,y,60,�ൿX1,�ൿY1,�ൿX2,�ൿY2)){
			leftClick(x,y,1)
			
			;~ �ڵ����Ŭ��
			sleep, 4000
			leftClick(450,700,1)
		}else if(repeatYn=="Y"){
			if(search_img_GPS("Image\world_boss\ũ��ī �Ϸ�.bmp",processId,x,y,80,ũ��ī�Ϸ�X1,ũ��ī�Ϸ�Y1,ũ��ī�Ϸ�X2,ũ��ī�Ϸ�Y2)){
				leftClick(x,y,1)
				break
			}
		}
		
		sleep,1500
	}
}
return

ũ��ī�̵�(traveltime,repeatYn){
	WinGet,processId,ID,%WindowName%
	
	;~ ũ��ī �̵� �̹��� Ŭ��
	sleep,200
	if(repeatYn == "N"){
		if(search_img_GPS("Image\world_boss\ũ��ī�̹���.bmp",processId,x,y,100,ũ��ī�̹���X1,ũ��ī�̹���Y1,ũ��ī�̹���X2,ũ��ī�̹���Y2)){
			leftClick(x,y,1)
		}else if(search_img_GPS("Image\world_boss\ũ��ī�̹���2.bmp",processId,x,y,100,ũ��ī�̹���X1,ũ��ī�̹���Y1,ũ��ī�̹���X2,ũ��ī�̹���Y2)){
			leftClick(x,y,1)
		}
	
		;~ ���� Ŭ��
		sleep,1500
		leftClick(640,615,1)
	}
	;~ ����Ȯ��
	sleep,1000
	leftClick(740,540,1)
	
	;~ ũ��ī ���� �Ա� �̵�
	sleep, %traveltime%
	MouseDragClick_Timer(160,560,205,470,1500)
}
return 