<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap"
	rel="stylesheet">
<link href="//fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">


<!--Google Material Icons-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<!--GSAP & ScrollToPlugin-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
	integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"
	integrity="sha512-nTHzMQK7lwWt8nL4KF6DhwLHluv6dVq/hNnj2PBN0xMl2KaMm1PM02csx57mmToPAodHmPsipoERRNn4pG7f+Q=="
	crossorigin="anonymous"></script>
<!--Swiper-->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!--ScrollMagic-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
<!--Lodash-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"
	integrity="sha512-90vH1Z83AJY9DmlWa8WkjkV79yfS2n2Oxhsi2dZbIv0nC4E6m5AbH8Nh156kkM7JePmqD6tcZsfad1ueoaovww=="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/s 	/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../Store/storeAssets/js/main.js">
	
</script>
<script src="../Store/storeAssets/js/storeList.js">
	
</script>

<link href="css/myPage.css" rel="stylesheet">



<title>My Page</title>


<script>
	function check_delete() {
		if (confirm('정말 탈퇴 하시겠습니까?')) {
			location.href = 'delete.do?memberId=${vo.memberId}&name=${vo.name}';
		} else {
			location.href = 'myPage.do?memberId=${vo.memberId}';
		}
	}
</script>

</head>


<!-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& body 시작 &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&-->

<body>

	<form action="myPage.do">

		<header id="header"
			class="fixed-top d-flex align-items-center header-transparent">

			<div class="container d-flex align-items-center">

				<nav class="nav-menu d-none d-lg-block">
					<ul>
						<li><a href="../index.jsp">Home</a></li>
						<li><a href="../aboutus.jsp">About Us</a></li>
						<li><a href="../Board/boardList.do">Board</a></li>
						<li><a href="../Store/storeList.do">Restaurants</a></li>
						<li class="active"><a href="myPage.jsp">My Page</a></li>
						<c:if test="${!empty vo}">
							<li class="book-a-table text-center"><a href="logout.do">logout</a></li>
						</c:if>
						<c:if test="${empty vo}">
							<li class="book-a-table text-center"><a href="loginForm.jsp">login</a></li>
						</c:if>
					</ul>
				</nav>
				<!-- .nav-menu -->

			</div>

		</header>
		<!-- End Header -->



		<!-- ======= Works Section ======= -->

		<section class="section">

			<div class="container">

				<div class="col-md-12">

					<h2>My Page</h2>

				</div>


				<div>
					NAME : ${vo.name}<br /> ID : ${vo.memberId}<br /> Preference
					Location<br />

					<table>
						<c:forEach items="${listA}" var="area">
							<tr>
								<td>${area.name}</td>
							</tr>
						</c:forEach>
					</table>


					<input type="button" value="Modify"
						onClick="location.href='updateForm.jsp'">
				</div>

				<div>
					<table>
						<c:forEach items="${listB}" var="board">
							<tr>
								<td>${board.title}</td>
							</tr>
							<tr>
								<td>${board.content}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<h2>I LIKE♥</h2>
				<div>
					<table>
						<tr>
							<c:forEach items="${listSI}" var="storeIamge">
								<td><a
									href="../Store/storeDetail.jsp?storeId=${storeIamge.storeId}"><img
										alt=${storeIamge.name
										}
										src="../store_img/${storeIamge.imageUrl}" width="200px"
										height="200px"></a></td>
							</c:forEach>
						</tr>
					</table>
				</div>
				<input type="button" value="회원 탈퇴" onClick="check_delete()">

			</div>


		</section>



	</form>

	<!-- ======= Footer ======= -->
	<center>
		<footer id="footer">
			<div class="container">
				<h2>VEGAN PROJECT</h2>
				<p>All life deserves respect, dignity, and compassion. All life.</p>

				<div class="copyright">
					&copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All
					Rights Reserved
				</div>
				<div class="credits">
					Designed by Enocore 1 Team</a>
				</div>
			</div>
		</footer>
		<!-- End Footer -->
	</center>

</body>

</html>