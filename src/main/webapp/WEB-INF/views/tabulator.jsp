<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function () {
	var tabledata = [
		{id:1, name:"Oli Bob", age:"12", col:"red", dob:""},
		{id:2, name:"Mary May", age:"1", col:"blue", dob:"14/05/1982"},
		{id:3, name:"Christine Lobowski", age:"42", col:"green", dob:"22/05/1982"},
		{id:4, name:"Brendon Philips", age:"125", col:"orange", dob:"01/08/1980"},
		{id:5, name:"Margret Marmajuke", age:"16", col:"yellow", dob:"31/01/1999"},
	];
	
	var table = new Tabulator('#example-table', {
	 	data:tabledata,
	 	width: "100%",
	 	height:"311px",
	 	rowHeight: 30, // row별 cell높이
	 	layout:"fitColumns",
	 	columns:[
		 	{title:"Name", field:"name", width:150},
		 	{title:"Age", field:"age", hozAlign:"left", formatter:"progress"},
		 	{title:"Favourite Color", field:"col"},
		 	{title:"Date Of Birth", field:"dob", sorter:"date", hozAlign:"center"},
	 	],
	});
});
 </script>

<div id="example-table"></div>