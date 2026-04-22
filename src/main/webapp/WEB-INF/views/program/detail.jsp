<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function() {
	$("#search").on("click", function(){
		console.log("click!");
		
		$.ajax({
		    url: "/common/event/select",
		    method: "POST",
		    contentType: "application/json",
		    data : JSON.stringify({
		    			sqlId:"TestMapper.test2",
		    			parameter:{test1:"tt1", test2:"tt2"}
		    }),
		    success: function(res) {
		        console.log("res",res);
		    },
		    error: function(err) {
		        console.error(err);
		    }
		});	
	});
	
	$("#add").on("click", function(){
		$.ajax({
		    url: "/common/event/call",
		    method: "POST",
		    contentType: "application/json",
		    data : JSON.stringify({
		    			sqlId:"TestMapper.callProc",
		    			parameter:{p_t:"test"}
		    }),
		    success: function(res) {
		        console.log("res",res);
		    },
		    error: function(err) {
		        console.error(err);
		    }
		});	
	});
});
</script>
<div class="content">
    <div class="search-box">
	    <div class="search-header">
	        <button id="search" class="btn-sm">조회</button>
	    </div>
        <div class="search-area">검색조건</div>
    </div>
    <div class="grid-box">
        <div class="grid-header">
	        <button id="add" class="btn-sm">추가</button>
	    </div>
        <div class="grid">그리드</div>
    </div>
</div>