<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.WantadVO, vo.WantReviewVO, java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty listReviewAll}">
		<c:forEach var="vo" items="${listReviewAll}" varStatus="status">
			<div id="review_box">
				<table>
					<tr>
						<td width=100><c:out value="${vo.review_userid}"></c:out></td>
						<td width=400><c:out value="${vo.review_comment}"></c:out>
							<td width=200><c:out value="${vo.review_date}"></c:out>
						
						<td><button>수정</button></td>
						<td><button
								onclick="doRequestReviewDeleteForm(${vo.review_id})">삭제</button></td>
					</tr>
				</table>
			</div>
		</c:forEach>
	</c:if>
	
	<section id="review_form_box">
								<div id="review_form_div">
			<form enctype="multipart/form-data" id="review_form" method="post">
				<input type="hidden" id="post_id" name="post_id"
											value="${listOne.post_id}"><br> <input
											type="hidden" id="review_userid" name="review_userid"
											value="mem01"> 알바후기
				<textarea id="review_comment" name="review_comment"></textarea>
				알바 평점<input id="review_rate" name="review_rate">
				<button onclick="doRequestReviewInsertForm()">등록</button>
				<input type="reset" value="재작성">
			</form>
		</div>
	</section>
	<script>
		function doRequestReviewDeleteForm(id) {
			var request = new XMLHttpRequest();
			var formdata = new FormData();

			//form data 객체를 이용해서 전송
			formdata.enctype = 'multipart/form-data';
			formdata.method = 'post';
			formdata.action = '/javas/wantreviewdelete';
			formdata.append('id', id);
			request.open('post', '/javas/wantreviewdelete', true);
			request.send(formdata);
			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					if (str == 'success') {
						alert("댓글 삭제 성공");

					} else {
						alert("댓글 삭제 실패");
					}
				}
			}
		}

		function doRequestReviewInsertForm() {
			var request = new XMLHttpRequest();
			var formElement = document.getElementById("review_form");
			var formdata = new FormData(formElement);
			//요청 - 클라이언트 단에서 서버에 요청
			request.open('post', '/javas/wantreviewinsert', true);
			request.send(formdata);
			//응답 - 클라이언트 화면에 출력
			request.onload = function(event) {
				if (request.status == 200) {
					var str = request.responseText;
					var obj = JSON.parse(str);
					var target = document.getElementById('review_box');
					/*
					target.innerHTML += "<table><tr>";
					target.innerHTML += "<td width=100><c:out value=" + 1 + "></c:out></td>";
					target.innerHTML += "<td width=400><c:out value=" + 1 + "></c:out></td>";
					target.innerHTML += "<td width=200><c:out value=" + 1 + "></c:out></td>";
					target.innerHTML += "<td><button>수정</button></td>";
					target.innerHTML += "<td><button onclick='location.href='wantreviewdelete''>삭제</button></td></table>";
					 */
				}
			}

		}
	</script>

						</body>
</html>