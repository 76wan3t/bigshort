<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@ include file = "header.jsp"%>
	
	
<%response.setHeader("Cache-control", "no-store");response.setHeader("Pragma", "no-cache");%>
	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=1300px, user-scalable=yes,initial-scale=1, maximum-scale=3.0">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<meta name="Publisher" content="dewy.chang">
<title>Bigshort</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/style.css?var=2">
</head>
<body>
	<div class="wrap">
		<div id="container">
			<div class="top_page">
				<h3>집 가격을 가방에 담다<br><br>가방</h3>
			</div>
			<div class="inner">
				<div class="local">
					<!--검색전-->
					<!--div class="all">
						
					</div>
					<!--검색전 end //-->

					<!-- 구 -->
					<ul class="gj">
						<li><a href="#">광산구</a></li>
						<li><a href="#">북구</a></li>
						<li><a href="#">남구</a></li>
						<li><a href="#">서구</a></li>
						<li><a href="#">동구</a></li>
					</ul>
					<!-- 구 end//-->

				</div>
				<div class="graph-con">
					<div class="page-path">광주광역시 > 북구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartID2b082c033afc() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "도산동", 2.84e+08, 13500000, 126220000 ],
										[ "도천동", 1.03e+08, 8e+07, 9e+07 ],
										[ "비아동", 1.77e+08, 7.5e+07, 120012500 ],
										[ "산월동", 2.75e+08, 1.95e+08,
												227073529.4 ],
										[ "산정동", 5.9e+08, 5.2e+07, 282357894.7 ],
										[ "선암동", 3.5e+08, 2.37e+08, 287255319.1 ],
										[ "소촌동", 2.4e+08, 6.1e+07, 146711538.5 ],
										[ "송정동", 2.7e+08, 6.9e+07, 145781250 ],
										[ "수완동", 8.9e+08, 3.2e+08, 533898148.1 ],
										[ "신가동", 6.2e+08, 1.13e+08, 315050279.3 ],
										[ "신창동", 4.1e+08, 6.1e+07, 226107569.7 ],
										[ "신촌동", 2.05e+08, 8.8e+07, 169409090.9 ],
										[ "쌍암동", 1.25e+08, 1.25e+08, 1.25e+08 ],
										[ "우산동", 2.73e+08, 5.8e+07, 108613821.1 ],
										[ "운남동", 2.58e+08, 8.5e+07, 144241784 ],
										[ "운수동", 1.16e+08, 1.03e+08, 1.08e+08 ],
										[ "월계동", 3.2e+08, 1.02e+08, 171201680.7 ],
										[ "월곡동", 2.53e+08, 7e+07, 162625000 ],
										[ "장덕동", 8e+08, 2.15e+08, 385390804.6 ],
										[ "하남동", 1.77e+08, 1.21e+08,
												150882352.9 ],
										[ "흑석동", 4.2e+08, 2.4e+08, 322222222.2 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartID2b082c033afc() {
								var data = gvisDataComboChartID2b082c033afc();
								var options = {};
								options["allowHtml"] = true;
								options["seriesType"] = "bars";
								options["series"] = {
									2 : {
										type : 'line'
									}
								};/* 차트의 전체 크기 조절 */
								options["width"] = 2000;
								options["height"] = 400;
								options["overflow"] = scroll;
								
								var chart = new google.visualization.ComboChart(
										document
												.getElementById('ComboChartID2b082c033afc'));
								chart.draw(data, options);

							}

							// jsDisplayChart
							(function() {
								var pkgs = window.__gvisPackages = window.__gvisPackages
										|| [];
								var callbacks = window.__gvisCallbacks = window.__gvisCallbacks
										|| [];
								var chartid = "corechart";

								// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
								var i, newPackage = true;
								for (i = 0; newPackage && i < pkgs.length; i++) {
									if (pkgs[i] === chartid)
										newPackage = false;
								}
								if (newPackage)
									pkgs.push(chartid);

								// Add the drawChart function to the global list of callbacks
								callbacks
										.push(drawChartComboChartID2b082c033afc);
							})();
							function displayChartComboChartID2b082c033afc() {
								var pkgs = window.__gvisPackages = window.__gvisPackages
										|| [];
								var callbacks = window.__gvisCallbacks = window.__gvisCallbacks
										|| [];
								window.clearTimeout(window.__gvisLoad);
								// The timeout is set to 100 because otherwise the container div we are
								// targeting might not be part of the document yet
								window.__gvisLoad = setTimeout(function() {
									var pkgCount = pkgs.length;
									google.load("visualization", "1", {
										packages : pkgs,
										callback : function() {
											if (pkgCount != pkgs.length) {
												// Race condition where another setTimeout call snuck in after us; if
												// that call added a package, we must not shift its callback
												return;
											}
											while (callbacks.length > 0)
												callbacks.shift()();
										}
									});
								}, 100);
							}

							// jsFooter
						</script>

						<!-- jsChart -->
						<script type="text/javascript"
							src="https://www.google.com/jsapi?callback=displayChartComboChartID2b082c033afc"></script>

						<!-- divChart -->

						<div id="ComboChartID2b082c033afc"	
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>				<!-- 화면의 그래프 크기 옵션 -->
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartID2b082c033afc.html">ComboChartID2b082c033afc</a>
								&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />
							<!-- htmlFooter -->
							<span> R version 3.4.4 (2018-03-15) &#8226; <a
								href="https://developers.google.com/terms/">Google Terms of
									Use</a> &#8226; <a
								href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
									and Data Policy</a>
							</span>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file = "footer.jsp" %>