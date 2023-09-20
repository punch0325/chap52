<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>colspan.jsp</title>
<script type="text/javascript">
	function printPos(e){
		let td = e.target;
		let tr = td.parentElement;
		console.log(`[\${tr.rowIndex},\${td.cellIndex},\${td.innerText}]`);
	}
// 	함수를 이용하여 table 데이터의 인덱스를 확인하기
</script>
</head>
<body>
<h1>colspan/rowspan 실습</h1>
<table border="1" width="500" onclick="printPos(event)">
	<thead>
		<tr>
			<th colspan="2">Position</th>
			<th colspan="2">Color</th>
			<th></th>
		</tr>
		<tr>
			<th>line</th>
			<th>column</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>10</td>
			<td rowspan="2">20</td>
			<td>Red</td>
			<td>Blue</td>
			<td>X</td>
		</tr>
		<tr>
			<td>15</td>
			
			<td>Yellow</td>
			<td>Black</td>
			<td rowspan="2">A</td>
		</tr>
		<tr>
			<td>12</td>
			<td>27</td>
			<td>White</td>
			<td>Magenta</td>
		</tr>
	</tbody>
</table>
</body>
</html>