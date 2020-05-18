<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<script src="resources/opalcold_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link href="resources/opalcold_files/wordcloud2-0.0.1/wordcloud.css" rel="stylesheet" />
<script src="resources/opalcold_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opalcold_files/wordcloud2-0.0.1/hover.js"></script>
<script src="resources/opalcold_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>
  
<meta charset="EUC-KR">
<title>���� data ������</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<style>
.cont {
	display: flex;
	background-color: white;
	margin-bottom: 20px;
}

.opt1 {
	justify-content: space-around;
}

.box {
	padding: 5px 45px;
	margin: 5px;
	/* background-color: #f2f2f2; */
}

p {
	color: black;
	text-align: center;
}

.sickfood {
	width: 220px;
	height: 200px;
}

.button {
	display: inline-block;
	padding: 10px 30px;
	font-size: 10px;
	cursor: pointer;
	text-align: center;
	outline: none;
	color: white;
	background: #67B26F;
	font-size: 1em;
	width: 15%;
	height: 100px;
}

.button:hover {
	color: #67B26F;
	background-color: white;
	border: 1px solid #67B26F;
	border-radius: 5px;
}

.selectbutton {
	display: inline-block;
	padding: 10px 30px;
	font-size: 10px;
	cursor: pointer;
	text-align: center;
	outline: none;
	color: #67B26F;
	background-color: white;
	border: 1px solid #67B26F;
	border-radius: 5px;
	font-size: 1em;
	width: 15%;
	height: 100px;
}

.textcenter {
	text-align: center;
}

.wordcloud{
	text-align: center;
	padding-rigth: 10%;
	padding-left: 25%;
}
</style>
</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="/opalproject/main">
					<h1>
						<img src="resources/images/Opal.png" width=150 alt
							class="default_logo">
					</h1>
				</a>
			</div>

			<div class="top_nav">
				<div class="top_ul">
					<div class="bs-component1">
						<nav class="navbar navbar-expand-lg navbar-light bg-light">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarColor03"
								aria-controls="navbarColor03" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarColor03">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">�α���</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">ȸ������</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">������</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
	</header>
	<!--header ��-->

	<div class="bs-component2">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--�ǵ帮�� ������.-->

			<div class="collapse navbar-collapse" id="navbarColor03"
				style="height: 100px">
				<div class="navbar-nav2">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/about">�Ұ�</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/datamain">����DATA</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/goods">��깰����</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/markets">�󰡺�����</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">������</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">�Ĵ���õ</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">�������</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar ��-->

	<section>
		<!-- ���⿡ ���� �������� ������ �� �� ����. -->
		<!-- Main Controller ���ο� �����ϴ� datamain �޼���. -->
		<!-- ������ٸ� �޼��带 �����ذ� ����ص� �ȴ�. -->
		<!-- 20200514 jung ���� ������ ������ ���� -->
		<br>
		

		<div class="cont opt1">
			<script>
				var food = new Array('��', '������', '��', '����', '��', '����');

				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document.write("<img class='sickfood' src='resources/img/sick1"+i+".PNG'>");
					document.write("<br>");
					document.write("<br>");
					document.write("<h5 class='textcenter'>" + food[i]	+ "</h5>");
					document.write("</div>");
				}
			</script>
		</div>
		<br>
<div id="htmlwidget_container" class="wordcloud">
  <div id="htmlwidget-8be566e406ab381ca717" style="width:800px;height:550px;" class="wordcloud2 html-widget"></div>
</div>
<script type="application/json" data-for="htmlwidget-8be566e406ab381ca717">{"x":{"word":["������","��","��Ÿ��","��","����","��","��","����","��","û","����","����","������","����","õ��","���","������","�ᳪ��","�Ϸ�","��","����","����","��","���Ĺ�","���ް�","�ѹ�","����","����","����","ȫ��","��","����������","���","����","������","�̳׶�","�ε鷹","����","����","�����","�ڿ�","ä��","�丶��","�׻�ȭ","���","����","�λ�","Į��","��","������","����","����","�ܹ���","����","����","��纣��","�ø���","ȣ��","ȣ��"],"freq":[98,72,55,53,45,31,26,21,16,16,14,11,11,11,11,10,10,10,10,9,9,9,9,9,9,9,8,8,8,8,7,7,7,7,7,6,6,6,6,6,6,6,6,6,5,5,5,5,5,5,4,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":1.83673469387755,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
<script type="application/htmlwidget-sizing" data-for="htmlwidget-8be566e406ab381ca717"> {"viewer":{"width":1,"height":1,"padding":0,"fill":true}}</script>
<br>
<br>
		<div class="cont opt1">
			<button class="selectbutton" >����/�����</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick2'">������</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick3'">�索</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick4'">��/�ĵ�</button>
			<button class="button" onclick="location.href='http://localhost:8000/opalproject/datasick5'">����/����</button>
		</div>
		<br>
		<h4 class="textcenter">�ٸ� �������� �����Ͻ÷��� ��ư�� �����ּ���.</h4>


	</section>

	<footer>
		<h3>Ȩ������ ����(�ٴ� ��)</h3>
	</footer>
	<!--footer ��-->

</body>
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>