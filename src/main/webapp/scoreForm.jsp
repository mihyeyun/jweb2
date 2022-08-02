<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	 function checkScore() {
		let form = document.scoreForm;
		let score = form.score.value;
		if(score == ""){
			alert("점수를 입력해주세요.");
			score.focus();
			return false;
		}
		form.submit();
	} 
	
	/* function checkScore(){
		let form = document.scoreForm
		if(form.score.value == ""){
			alert("점수를 입력해주세요.");
			form.score.focus();
			return false;
		}
		form.submit();
	} */
</script>
</head>
<body>
	<h2>점수를 입력해주세요.</h2>
	<form action="./scoreTest.jsp" method="get" name="scoreForm">
		<p> 점수 <input type="text" name="score">
				<input type="button" value="학점출력" onclick="checkScore()">
	</form>
	

</body>
</html>