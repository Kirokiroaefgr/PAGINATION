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
<title>template</title>
</head>
<body>

	<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-xs-12 col-lg-12"
					style="background: #000ff; height: 500px;">

              <s:if test="maxPage>0">
                  <nav aria-label="Page navigation example">
                      <ul class="pagination" >
                          <li class=" <s:if test="pageNum<=1">disabled</s:if>"><a  href= '<s:url action="PageAction"><s:param name="pageNum" value="1"/></s:url>'>最初のページ</a></li>
                          <s:if test="pageNum<=1"><li class='page-item disabled'><a  href='#'>前のページへ</a></li></s:if>
                          <s:else><li ><a  href= '<s:url action="PageAction"><s:param name="pageNum" value="%{pageNum-1}"/></s:url>'>前のページへ</a></li></s:else>
                          <s:iterator value="page" status="st">
                              <li class=' <s:if test="pageNum==page[#st.count-1]">active</s:if>'><a  href= '<s:url action="PageAction"><s:param name="pageNum" value="%{page[#st.count-1]}"/></s:url>'><s:property/></a></li>
                          </s:iterator>
                          <s:if test="maxPage<=pageNum"><li class="page-item disabled"><a  href=''>次のページへ</a></li></s:if>
                          <s:else><li ><a  href= '<s:url action="PageAction"><s:param name="pageNum" value="%{pageNum+1}"/></s:url>'>次のページへ</a></li></s:else>
                          <li class=" <s:if test='maxPage<=pageNum'>disabled</s:if>"><a  href= '<s:url action="PageAction"><s:param name="pageNum" value="%{maxPage}"/></s:url>'>最後のページ（<s:property value="maxPage"/>）</a></li>
                      </ul>
                  </nav>
              </s:if>

					<hr>

					<s:form action="PageAction">
						<s:hidden name="pageNum" value="1" />
						<button type="submit" class="btn btn-primary center-block">
							最初だけ</button>
					</s:form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>