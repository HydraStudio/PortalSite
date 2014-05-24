function checkFile(){
	var file = $("#file").val();
	if($("#id").val() == null || $.trim($("#id").val()) == ""){
		if(file == null || $.trim(file) == ""){
			alert("图片不能为空，请选择上传图片！");
			return;
		}else{
			if( !checkFileType(file)){
				return;
			}
		}
	}else{
		if(file != null && $.trim(file) != ""){
			if( !checkFileType(file)){
				return;
			}
			$("#changeFlag").val("true");
		}
	}
	$("#inputAction").submit();
}

function checkFileType(file){
	var fileType = file.substr(file.indexOf("."));
	if(fileType != ".jpg" && fileType != ".gif" && fileType != ".bmp" && fileType != ".png"){
		alert("文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）");	
		return false;
	}
	return true;
}