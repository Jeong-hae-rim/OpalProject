<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�Ұ�</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/entrance.css">

</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="logo">
			  <a href="/opalproject/main">
				<h1>
					<img src="resources/images/Opal.png" width=150 alt class="default_logo">
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
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="/opalproject/customLogin">�α���</a></li>
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="/opalproject/entrance">ȸ������</a></li>
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="#">������</a></li>
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

			<div class="collapse navbar-collapse" id="navbarColor03" style="height:100px">
			   <div class="navbar-nav2">
			   <ul class="navbar-nav mr-auto">
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/about">�Ұ�</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/datamain">����DATA</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/goods">��깰����</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/markets">�󰡺�����</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">������</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">�Ĵ���õ</a></li>
					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">�������</a></li>
				</ul></div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar ��-->
	
	
	<section id="entrance">
	<h2>ȸ������</h2>
	<form method="post" action="/opalproject/" enctype="multipart/form-data">
	 <table>
	 <tbody>
	 <tr>
	 <td class="td_name">�̸�</td><td class="td_text"><input style="width:200px; text-align: left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">���̵�</td><td class="td_text"><input style="width:200px; text-align:left;" type="text">&nbsp;&nbsp;<input type="button" class="btn btn-outline-secondary" value="�ߺ� Ȯ���ϱ�"></td>
	 </tr>
	 <tr>
	 <td class="td_name">��й�ȣ</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">��й�ȣ Ȯ��</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"> <span>&nbsp;&nbsp;*��й�ȣ Ȯ���� ���ؼ� �� ���� �� �Է����ּ���.</span> </td>
	 </tr>
	 <tr>
	 <td class="td_name">����</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">�������</td><td class="td_text"><input style="width: 200px; text-align: left;" type="date"></td>
	 </tr>
	 <tr>
	 <td class="td_name">����</td><td class="td_text"><label><input type="radio" name="check" value="female" checked>����</label>   <label><input type="radio" name="check" value="male">����</label></td>
	 </tr>
	 <tr>
	 <td class="td_name">�̸���</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"> @ <input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">��ȭ��ȣ</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">�޴�����ȣ</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">�ּ�</td><td class="td_text"><input type="button" value="�ּ� �˻�" onclick="goPopup();" class="btn btn-outline-secondary">&nbsp;&nbsp;
	 
	 <input type="text"  style="width:500px;" id="roadAddrPart1"  name="roadAddrPart1" class="form-control" required="true" readonly="true" />
	 <input type="text"  style="width:500px;" id="addrDetail"  name="addrDetail"  class="form-control" required="true" readonly="true"/>
	
	 <!--<input id="address"  style="width: 200px; text-align: left;" type="text" class="form-control" required="true" readonly="true">--></td>
	 </tr>
	 </tbody>
	 </table>
	 <div class="button">
	 <input type="submit" class="btn btn-success" value="ȸ������"> 
     <input onclick="location.href='/opalproject/main'" type="button" class="btn btn-secondary" value="���">
     </div>
	</form>
	</section>
	<!-- �ּ� â�� ���� �ͱ����� �ߴµ� �̰� �� �� ������������ �𸣰ڴ�!-->
	<!-- ���� �κ��� �� �� ������ �غ��� �� �� �����ϴ�. -->
	<!-- entrance�� ����Ǿ� �ִ� �κ��� ���� �� ���� form�� action �κ��� �����ҽ��ϴ�. -->
	
	
		<footer>
		<h3>Ȩ������ ����(�ٴ� ��)</h3>
	</footer>
	<!--footer ��-->
	
</body>
<script>
System.out.println("addrDetail");
System.out.println("roadAddrPart1");
</script>
<script src="resources/juso.js"></script>
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>