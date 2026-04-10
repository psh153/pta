<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<script>
	$(function() {
	    $("#TEST2").html('테스트 교체32323');
	    
	    $("#BTN2").click(function(){
	    	console.log("button Click");
	    });
	    $("#PRI2").click(function(){
	    	console.log("Primary Click");
	    });
	});

</script>
<html>
<head>
</head>
<body>
  <p>${test}</p>
  <p id="TEST2">가나다22</p>
  <button id="BTN2" type="button" class="button">button</button> <br/>
  <button id="PRI2" type="button" class="btn btn-primary">Primary</button>
  <button id="PRI" type="button" class="btn btn-primary">Primary22</button>
  
</body>
</html>
