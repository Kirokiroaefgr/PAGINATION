<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <%--jQueryの読み込み bootstrap.jsよりさきに読み込まないといけない--%>
  <script
    src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <%--bootstrap.jsの読み込み --%>
  <script
    src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--bootstrap.cssの読み込み --%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="./js/template2.js"></script>
<title>template</title>
</head>
<body>

	<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-xs-12 col-lg-12"
					style="background: #000ff; height: 500px;">


					<nav aria-label="Page navigation example">
						<ul class="pagination" >
						<li  ><a class="bnl" id="01" href="">前のページへ</a></li>
						<li  ><a class="bnl" id="asdf" href="">次のページへ</a></li>


						</ul>
					</nav>


					<hr>
<button id="bn"  type="submit" class="btn btn-primary center-block bn bnl">更新</button>
<s:hidden name="pageNum" id="hoge"  value="1" />
				</div>
			</div>
		</div>
	</div>

</body>
</html>