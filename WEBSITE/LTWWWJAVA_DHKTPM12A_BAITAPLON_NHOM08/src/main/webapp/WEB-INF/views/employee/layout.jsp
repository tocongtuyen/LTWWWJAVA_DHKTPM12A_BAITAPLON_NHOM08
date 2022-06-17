<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:message code="employee.menu.home" /></title>

</head>
<div id="main-wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="page-wrapper">
		<!-- Container fluid  -->
		<div class="container-fluid">
			<!-- Bread crumb and right sidebar toggle -->
			<div class="row page-titles">
				<div class="col-md-5 col-8 align-self-center">
					<h3 class="text-themecolor m-b-0 m-t-0">
						<s:message code="employee.menu.home" />
					</h3>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)"><s:message
									code="employee.menu.home" /></a></li>
						<li class="breadcrumb-item active"><s:message
								code="employee.menu.info" /></li>
					</ol>
				</div>
				<div class="col-md-7 col-4 align-self-center">
					
				</div>
			</div>
			<!--  -->


			<!-- End Bread crumb and right sidebar toggle -->

			
			<!--  -->

			<!-- Start Page Content -->
			
			<!-- End PAge Content -->

			<!-- Thống Kê -->
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<div class="card-block">
								<h4 class="card-title">
									<s:message code="admin.home.report" />
								</h4>
							</div>
						</div>
						<div id="tabs">
							<ul>
								<li><a href="employee/home#tabs-1"><s:message
											code="revenue.byProduct" /> </a></li>
								<li><a href="employee/home#tabs-2"><s:message
											code="revenue.byCategory" /></a></li>
								<li><a href="employee/home#tabs-3"><s:message
											code="revenue.byProducer" /></a></li>
								<li><a href="employee/home#tabs-4"><s:message
											code="revenue.byYear" /></a></li>
							</ul>

							<!-- Theo Mặt Hàng -->
							<div id="tabs-1">
								<script type="text/javascript"
									src="https://www.google.com/jsapi"></script>
								<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['<s:message code="admin.revenue.type" />', '<s:message code="admin.inventory.revenue" />'],
          <c:forEach var="a" items="${productRevenue}">
          ["${a[0]}", ${a[1]}],
          </c:forEach>
        ]);	

        var options = {
          title: '<s:message code="admin.revenue.turnover" />',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart1_3d'));
        chart.draw(data, options);
      }
    </script>
								<div id="piechart1_3d" style="width: 100%; height: 500px;"></div>

							</div>
							<!-- Theo Loại Hàng -->
							<div id="tabs-2">
								<script type="text/javascript"
									src="https://www.google.com/jsapi"></script>
								<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['<s:message code="admin.revenue.type" />', '<s:message code="admin.inventory.revenue" />'],
          <c:forEach var="b" items="${categoryRevenue}">
          ["${b[0]}", ${b[1]}],
          </c:forEach>
        ]);	

        var options = {
          title: '<s:message code="admin.revenue.turnover" />',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart2_3d'));
        chart.draw(data, options);
      }	
    </script>
								<div id="piechart2_3d" style="width: 100%; height: 500px;"></div>

							</div>
							<!-- Theo Hãng -->
							<div id="tabs-3">
								<script type="text/javascript"
									src="https://www.google.com/jsapi"></script>
								<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['<s:message code="admin.revenue.type" />', '<s:message code="admin.inventory.revenue" />'],
          <c:forEach var="a" items="${producerRevenue}">
          ["${a[0]}", ${a[1]}],
          </c:forEach>
        ]);	

        var options = {
          title: '<s:message code="admin.revenue.turnover" />',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart3_3d'));
        chart.draw(data, options);
      }
    </script>
								<div id="piechart3_3d" style="width: 100%; height: 500px;"></div>

							</div>
							<!-- Theo Năm -->
							<div id="tabs-4">
								<script type="text/javascript"
									src="https://www.google.com/jsapi"></script>
								<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['<s:message code="admin.revenue.type" />', '<s:message code="admin.inventory.revenue" />'],
          <c:forEach var="a" items="${yearRevenue}">
          ["${a[0]}", ${a[1]}],
          </c:forEach>
        ]);	

        var options = {
          title: '<s:message code="admin.revenue.turnover" />',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart4_3d'));
        chart.draw(data, options);
      }
    </script>
								<div id="piechart4_3d" style="width: 100%; height: 500px;"></div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
		</div>
		<!-- End Container fluid  -->
		<!-- footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</div>
</html>