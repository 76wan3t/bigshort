<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="../css/north.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="north1">
							<td>각화동</td>
							<td>동림동</td>
							<td>두암동</td>
							<td>매곡동</td>
							<td>문흥동</td>
						</tr>
						<tr id="north2">
							<td>본촌동</td>
							<td>삼각동</td>
							<td>신안동</td>
							<td>신용동</td>
							<td>양산동</td>
						</tr>
						<tr id="north3">
							<td>연제동</td>
							<td>오치동</td>
							<td>용두동</td>
							<td>용봉동</td>
							<td>우산동</td>
						</tr>
						<tr id="north4">
							<td>운암동</td>
							<td>일곡동</td>
							<td id="imdong">임동</td>
					</thead>
				</table>
			</div>















			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph-con1">
					<div class="page-path">광주광역시 > 북구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed4622566b8() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "각화동", 338000000, 92000000,
												174739130.4 ],
										[ "동림동", 230000000, 90000000,
												155756097.6 ],
										[ "두암동", 650000000, 63000000,
												160456937.8 ],
										[ "매곡동", 355000000, 70000000,
												181766917.3 ],
										[ "문흥동", 310000000, 57000000,
												155952554.7 ],
										[ "본촌동", 500000000, 218000000,
												340333333.3 ],
										[ "삼각동", 340000000, 47000000,
												159423076.9 ],
										[ "신안동", 205000000, 37500000, 144025000 ],
										[ "신용동", 520000000, 115000000,
												298381679.4 ],
										[ "양산동", 395000000, 77500000,
												190212837.8 ],
										[ "연제동", 335000000, 87000000,
												190628819.4 ],
										[ "오치동", 179500000, 62000000,
												121810606.1 ],
										[ "용두동", 275000000, 259000000,
												267333333.3 ],
										[ "용봉동", 450000000, 77000000,
												192227848.1 ],
										[ "우산동", 263000000, 96000000,
												209161290.3 ],
										[ "운암동", 610000000, 65000000, 231975502 ],
										[ "일곡동", 460000000, 87000000,
												196834801.8 ],
										[ "임동", 340000000, 77000000, 231200000 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartIDed4622566b8() {
								var data = gvisDataComboChartIDed4622566b8();
								var options = {};
								options["allowHtml"] = true;
								options["seriesType"] = "bars";
								options["series"] = {
									2 : {
										type : 'line'
									}
								};
								/* 차트의 전체 크기 조절 */
								options["width"] = 2000;
								options["height"] = 400;
								options["overflow"] = scroll;

								var chart = new google.visualization.ComboChart(
										document
												.getElementById('ComboChartIDed4622566b8'));
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
										.push(drawChartComboChartIDed4622566b8);
							})();
							function displayChartComboChartIDed4622566b8() {
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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDed4622566b8"></script>

						<!-- divChart -->

						<div id="ComboChartIDed4622566b8"
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDed4622566b8.html">ComboChartIDed4622566b8</a>
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
			<!-- 그래프 div 끝 -->















		</div>
	</div>






</body>
</html>
<%@ include file="../footer.jsp"%>