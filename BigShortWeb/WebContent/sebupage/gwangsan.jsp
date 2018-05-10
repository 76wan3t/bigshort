<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/gwangsan.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="gwangsan1">
							<td>도산동</td>
							<td>도천동</td>
							<td>비아동</td>
							<td>산월동</td>
							<td>산정동</td>
						</tr>
						<tr id="gwangsan2">
							<td>선암동</td>
							<td>소촌동</td>
							<td>송정동</td>
							<td>수완동</td>
							<td>신가동</td>
						</tr>
						<tr id="gwangsan3">
							<td>신창동</td>
							<td>신촌동</td>
							<td>쌍암동</td>
							<td>우산동</td>
							<td>운남동</td>
						</tr>
						<tr id="gwangsan4">
							<td>운수동</td>
							<td>월계동</td>
							<td>월곡동</td>
							<td>장덕동</td>
							<td>하남동</td>
							</tr>
						<tr id="gwangsan5">
							<td>흑석동</td>
					</thead>
				</table>
			</div>















			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph-con1">
				<div class="page-path">광주광역시 > 광산구</div>
				<div class="graph-inner">
					<script type="text/javascript">
						// jsData 
						function gvisDataComboChartIDed43ab15521() {
							var data = new google.visualization.DataTable();
							var datajson = [
									[ "도산동", 284000000, 13500000, 126220000 ],
									[ "도천동", 103000000, 80000000, 90000000 ],
									[ "비아동", 177000000, 75000000, 120012500 ],
									[ "산월동", 275000000, 195000000, 227073529.4 ],
									[ "산정동", 590000000, 52000000, 282357894.7 ],
									[ "선암동", 350000000, 237000000, 287255319.1 ],
									[ "소촌동", 240000000, 61000000, 146711538.5 ],
									[ "송정동", 270000000, 69000000, 145781250 ],
									[ "수완동", 890000000, 320000000, 533898148.1 ],
									[ "신가동", 620000000, 113000000, 315050279.3 ],
									[ "신창동", 410000000, 61000000, 226107569.7 ],
									[ "신촌동", 205000000, 88000000, 169409090.9 ],
									[ "쌍암동", 125000000, 125000000, 125000000 ],
									[ "우산동", 273000000, 58000000, 108613821.1 ],
									[ "운남동", 258000000, 85000000, 144241784 ],
									[ "운수동", 116000000, 103000000, 108000000 ],
									[ "월계동", 320000000, 102000000, 171201680.7 ],
									[ "월곡동", 253000000, 70000000, 162625000 ],
									[ "장덕동", 800000000, 215000000, 385390804.6 ],
									[ "하남동", 177000000, 121000000, 150882352.9 ],
									[ "흑석동", 420000000, 240000000, 322222222.2 ] ];
							data.addColumn('string', 'DONGNAME');
							data.addColumn('number', '최대가격');
							data.addColumn('number', '최소가격');
							data.addColumn('number', '평균가');
							data.addRows(datajson);
							return (data);
						}

						// jsDrawChart
						function drawChartComboChartIDed43ab15521() {
							var data = gvisDataComboChartIDed43ab15521();
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
											.getElementById('ComboChartIDed43ab15521'));
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
							callbacks.push(drawChartComboChartIDed43ab15521);
						})();
						function displayChartComboChartIDed43ab15521() {
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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDed43ab15521"></script>

					<!-- divChart -->

					<div id="ComboChartIDed43ab15521"
						style="width: 500; height: 500; overflow: scroll;"></div>
					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDed43ab15521.html">ComboChartIDed43ab15521</a>
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