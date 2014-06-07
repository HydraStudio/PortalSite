/*------------------------------------------------------
  Base  Customization
--------------------------------------------------------*/
function openPage(html){
  //alert("click");
  window.open(html,'_blank');
}


//Wechat Popover
$(function(){
	$('.icon-wechat').popover({
		placement: "top",
		trigger: "click",
		html:true,
		content:"<img style='width:200px;' src='images/weixin.png'>"
	});
});