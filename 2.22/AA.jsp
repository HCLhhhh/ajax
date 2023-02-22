<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

function showInfo(){
	alert("好的");
	var xmlHttp=new XMLHttpRequest();
	xmlHttp.onreadystatechange=function(){
		//
		if(xmlHttp.readyState==4&&xmlHttp.status==200){
			//给input赋值
			document.getElementById("a").value=xmlHttp.responseText;
		}
	}
	xmlHttp.open("get","/ZY/user?name=wvw",true);
	//
	xmlHttp.send();
}

</script>
<title>Insert title here</title>
</head>
<body>
<input type="button" value="提交" onclick="showInfo()"/>
<input type="text" id="a" name="userInfo">


</body>
</html>