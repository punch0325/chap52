<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- 알파테이블의 중간에 아이콘(♥)을 삽입하여 포커싱 되게 한 후,
          키보드의 방향키를 이용하여 상하좌우로 움직일 수 있게끔 구현해보기--%>
<title>table2.jsp</title>
<style type="text/css">
	:focus{
		outline-color: pink;
		outline-style: dotted;
	}
/* 	focus 함수 영역에 style 속성 주기 */
	
	table{

	}
</style>
<script type="text/javascript">
	window.onload=function(){
		let table = document.querySelector('table');
		let hero = table.rows[10].cells[20];
		
		hero.style.color='pink';
		hero.style.removeProperty('background');
		hero.innerText='♥';
		hero.tabIndex = 1;
			  // tabIndex : 엘리먼트에 키보드 포커스를 줄 수 있는 방법.  속성값으로는 양수, 0, -1로 나뉜다.
			  //	 				   1 )양수 ▶ 1부터 숫자를 적어서 탭의 순서를 지정. 
			  // 					   2 )   0  ▶ 포커스를 받을 수 없는 h1, div등의 요소도 포커싱이 가능하게 해줌
			  // 					   3 ) -1  ▶ a, button, input, select, textarea와 같은 태그가 탭을 못받도록 처리
		
		table.onclick=function(){
			hero.focus();
				  // focus() : 
		}

		/* 
			[DOM 검색 방법]
				▶ 하나의 DOM 객체의 기준으로 부모,자식,형제 DOM객체의 데이터를 가져올 수 있다.
					- previousElementSibling  : 형제 요소 중 기준 객체의 형(먼저 만들어진것)의 데이터
					- nextElementSibling : 형제 요소 중 기준 객체의 동생(나중에 만들어진 것)의 데이터
					- parentElement : 부모 객체의 데이터
					- querySelector : 해당 태그의 데이터
					
			 [DOM 삭제 방법]
					- remove() : 데이터는 사라지지 않지만 DOM객체로서는 삭제된다.
			
			 [DOM 추가 방법]
					- append() :
					- prepend() :
					- after() :
					- before() : 
		 */
		
		hero.onkeydown=function(e){
			 //onkeydown : 키보드를 누르면 발생하는 이벤트
// 		console.log(e.key);
			switch(e.key){
			case 'ArrowUp' : {
				console.log('Up...');
				let pRow = hero.parentElement.previousElementSibling;
				if(pRow != null){
					let hero_up = pRow.cells[hero.cellIndex];
					let hero_left = hero.previousElementSibling;
					let hero_up_left = hero_up.previousElementSibling;
					
					let hero_parent = hero.parentElement;
					let hero_up_parent = hero_up.parentElement;
					
					hero.remove();
					hero_up.remove();

					if(hero_left == null){
						hero_parent.prepend(hero_up);
						hero_up_parent.prepend(hero);
					}else{
						hero_left.after(hero_up);
						hero_up_left.after(hero);						
					}
					
					hero.focus();
				}
				break;
			}
			case 'ArrowDown' :
				console.log('Down...');
				let nRow = hero.parentElement.nextElementSibling;
				if(nRow != null){
					let hero_down = nRow.cells[hero.cellIndex];
					let hero_left = hero.previousElementSibling;
					console.log(hero_left);
					let hero_down_left = hero_down.previousElementSibling;
					console.log(hero_down_left);
					
					let hero_parent = hero.parentElement;
					let hero_down_parent = hero_down.parentElement;
					
					hero.remove();
					hero_down.remove();

					if(hero_left == null){
						hero_parent.prepend(hero_down);
						hero_down_parent.prepend(hero);
					}else{
						hero_left.after(hero_down);
						hero_down_left.after(hero);						
					}
					
					hero.focus();
				}
				break;
			case 'ArrowLeft' :
				console.log('Left...');
				let hero_left = hero.previousElementSibling;
				if(hero_left != null){
					hero_left.remove();
					hero.after(hero_left);
				}
				break;
			case 'ArrowRight' :
				console.log('Right...');
				let hero_right = hero.nextElementSibling;
				if(hero_right != null){
					hero_right.remove();
					hero.before(hero_right);
				}
				break;
			}
		}
	}
</script>
</head>
<body>
<h1>Alpha Cursor Move</h1>
<hr>
<table id="table" tabindex="0">
	<tbody>
		<c:forEach var = "i" begin="0" end="19">
			<tr>
				<c:forEach var = "j" begin="0" end="39">
				<jsp:useBean id="alpha" class="util.Alpha"/>
					<td style="color:${alpha.fg}; background:${alpha.bg};">${alpha.ch}</td>
				<c:remove var="alpha"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>