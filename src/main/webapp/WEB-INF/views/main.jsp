<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<script>
	$(function() {
	    $("#TEST").html('테스트 교체');
	    
	    $("#BTN").click(function(){
	    	alert("button Click");
	    });
	    $("#PRI").click(function(){
	    	alert("Primary Click");
	    });
	});

</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>mainPage</h1>
  <p>${test}</p>
  <p id="TEST">가나다라</p>
  <button id="BTN" type="button" class="button">button</button> <br/>
  <button id="PRI" type="button" class="btn btn-primary">Primary</button>
  
</body>
</html>
