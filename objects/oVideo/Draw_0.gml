var _videoData = video_draw();
var _videoStatus = _videoData[0];
timer --;
if (_videoStatus == 0)
{
	draw_surface(_videoData[1],0,0);
}
else if (timer == 0)
{
	SlideTransition(TRANS_MODE.GOTO,Tutorial);
}
