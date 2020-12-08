<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	var request;
	function sendInfo(){
		var v=document.vinform.t1.value;
		var url="index.jsp?val="+v;
		
		if(window.XMLHttpRequest){
			request=new XMLHttpRequest();
		}else if(window.ActiveXObject){
			request=new ActiveXObject("Microsoft.XMLHTTP");
		}
		try{
			request.onreadystatechange=getInfo;
			request.open("GET",url,true);
			request.send();
		}catch(e){
			alert("unable to connect to server");
		}
	}
	
	function getInfo(){
		if(request.readyState==4){
			var val=request.responseText;
			document.getElementById('vijay').innerHTML=val;
		}
	}
</script>
<body>
	<marquee><h1>Example of ajax</h1></marquee>
	<form name="vinform">
		<input type="text" name="t1">
		<input type="button" value="ShowTable" onClick="sendInfo()">
	</form>
	<span id="vijay"></span>
</body>
</html>