<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="../css/south.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="south1">
							<td>노대동</td>
							<td>방림동</td>
							<td>백운동</td>
							<td>봉선동</td>
							<td id="serdong">서동</td>
						</tr>
						<tr id="south2">
							<td>송하동</td>
							<td>양림동</td>
							<td>월산동</td>
							<td>주월동</td>
							<td>지석동</td>
						</tr>
						<tr id="south3">
							<td>진월동</td>
							<td>행암동</td>
					</thead>
				</table>
			</div>















			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph-con1">
					<div class="page-path">광주광역시 > 남구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed43cc1148f() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "노대동", 640000000, 238000000,
												348697916.7 ],
										[ "방림동", 320000000, 60000000,
												190458333.3 ],
										[ "백운동", 400000000, 113000000,
												252310810.8 ],
										[ "봉선동", 1500000000, 73000000,
												269121951.2 ],
										[ "서동", 320000000, 113000000, 277750000 ],
										[ "송하동", 265000000, 103000000,
												182238095.2 ],
										[ "양림동", 320000000, 290000000,
												308333333.3 ],
										[ "월산동", 660000000, 68000000, 231600000 ],
										[ "주월동", 500000000, 53000000,
												209880842.9 ],
										[ "지석동", 245000000, 243000000,
												243666666.7 ],
										[ "진월동", 550000000, 62000000,
												209718373.5 ],
										[ "행암동", 570000000, 255000000,
												320666666.7 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartIDed43cc1148f() {
								var data = gvisDataComboChartIDed43cc1148f();
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
												.getElementById('ComboChartIDed43cc1148f'));
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
										.push(drawChartComboChartIDed43cc1148f);
							})();
							function displayChartComboChartIDed43cc1148f() {
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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDed43cc1148f"></script>

						<!-- divChart -->

						<div id="ComboChartIDed43cc1148f"
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDed43cc1148f.html">ComboChartIDed43cc1148f</a>
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