$(function(){
		CKEDITOR.replace('editor1', {
		//	filebrowserImageUploadUrl: 'myImageUpload.ashx',
			toolbar :[
			          ['Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink'],
					  ['FontSize', 'TextColor', 'BGColor'],
					  ['Image']
					],
			filebrowserUploadUrl: 'uploadFile.action'
		});
});

window.onload = function(){ 
	var img = document.getElementById('indexImage'); 
	var src = img.getAttribute('src'); 
	img.setAttribute('src',''); 
	img.onload = function(){ 
		isImgLoad(img);
	}; 
	img.setAttribute('src',src); 
	DrawImage(img);
	}; 


var flag=false; 
function DrawImage(ImgD){ 
	var image=new Image(); 
	image.src=ImgD.src; 
	if(image.width>0 && image.height>0){ 
		flag=true; 
		if(image.width/image.height>= 140/120){ 
			if(image.width>140){ 
				ImgD.width=140; 
				ImgD.height=(image.height*140)/image.width; 
			}else{ 
				ImgD.width=image.width; 
				ImgD.height=image.height; 
			} 
		} 
		else{ 
			if(image.height>120){ 
				ImgD.height=120; 
				ImgD.width=(image.width*120)/image.height; 
			}else{ 
				ImgD.width=image.width; 
				ImgD.height=image.height; 
			} 
		} 
	} 
} 


function changeSmallImage(file){
	var img = $("#indexImage"); 
	img.attr("src",file.value);
}


//function ajaxFileUpload()
//{
//	$("#indexImage")
//	.ajaxStart(function(){
//		$(this).show();
//	})
//	.ajaxComplete(function(){
//		$(this).hide();
//	});
//	$.ajaxFileUpload
//	(
//		{
//			url:'ajaxUpload.action',
//			secureuri:false,
//			fileElementId:'fileToUpload',
//			dataType: 'json',
//			success: function (data)
//			{	alert("yes");
//			},
//			error: function (data, status, e)
//			{
//				alert("no");
//			}
//		}
//	);
//	
//	return false;
//
//}
