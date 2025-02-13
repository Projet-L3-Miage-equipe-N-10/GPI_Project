<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="in.co.fennel.project.bean.ItemBean"%>
<%@page import="in.co.fennel.project.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item List</title>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div class="container">
		<br>
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Item
					List</li>
			</ol>
		</nav>
		<br>

		<div class="row">
			<div class="col-2">
				<ul class="list-group">
					<li class="list-group-item active" aria-current="true">Category</li>
					<li class="list-group-item"><a class="link-dark" href="<%=FPSView.USER_ITEM_LIST_CTL%>?category=DIY">DIY</a></li>
					<li class="list-group-item"><a class="link-dark" href="<%=FPSView.USER_ITEM_LIST_CTL%>?category=Decoration">Decoration</a></li>
					<li class="list-group-item"><a class="link-dark" href="<%=FPSView.USER_ITEM_LIST_CTL%>?category=Gardening">Gardening</a></li>
				</ul>
			</div>
			<div class="col-10">
				<div class="row row-cols-1 row-cols-md-5 g-4">

					<%
					int pageNo = ServletUtility.getPageNo(request);
					int pageSize = ServletUtility.getPageSize(request);
					int index = ((pageNo - 1) * pageSize) + 1;
					ItemBean bean = null;
					List list = ServletUtility.getList(request);
					Iterator<ItemBean> it = list.iterator();
					while (it.hasNext()) {
						bean = it.next();
					%>
					<div class="col">
						<div class="card h-100">
							<img
								src="<%=FPSView.APP_CONTEXT + FPSView.GET_IMAGE_VIEW%>?id=<%=bean.getId()%>&table=F_Items"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title"><%=bean.getName()%></h5>
								<p class="card-text"><%=bean.getDescription()%></p>
								<h6 class="card-title" style="color: orange;"><%=bean.getPrice()%></h6>
								<%
								if (userLoggedIn) {
								%>
								<a href="<%=FPSView.CART_CTL%>?iId=<%=bean.getId()%>"
									class="btn btn-primary btn btn-info">Add To Cart</a>
								<%
								} else {
								%>
								<a href="<%=FPSView.LOGIN_CTL%>?iId=<%=bean.getId()%>"
									class="btn btn-primary btn btn-info">Add To Cart</a>
								<%
								}
								%>
							</div>
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
</body>
</html>