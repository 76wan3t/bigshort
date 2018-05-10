<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="../css/east.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="east1">
							<td>계림동</td>
							<td class="toomuch">금남로2가</td>
							<td class="toomuch">금남로3가</td>
							<td>대인동</td>
							<td>동명동</td>
						</tr>
						<tr id="east2">
							<td>산수동</td>
							<td>소태동</td>
							<td>용산동</td>
							<td>운림동</td>
							<td>월남동</td>
						</tr>
						<tr id="east3">
							<td>지산동</td>
							<td class="toomuch">충장로4가</td>
							<td id="hakdong">학동</td>
					</thead>
				</table>
			</div>















			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph-con1">
					<div class="page-path">광주광역시 > 동구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed474ab435b() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "계림동", 435000000, 89000000, 255238806 ],
										[ "금남로2가", 250000000, 250000000,
												250000000 ],
										[ "금남로3가", 122000000, 122000000,
												122000000 ],
										[ "대인동", 206000000, 155000000,
												185333333.3 ],
										[ "동명동", 230000000, 210000000,
												223333333.3 ],
										[ "산수동", 315000000, 65000000,
												176697674.4 ],
										[ "소태동", 541500000, 72000000,
												151035714.3 ],
										[ "용산동", 147000000, 147000000,
												147000000 ],
										[ "운림동", 410000000, 125000000,
												228898550.7 ],
										[ "월남동", 300000000, 210000000,
												255527777.8 ],
										[ "지산동", 300000000, 85000000, 219718750 ],
										[ "충장로4가", 218000000, 107000000,
												183857142.9 ],
										[ "학동", 658000000, 105000000,
												263752136.8 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartIDed474ab435b() {
								var data = gvisDataComboChartIDed474ab435b();
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
												.getElementById('ComboChartIDed474ab435b'));
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
										.push(drawChartComboChartIDed474ab435b);
							})();
							function displayChartComboChartIDed474ab435b() {
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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDed474ab435b"></script>

						<!-- divChart -->

						<div id="ComboChartIDed474ab435b"
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDed474ab435b.html">ComboChartIDed474ab435b</a>
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