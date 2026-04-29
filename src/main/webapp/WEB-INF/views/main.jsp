<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script>
  $( function() {
    $( "#menu" ).menu();
  } );
  </script>
<div class="info-title">WMS</div>
<div class="user-info">
	<p><i class="bi bi-circle-fill"></i>&nbsp;유저정보: <span id="USER_NAME">-</span></p>
	<p><i class="bi bi-clock-fill"></i>&nbsp;세션 남은 시간(분): <span id="USER_SESSION_TIME">-</span></p>
	<p><i class="bi bi-clock-fill"></i>&nbsp;최종 로그인: <span id="LAST_LOGIN">-</span></p>
	<div style="display: flex; gap: 10px; justify-content: center; margin-top: 5px;">
		<button type="button" class="btn btn-outline-secondary btn-sm">정보수정</button>
		<button type="button" class="btn btn-outline-secondary btn-sm">로그아웃</button>
	</div>
</div>
<ul class="menu" id="menu">
  <li class="ui-state-disabled"><div>Toys (n/a)</div></li>
  <li><div>Books</div></li>
  <li><div>Clothing</div></li>
  <li><div>Electronics</div>
    <ul>
      <li class="ui-state-disabled"><div>Home Entertainment</div></li>
      <li><div>Car Hifi</div></li>
      <li><div>Utilities</div></li>
    </ul>
  </li>
  <li><div>Movies</div></li>
  <li><div>Music</div>
    <ul>
      <li><div>Rock</div>
        <ul>
          <li><div>Alternative</div></li>
          <li><div>Classic</div></li>
        </ul>
      </li>
      <li><div>Jazz</div>
        <ul>
          <li><div>Freejazz</div></li>
          <li><div>Big Band</div></li>
          <li><div>Modern</div></li>
        </ul>
      </li>
      <li><div>Pop</div></li>
    </ul>
  </li>
  <li class="ui-state-disabled"><div>Specials (n/a)</div></li>
</ul>
