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
			document.getElementById("req_text").innerHTML = "Process Started...";
		    if (window.XMLHttpRequest || window.ActiveXObject) {
		        if (window.ActiveXObject) {
		          try {
		             xhr = new ActiveXObject("Msxml2.XMLHTTP");
		          } catch(exception) {
		             xhr = new ActiveXObject("Microsoft.XMLHTTP");
		          }
		      } else {
		          xhr = new XMLHttpRequest(); 
		      }
		    } else {
		        alert("Your browser does not support XMLHTTP Request...!");
		    }

		    xhr.open("GET", "demo.txt", true);    // Make sure file is in same server
		    xhr.send(null);

		    xhr.onreadystatechange = function(){ 
		        if (xhr.readyState == 4) {
		          if(xhr.status == 200){
		           document.getElementById("req_text").innerHTML = "Response State : " + xhr.readyState + "Response Text: " + xhr.responseText; 
		        } else {
		           document.getElementById("req_text").innerHTML = "Error Code: " + xhr.status + "Error Message: " + xhr.statusText;
		        }
		        }
		    };
		  } 

	</script>
<button onclick="send_with_ajax()">Get Content</button>
<p id="req_text">sdd</p>
</body>
</html>