<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#td1").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con2").css("display", "block");

		});
		$("#td2").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con3").css("display", "block");

		});
		$("#td3").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con4").css("display", "block");

		});
		$("#td4").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con5").css("display", "block");

		});
		$("#td5").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con6").css("display", "block");

		});
		$("#td6").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con7").css("display", "block");

		});
		$("#td7").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con8").css("display", "block");

		});
		$("#td8").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con9").css("display", "block");

		});
		$("#td9").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con10").css("display", "block");

		});
		$("#td10").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con11").css("display", "block");

		});
		$("#td11").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con12").css("display", "block");

		});
		$("#td12").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con13").css("display", "block");

		});

	});
</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css"
	href="/BigShortWeb/css/south.css?var=1">
</head>

<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="south1">
							<td id="td1">노대동</td>
							<td id="td2">방림동</td>
							<td id="td3">백운동</td>
							<td id="td4">봉선동</td>
							<td id="td5">서동</td>
						</tr>
						<tr id="south2">
							<td id="td6">송하동</td>
							<td id="td7">양림동</td>
							<td id="td8">월산동</td>
							<td id="td9">주월동</td>
							<td id="td10">지석동</td>
						</tr>
						<tr id="south3">
							<td id="td11">진월동</td>
							<td id="td12">행암동</td>
					</thead>
				</table>
			</div>

			<!-- 남구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 남구</div>
				<div class="graph-inner">
					<script type="text/javascript">
						// jsData 
						function gvisDataComboChartIDed43cc1148f() {
							var data = new google.visualization.DataTable();
							var datajson = [
									[ "노대동", 640000000, 238000000, 348697916.7 ],
									[ "방림동", 320000000, 60000000, 190458333.3 ],
									[ "백운동", 400000000, 113000000, 252310810.8 ],
									[ "봉선동", 1500000000, 73000000, 269121951.2 ],
									[ "서동", 320000000, 113000000, 277750000 ],
									[ "송하동", 265000000, 103000000, 182238095.2 ],
									[ "양림동", 320000000, 290000000, 308333333.3 ],
									[ "월산동", 660000000, 68000000, 231600000 ],
									[ "주월동", 500000000, 53000000, 209880842.9 ],
									[ "지석동", 245000000, 243000000, 243666666.7 ],
									[ "진월동", 550000000, 62000000, 209718373.5 ],
									[ "행암동", 570000000, 255000000, 320666666.7 ] ];
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
							callbacks.push(drawChartComboChartIDed43cc1148f);
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
			<!-- 남구 그래프 div 끝 -->

			<!-- 노대동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">남구 > 노대동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208220a3c35() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남양휴튼",

							560000000,

							420000000,

							467142857.1

							],

							[

							"휴먼시아5단지",

							340000000,

							238000000,

							258208333.3

							],

							[

							"휴먼시아6단지",

							595000000,

							385000000,

							446250000

							],

							[

							"휴먼시아7단지",

							310000000,

							255000000,

							287555555.6

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID1208220a3c35() {

							var data = gvisDataComboChartID1208220a3c35();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208220a3c35')

							);

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

							callbacks.push(drawChartComboChartID1208220a3c35);

						})();

						function displayChartComboChartID1208220a3c35() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208220a3c35"></script>



					<!-- divChart -->



					<div id="ComboChartID1208220a3c35"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208220a3c35.html">ComboChartID1208220a3c35</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 노대동 그래프 끝 -->

			<!-- 방림동 그래프 시작 -->
			<div class="graph graph-con3">
				<div class="page-path">남구 > 방림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12087d6e640() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광명",

							98000000,

							98000000,

							98000000

							],

							[

							"광명그린",

							108000000,

							88000000,

							103000000

							],

							[

							"광명샤인빌",

							260000000,

							260000000,

							260000000

							],

							[

							"광신프로그레스",

							310000000,

							290000000,

							301250000

							],

							[

							"금원",

							76000000,

							69000000,

							72750000

							],

							[

							"금호",

							240000000,

							110000000,

							147866666.7

							],

							[

							"라인효친1단지",

							140000000,

							108000000,

							114692307.7

							],

							[

							"라인효친2단지",

							176000000,

							145000000,

							166100000

							],

							[

							"명지로드힐",

							322000000,

							300000000,

							313230769.2

							],

							[

							"모아",

							185000000,

							132000000,

							162636363.6

							],

							[

							"삼일",

							168000000,

							150000000,

							158000000

							],

							[

							"성진",

							67000000,

							67000000,

							67000000

							],

							[

							"송림",

							120000000,

							107000000,

							113500000

							],

							[

							"송림그린",

							82000000,

							82000000,

							82000000

							],

							[

							"송림연립",

							112000000,

							112000000,

							112000000

							],

							[

							"송학",

							70000000,

							65000000,

							67500000

							],

							[

							"영진",

							65000000,

							65000000,

							65000000

							],

							[

							"휴먼시아",

							303000000,

							217000000,

							279444444.4

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12087d6e640() {

							var data = gvisDataComboChartID12087d6e640();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12087d6e640')

							);

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

							callbacks.push(drawChartComboChartID12087d6e640);

						})();

						function displayChartComboChartID12087d6e640() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12087d6e640"></script>



					<!-- divChart -->



					<div id="ComboChartID12087d6e640"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12087d6e640.html">ComboChartID12087d6e640</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 방림동 그래프 끝 -->

			<!-- 백운동 그래프 시작 -->
			<div class="graph graph-con4">
				<div class="page-path">남구 > 백운동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120818583d9d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"대주",

							168000000,

							152000000,

							160000000

							],

							[

							"대흥백운스카이1차",

							255000000,

							125000000,

							185833333.3

							],

							[

							"대흥백운스카이2차",

							127000000,

							114000000,

							120000000

							],

							[

							"목우",

							150000000,

							150000000,

							150000000

							],

							[

							"벽산",

							250000000,

							190000000,

							210000000

							],

							[

							"사직스카이",

							158000000,

							148000000,

							151333333.3

							],

							[

							"우방아이유쉘",

							335000000,

							305000000,

							317000000

							],

							[

							"제일파크",

							175000000,

							145000000,

							155000000

							],

							[

							"현대",

							240000000,

							240000000,

							240000000

							],

							[

							"휴먼시아",

							400000000,

							242000000,

							292577777.8

							],

							[

							"힐스테이트백운",

							420000000,

							365000000,

							398333333.3

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID120818583d9d() {

							var data = gvisDataComboChartID120818583d9d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120818583d9d')

							);

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

							callbacks.push(drawChartComboChartID120818583d9d);

						})();

						function displayChartComboChartID120818583d9d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120818583d9d"></script>



					<!-- divChart -->



					<div id="ComboChartID120818583d9d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120818583d9d.html">ComboChartID120818583d9d</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 백운동 그래프 끝 -->

			<!-- 봉선동 그래프 시작 -->
			<div class="graph graph-con5">
				<div class="page-path">남구 > 봉선동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083c665101() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"골든뜨레빌",

							1500000000,

							1500000000,

							1500000000

							],

							[

							"금호타운1차",

							510000000,

							220000000,

							265150000

							],

							[

							"금호타운2차",

							650000000,

							240000000,

							317500000

							],

							[

							"남양휴튼1차",

							1100000000,

							980000000,

							1040000000

							],

							[

							"남양휴튼2차",

							1300000000,

							850000000,

							1155000000

							],

							[

							"대신",

							92000000,

							78000000,

							85000000

							],

							[

							"대화",

							192000000,

							117000000,

							157937500

							],

							[

							"더쉴",

							1500000000,

							900000000,

							1216666667

							],

							[

							"라인1차",

							370000000,

							190000000,

							250714285.7

							],

							[

							"라인2차",

							200000000,

							182000000,

							191750000

							],

							[

							"라인3차",

							300000000,

							300000000,

							300000000

							],

							[

							"라인광장1차",

							127000000,

							70000000,

							110888888.9

							],

							[

							"라인광장2차",

							135000000,

							115000000,

							123666666.7

							],

							[

							"라인하이츠",

							215000000,

							60000000,

							116233333.3

							],

							[

							"명지",

							109000000,

							74000000,

							101181818.2

							],

							[

							"모아1단지1차",

							128000000,

							120000000,

							123250000

							],

							[

							"모아1단지2차",

							175000000,

							72000000,

							131222222.2

							],

							[

							"모아2단지1차",

							126000000,

							99000000,

							109625000

							],

							[

							"모아엘가",

							480000000,

							425000000,

							452500000

							],

							[

							"무등1차",

							315000000,

							180000000,

							256117647.1

							],

							[

							"무등2차",

							414000000,

							180000000,

							259075000

							],

							[

							"무등3차1단지",

							185000000,

							122000000,

							165481481.5

							],

							[

							"무등3차2단지",

							360000000,

							125000000,

							229000000

							],

							[

							"봉선지웰",

							560000000,

							258000000,

							396363636.4

							],

							[

							"봉선지웰에스테이트",

							280000000,

							155000000,

							207857142.9

							],

							[

							"삼익1차",

							285000000,

							218000000,

							259200000

							],

							[

							"삼익2차",

							263000000,

							210000000,

							229545454.5

							],

							[

							"솔뫼렉스",

							600000000,

							550000000,

							566666666.7

							],

							[

							"쌍용스윗닷홈",

							1100000000,

							1100000000,

							1100000000

							],

							[

							"제일풍경채",

							723000000,

							630000000,

							668285714.3

							],

							[

							"포스코더샵",

							570000000,

							260000000,

							338750000

							],

							[

							"한국아델리움1차",

							1500000000,

							1500000000,

							1500000000

							],

							[

							"한국아델리움3차",

							740000000,

							690000000,

							707857142.9

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12083c665101() {

							var data = gvisDataComboChartID12083c665101();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083c665101')

							);

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

							callbacks.push(drawChartComboChartID12083c665101);

						})();

						function displayChartComboChartID12083c665101() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083c665101"></script>



					<!-- divChart -->



					<div id="ComboChartID12083c665101"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083c665101.html">ComboChartID12083c665101</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 봉선동 그래프 끝 -->

			<!-- 서동 그래프 시작 -->
			<div class="graph graph-con6">
				<div class="page-path">남구 > 서동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083fcd2a4b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"아남프라자",

							150000000,

							115000000,

							138000000

							],

							[

							"영무예다음",

							318000000,

							294000000,

							303272727.3

							],

							[

							"제일파크",

							113000000,

							113000000,

							113000000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12083fcd2a4b() {

							var data = gvisDataComboChartID12083fcd2a4b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083fcd2a4b')

							);

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

							callbacks.push(drawChartComboChartID12083fcd2a4b);

						})();

						function displayChartComboChartID12083fcd2a4b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083fcd2a4b"></script>



					<!-- divChart -->



					<div id="ComboChartID12083fcd2a4b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083fcd2a4b.html">ComboChartID12083fcd2a4b</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 서동 그래프 끝 -->

			<!-- 송하동 그래프 시작 -->
			<div class="graph graph-con7">
				<div class="page-path">남구 > 송하동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12087345365() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							235000000,

							130000000,

							159818181.8

							],

							[

							"삼익",

							220000000,

							105000000,

							124333333.3

							],

							[

							"진아리채5차1단지",

							235000000,

							195000000,

							204166666.7

							],

							[

							"진아리채5차2단지",

							265000000,

							230000000,

							251631578.9

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12087345365() {

							var data = gvisDataComboChartID12087345365();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12087345365')

							);

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

							callbacks.push(drawChartComboChartID12087345365);

						})();

						function displayChartComboChartID12087345365() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12087345365"></script>



					<!-- divChart -->



					<div id="ComboChartID12087345365"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12087345365.html">ComboChartID12087345365</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 송하동 그래프 끝 -->

			<!-- 양림동 그래프 시작 -->
			<div class="graph graph-con8">
				<div class="page-path">남구 > 양림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120814eb5f2c() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"휴먼시아",

							310000000,

							285000000,

							298428571.4

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID120814eb5f2c() {

							var data = gvisDataComboChartID120814eb5f2c();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120814eb5f2c')

							);

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

							callbacks.push(drawChartComboChartID120814eb5f2c);

						})();

						function displayChartComboChartID120814eb5f2c() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120814eb5f2c"></script>



					<!-- divChart -->



					<div id="ComboChartID120814eb5f2c"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120814eb5f2c.html">ComboChartID120814eb5f2c</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 양림동 그래프 끝 -->

			<!-- 월산동 그래프 시작 -->
			<div class="graph graph-con9">
				<div class="page-path">남구 > 월산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120824493230() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남부",

							73000000,

							73000000,

							73000000

							],

							[

							"덕림",

							83000000,

							83000000,

							83000000

							],

							[

							"덕림제일파크",

							130000000,

							130000000,

							130000000

							],

							[

							"라인",

							165000000,

							115000000,

							131333333.3

							],

							[

							"삼우",

							83000000,

							75000000,

							79000000

							],

							[

							"신우",

							127000000,

							115000000,

							121400000

							],

							[

							"우방아이유쉘",

							465000000,

							290000000,

							365000000

							],

							[

							"우영",

							119000000,

							115000000,

							117666666.7

							],

							[

							"이스토리",

							195000000,

							187000000,

							191333333.3

							],

							[

							"제일맨션",

							99000000,

							95000000,

							97000000

							],

							[

							"제일파크",

							99000000,

							99000000,

							99000000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID120824493230() {

							var data = gvisDataComboChartID120824493230();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120824493230')

							);

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

							callbacks.push(drawChartComboChartID120824493230);

						})();

						function displayChartComboChartID120824493230() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120824493230"></script>



					<!-- divChart -->



					<div id="ComboChartID120824493230"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120824493230.html">ComboChartID120824493230</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 월산동 그래프 끝 -->

			<!-- 주월동 그래프 시작 -->

			<div class="graph graph-con10">
				<div class="page-path">남구 > 주월동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120867f81ff6() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"경남",

							200000000,

							140000000,

							168538461.5

							],

							[

							"광명메이루즈",

							500000000,

							420000000,

							451666666.7

							],

							[

							"금당",

							55000000,

							55000000,

							55000000

							],

							[

							"금영푸르미",

							205000000,

							195000000,

							199571428.6

							],

							[

							"덕산",

							195000000,

							140000000,

							161083333.3

							],

							[

							"라인가든1차",

							105000000,

							56900000,

							91780000

							],

							[

							"라인가든2차",

							147000000,

							110000000,

							131750000

							],

							[

							"명성",

							90000000,

							90000000,

							90000000

							],

							[

							"명지로드힐",

							242000000,

							230000000,

							236000000

							],

							[

							"명지맨션",

							230000000,

							123000000,

							195727272.7

							],

							[

							"무등파크",

							170000000,

							140000000,

							153333333.3

							],

							[

							"무등프라자주월2차",

							130000000,

							93000000,

							106000000

							],

							[

							"무진",

							160000000,

							160000000,

							160000000

							],

							[

							"서강",

							112000000,

							110000000,

							110666666.7

							],

							[

							"서남하이츠",

							130000000,

							125000000,

							126666666.7

							],

							[

							"세왕그린파크",

							160000000,

							125000000,

							148000000

							],

							[

							"송림",

							135000000,

							135000000,

							135000000

							],

							[

							"신영루체빌",

							105000000,

							95000000,

							98250000

							],

							[

							"신천그린",

							150000000,

							136000000,

							142833333.3

							],

							[

							"영무예다음1차",

							270000000,

							163000000,

							226000000

							],

							[

							"영무예다음2차",

							153000000,

							148000000,

							150500000

							],

							[

							"이지더원",

							365000000,

							245000000,

							315750000

							],

							[

							"장미",

							240000000,

							158000000,

							212600000

							],

							[

							"전일씨네빌",

							97000000,

							83000000,

							88333333.33

							],

							[

							"종원",

							65000000,

							53000000,

							58250000

							],

							[

							"주월스카이",

							102000000,

							85000000,

							92333333.33

							],

							[

							"초원",

							130000000,

							130000000,

							130000000

							],

							[

							"한양",

							150000000,

							133000000,

							138500000

							],

							[

							"해태1차",

							199000000,

							187000000,

							191000000

							],

							[

							"해태2차",

							157000000,

							157000000,

							157000000

							],

							[

							"현대1차",

							156000000,

							115000000,

							143800000

							],

							[

							"현대2차",

							169000000,

							99000000,

							139000000

							],

							[

							"호반베르디움1차",

							465000000,

							325000000,

							413846153.8

							],

							[

							"호반베르디움2차",

							435000000,

							330000000,

							382200000

							],

							[

							"호반힐하임",

							465000000,

							350000000,

							386000000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID120867f81ff6() {

							var data = gvisDataComboChartID120867f81ff6();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120867f81ff6')

							);

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

							callbacks.push(drawChartComboChartID120867f81ff6);

						})();

						function displayChartComboChartID120867f81ff6() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120867f81ff6"></script>



					<!-- divChart -->



					<div id="ComboChartID120867f81ff6"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120867f81ff6.html">ComboChartID120867f81ff6</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>

				</div>
			</div>

			<!-- 주월동 그래프 끝 -->

			<!-- 지석동 그래프 시작 -->
			<div class="graph graph-con11">
				<div class="page-path">남구 > 지석동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12086412c05() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"한일베라체",

							353000000,

							245000000,

							286600000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12086412c05() {

							var data = gvisDataComboChartID12086412c05();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12086412c05')

							);

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

							callbacks.push(drawChartComboChartID12086412c05);

						})();

						function displayChartComboChartID12086412c05() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12086412c05"></script>



					<!-- divChart -->



					<div id="ComboChartID12086412c05"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12086412c05.html">ComboChartID12086412c05</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 지석동 그래프 끝 -->

			<!-- 진월동 그래프 시작 -->
			<div class="graph graph-con12">
				<div class="page-path">남구 > 진월동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12087e0525fb() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"고운하이플러스1차",

							315000000,

							260000000,

							294333333.3

							],

							[

							"고운하이플러스2차",

							335000000,

							310000000,

							323000000

							],

							[

							"광명",

							235000000,

							158000000,

							184800000

							],

							[

							"금광하늘연가",

							710000000,

							510000000,

							553571428.6

							],

							[

							"대덕",

							127000000,

							119000000,

							125331666.7

							],

							[

							"대주1차",

							265000000,

							160000000,

							200200000

							],

							[

							"대주2차",

							235000000,

							202000000,

							218500000

							],

							[

							"대주파크빌",

							260000000,

							240000000,

							251571428.6

							],

							[

							"브라운스톤",

							325000000,

							325000000,

							325000000

							],

							[

							"삼송",

							79000000,

							65000000,

							73333333.33

							],

							[

							"삼익세라믹1차",

							330000000,

							165000000,

							213307692.3

							],

							[

							"삼익세라믹2차",

							260000000,

							120000000,

							168071428.6

							],

							[

							"삼익세라믹3차",

							225000000,

							122000000,

							167500000

							],

							[

							"새한",

							350000000,

							330000000,

							336000000

							],

							[

							"서라",

							85000000,

							73000000,

							81833333.33

							],

							[

							"세원",

							83000000,

							75000000,

							79000000

							],

							[

							"신흥",

							115000000,

							93000000,

							100750000

							],

							[

							"아남",

							162000000,

							150000000,

							157400000

							],

							[

							"옥천",

							98000000,

							83000000,

							90500000

							],

							[

							"우정",

							80000000,

							80000000,

							80000000

							],

							[

							"유달파크",

							148000000,

							142000000,

							145000000

							],

							[

							"중흥파크",

							168000000,

							140000000,

							155545454.5

							],

							[

							"진아리채",

							315000000,

							295000000,

							307600000

							],

							[

							"진아하이빌1차",

							120000000,

							120000000,

							120000000

							],

							[

							"진아하이빌2차",

							280000000,

							260000000,

							272000000

							],

							[

							"토담휴로스에듀파크",

							300000000,

							290000000,

							296200000

							],

							[

							"풍림",

							308000000,

							135000000,

							214886792.5

							],

							[

							"한국아델리움1차",

							510000000,

							510000000,

							510000000

							],

							[

							"한국아델리움2차",

							480000000,

							420000000,

							452500000

							],

							[

							"한신1차",

							210000000,

							147000000,

							167800000

							],

							[

							"한신2차",

							230000000,

							150000000,

							198500000

							],

							[

							"현대1차",

							285000000,

							165000000,

							248411764.7

							],

							[

							"현대2차",

							200000000,

							145000000,

							175714285.7

							],

							[

							"현대3차",

							190000000,

							159000000,

							178666666.7

							],

							[

							"협진훼미리",

							185000000,

							150000000,

							160000000

							],

							[

							"호반리젠시빌",

							66000000,

							52000000,

							63000000

							],

							[

							"호반리젠시빌스위트",

							358000000,

							350000000,

							354000000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12087e0525fb() {

							var data = gvisDataComboChartID12087e0525fb();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12087e0525fb')

							);

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

							callbacks.push(drawChartComboChartID12087e0525fb);

						})();

						function displayChartComboChartID12087e0525fb() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12087e0525fb"></script>



					<!-- divChart -->



					<div id="ComboChartID12087e0525fb"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12087e0525fb.html">ComboChartID12087e0525fb</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 진월동 그래프 끝 -->

			<!-- 행암동 그래프 시작 -->
			<div class="graph graph-con13">
				<div class="page-path">남구 > 행암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12082b4e68c8() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"제일풍경채에듀파크1단지",

							420000000,

							288000000,

							339481481.5

							],

							[

							"제일풍경채에듀파크2단지",

							350000000,

							325000000,

							338055555.6

							],

							[

							"중흥S-클래스",

							630000000,

							350000000,

							483200000

							],

							[

							"효천LH천년나무3단지",

							320000000,

							270000000,

							300933333.3

							],

							[

							"효천LH천년나무4단지",

							315000000,

							255000000,

							291241379.3

							],

							[

							"효천LH천년나무5단지",

							258000000,

							258000000,

							258000000

							]

							];

							data.addColumn('string', 'APTNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID12082b4e68c8() {

							var data = gvisDataComboChartID12082b4e68c8();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12082b4e68c8')

							);

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

							callbacks.push(drawChartComboChartID12082b4e68c8);

						})();

						function displayChartComboChartID12082b4e68c8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12082b4e68c8"></script>



					<!-- divChart -->



					<div id="ComboChartID12082b4e68c8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12082b4e68c8.html">ComboChartID12082b4e68c8</a>
							&#8226; <a href="https://github.com/mages/googleVis">googleVis-0.6.2</a></span><br />

						<!-- htmlFooter -->

						<span> R version 3.4.3 (2017-11-30) &#8226; <a
							href="https://developers.google.com/terms/">Google Terms of
								Use</a> &#8226; <a
							href="https://google-developers.appspot.com/chart/interactive/docs/gallery/combochart">Documentation
								and Data Policy</a>

						</span>
					</div>
				</div>
			</div>

			<!-- 행암동 그래프 끝 -->


		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>