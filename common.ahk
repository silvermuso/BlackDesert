; 로그 쌓기
printLog(vStr) {
	formattime , nowtime,,HH:mm:ss
	guicontrol ,,l_b, %nowtime% : %vStr% ||	
}