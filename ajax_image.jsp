<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		function send_with_ajax(){
			if(window.XMLHttpRequest || window.ActiveXObject){
				if(window.ActiveXObject){
					try{
						xhr=new ActiveXObject("Msxml2.XMLHTTP");
					}catch(exception){
						xhr=new ActiveXObject("Microsoft.XMLHTTP");
					}
				}else{
					xhr=new XMLHttpRequest();
				}
			}else{
				alert("your browser does support this object");
			}
			xhr.open("GET","aadhar.jpg",true);
			xhr.overrideMimeType('text/plain; charset=x-user-defined');
			xhr.send(null);
			
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4){
					if(xhr.status==200){
						var image=document.getElementById("get_img");
						image.src="data:image/gif;base64, "+encode(xhr.responseText);
					}else{
						alert("something wrong");
					}
				}
			}
		}
		 function encode64(inputStr){
		       var b64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
		       var outputStr = "";
		       var i = 0;
		       
		       while (i> 2;var enc2 = ((byte1 & 3) << 4) | (byte2 >> 4)
		          
		          var enc3, enc4;
		          if (isNaN(byte2)){
		            enc3 = enc4 = 64;
		          } else{
		            enc3 = ((byte2 & 15) << 2) | (byte3 >> 6);
		            if (isNaN(byte3)){
		               enc4 = 64;
		            } else {
		                enc4 = byte3 & 63;
		            }
		          }
		          outputStr +=  b64.charAt(enc1) + b64.charAt(enc2) + b64.charAt(enc3) + b64.charAt(enc4);
		       }
		       return outputStr;
		    } 
	</script>
	<button onClick="send_with_ajax()">Get Image</button><br />
<img id="get_img" />
</body>
</html>