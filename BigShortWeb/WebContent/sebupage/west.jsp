<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="../css/west.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="west1">
							<td>광천동</td>
							<td>금호동</td>
							<td>내방동</td>
							<td>농성동</td>
							<td>동천동</td>
						</tr>
						<tr id="west2">
							<td>마륵동</td>
							<td>매월동</td>
							<td>쌍촌동</td>
							<td id="yangdong">양동</td>
							<td>유촌동</td>
						</tr>
						<tr id="west3">
							<td>치평동</td>
							<td>풍암동</td>
							<td>화정동</td>
					</thead>
				</table>
			</div>















			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph-con1">
					<div class="page-path">광주광역시 > 서구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed443272950() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "광천동", 590000000, 85000000,
												428285714.3 ],
										[ "금호동", 635000000, 90000000,
												226853479.9 ],
										[ "내방동", 255000000, 61000000,
												160386363.6 ],
										[ "농성동", 235000000, 59000000,
												154307692.3 ],
										[ "동천동", 650000000, 248000000,
												345672413.8 ],
										[ "마륵동", 690000000, 180000000,
												442384615.4 ],
										[ "매월동", 410000000, 239000000,
												323166666.7 ],
										[ "쌍촌동", 820000000, 75000000,
												225285046.7 ],
										[ "양동", 350000000, 102000000, 179500000 ],
										[ "유촌동", 255000000, 91000000,
												186680722.9 ],
										[ "치평동", 710000000, 72500000,
												292638235.3 ],
										[ "풍암동", 820000000, 85000000,
												225360128.6 ],
										[ "화정동", 640000000, 51000000,
												270446601.9 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartIDed443272950() {
								var data = gvisDataComboChartIDed443272950();
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
												.getElementById('ComboChartIDed443272950'));
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
										.push(drawChartComboChartIDed443272950);
							})();
							function displayChartComboChartIDed443272950() {
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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDed443272950"></script>

						<!-- divChart -->

						<div id="ComboChartIDed443272950"
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDed443272950.html">ComboChartIDed443272950</a>
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