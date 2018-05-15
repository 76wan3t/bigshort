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
			$(".graph-con2").css("width", "900");
			$(".graph-con2").css("height", "483");

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
		$("#td13").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con14").css("display", "block");

		});
		$("#td14").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con15").css("display", "block");

		});
		$("#td15").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con16").css("display", "block");

		});
		$("#td16").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con17").css("display", "block");

		});
		$("#td17").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con18").css("display", "block");

		});
		$("#td18").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con19").css("display", "block");

		});
		$("#td19").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con20").css("display", "block");

		});
		$("#td20").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con21").css("display", "block");

		});
		$("#td21").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con22").css("display", "block");

		});

	});
</script>

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
							<td id="td1">도산동</td>
							<td id="td2">도천동</td>
							<td id="td3">비아동</td>
							<td id="td4">산월동</td>
							<td id="td5">산정동</td>
						</tr>
						<tr id="gwangsan2">
							<td id="td6">선암동</td>
							<td id="td7">소촌동</td>
							<td id="td8">송정동</td>
							<td id="td9">수완동</td>
							<td id="td10">신가동</td>
						</tr>
						<tr id="gwangsan3">
							<td id="td11">신창동</td>
							<td id="td12">신촌동</td>
							<td id="td13">쌍암동</td>
							<td id="td14">우산동</td>
							<td id="td15">운남동</td>
						</tr>
						<tr id="gwangsan4">
							<td id="td16">운수동</td>
							<td id="td17">월계동</td>
							<td id="td18">월곡동</td>
							<td id="td19">장덕동</td>
							<td id="td20">하남동</td>
						</tr>
						<tr id="gwangsan5">
							<td id="td21">흑석동</td>
					</thead>
				</table>
			</div>

			<!-- 광산구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
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
			<!-- 광산구 전체 그래프 div 끝 -->

			<!-- 도산동 그래프 시작 -->
			<div class="graph graph-con2" style="display:none;">
				<div class="page-path">광산구 > 도산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->
					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208553c4964() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"대덕",

							90000000,

							65000000,

							72375000

							],

							[

							"대주피오레1차",

							180000000,

							167000000,

							170500000

							],

							[

							"대주피오레2차",

							185000000,

							185000000,

							185000000

							],

							[

							"무등파크",

							93000000,

							92000000,

							92600000

							],

							[

							"보경해피드림",

							185000000,

							185000000,

							185000000

							],

							[

							"삼라극동",

							82000000,

							77000000,

							79000000

							],

							[

							"서경",

							130000000,

							125000000,

							127333333.3

							],

							[

							"송정역숲안애",

							239000000,

							239000000,

							239000000

							],

							[

							"숲안애빌리지",

							234000000,

							228000000,

							232500000

							],

							[

							"우미",

							125000000,

							107000000,

							118272727.3

							],

							[

							"카이스트빌1차",

							82000000,

							82000000,

							82000000

							],

							[

							"카이스트빌2차",

							170000000,

							170000000,

							170000000

							],

							[

							"호반1차",

							127000000,

							97000000,

							112363636.4

							],

							[

							"호반2차",

							140000000,

							78000000,

							119800000

							],

							[

							"호반청암빌라트",

							90000000,

							76000000,

							85666666.67

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

						function drawChartComboChartID1208553c4964() {

							var data = gvisDataComboChartID1208553c4964();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208553c4964')

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

							callbacks.push(drawChartComboChartID1208553c4964);

						})();

						function displayChartComboChartID1208553c4964() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208553c4964"></script>



					<!-- divChart -->



					<div id="ComboChartID1208553c4964" style="width: 900; height: 483;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208553c4964.html">ComboChartID1208553c4964</a>
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
			<!-- 도산동 그래프 끝 -->

			<!-- 도천동 그래프 시작 -->
			<div class="graph graph-con3" style="display:none;">
				<div class="page-path">광산구 > 도천동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208115c7bc8() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"중흥",

							115000000,

							80000000,

							95318181.82

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

						function drawChartComboChartID1208115c7bc8() {

							var data = gvisDataComboChartID1208115c7bc8();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208115c7bc8')

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

							callbacks.push(drawChartComboChartID1208115c7bc8);

						})();

						function displayChartComboChartID1208115c7bc8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208115c7bc8"></script>



					<!-- divChart -->



					<div id="ComboChartID1208115c7bc8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208115c7bc8.html">ComboChartID1208115c7bc8</a>
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

			<!-- 도천동 그래프 끝 -->

			<!-- 비아동 그래프 시작 -->
			<div class="graph graph-con4" style="display:none;">
				<div class="page-path">광산구 > 비아동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208f863eac() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"행복애가",

							167000000,

							161900000,

							164450000

							],

							[

							"호반",

							137000000,

							74000000,

							107734375

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

						function drawChartComboChartID1208f863eac() {

							var data = gvisDataComboChartID1208f863eac();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208f863eac')

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

							callbacks.push(drawChartComboChartID1208f863eac);

						})();

						function displayChartComboChartID1208f863eac() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208f863eac"></script>



					<!-- divChart -->



					<div id="ComboChartID1208f863eac"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208f863eac.html">ComboChartID1208f863eac</a>
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
			<!-- 비아동 그래프 끝 -->

			<!-- 산월동 그래프 시작 -->
			<!-- jsHeader -->
			<div class="graph graph-con5" style="display:none;">
				<div class="page-path">광산구 > 산월동</div>
				<div class="graph-inner">

					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12082f1569c5() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"부영1차",

							230000000,

							190000000,

							207000000

							],

							[

							"부영2차",

							225000000,

							200000000,

							211250000

							],

							[

							"부영3차",

							230000000,

							200000000,

							209411764.7

							],

							[

							"부영e그린타운",

							260000000,

							230000000,

							243750000

							],

							[

							"부영사랑으로6차",

							290000000,

							228000000,

							247666666.7

							],

							[

							"부영사랑으로7차",

							285000000,

							240000000,

							254217391.3

							],

							[

							"호반리젠시빌3-1차",

							237000000,

							232000000,

							233875000

							],

							[

							"호반리젠시빌3-2차",

							240000000,

							210000000,

							227000000

							],

							[

							"호반리젠시빌3-3차",

							242000000,

							205000000,

							217833333.3

							],

							[

							"호반리젠시빌3-5차",

							237000000,

							209000000,

							220875000

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

						function drawChartComboChartID12082f1569c5() {

							var data = gvisDataComboChartID12082f1569c5();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12082f1569c5')

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

							callbacks.push(drawChartComboChartID12082f1569c5);

						})();

						function displayChartComboChartID12082f1569c5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12082f1569c5"></script>



					<!-- divChart -->



					<div id="ComboChartID12082f1569c5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12082f1569c5.html">ComboChartID12082f1569c5</a>
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

			<!-- 산월동 그래프 끝 -->

			<!-- 산정동 그래프 시작 -->
			<!-- jsHeader -->
			<div class="graph graph-con6" style="display:none;">
				<div class="page-path">광산구 > 산정동</div>
				<div class="graph-inner">

					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208762e73b0() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"다사로움2차",

							195000000,

							173000000,

							181454545.5

							],

							[

							"대덕훼미리7차",

							116000000,

							110000000,

							111500000

							],

							[

							"부영애시앙1차",

							245000000,

							232000000,

							237500000

							],

							[

							"부영애시앙2차",

							255000000,

							227000000,

							238761904.8

							],

							[

							"어등산대방노블랜드",

							590000000,

							375000000,

							428533333.3

							],

							[

							"어등산한국아델리움1단지",

							340000000,

							280000000,

							299700000

							],

							[

							"어등산한국아델리움2단지",

							380000000,

							320000000,

							356000000

							],

							[

							"중흥S클래스",

							385000000,

							310000000,

							330035714.3

							],

							[

							"태양",

							105000000,

							60000000,

							82500000

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

						function drawChartComboChartID1208762e73b0() {

							var data = gvisDataComboChartID1208762e73b0();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208762e73b0')

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

							callbacks.push(drawChartComboChartID1208762e73b0);

						})();

						function displayChartComboChartID1208762e73b0() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208762e73b0"></script>



					<!-- divChart -->



					<div id="ComboChartID1208762e73b0"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208762e73b0.html">ComboChartID1208762e73b0</a>
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
			<!-- 산정동 그래프 끝 -->

			<!-- 선암동 그래프 시작 -->
			<!-- jsHeader -->
			<div class="graph graph-con7" style="display:none;">
				<div class="page-path">광산구 > 선암동</div>
				<div class="graph-inner">

					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208484d13f5() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"EG the1 1단지",

							350000000,

							300000000,

							319625000

							],

							[

							"EG the1 2단지",

							330000000,

							163000000,

							276375000

							],

							[

							"EG the1 3단지",

							279000000,

							265000000,

							273000000

							],

							[

							"어등산모아엘가",

							338000000,

							272000000,

							295083333.3

							],

							[

							"진아리채",

							268000000,

							250000000,

							261222222.2

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

						function drawChartComboChartID1208484d13f5() {

							var data = gvisDataComboChartID1208484d13f5();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208484d13f5')

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

							callbacks.push(drawChartComboChartID1208484d13f5);

						})();

						function displayChartComboChartID1208484d13f5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208484d13f5"></script>



					<!-- divChart -->



					<div id="ComboChartID1208484d13f5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208484d13f5.html">ComboChartID1208484d13f5</a>
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
			<!-- 선암동 그래프 끝 -->

			<!-- 소촌동 그래프 시작 -->
			<!-- jsHeader -->
			<div class="graph graph-con8" style="display:none;">
				<div class="page-path">광산구 > 소촌동</div>
				<div class="graph-inner">

					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208521249ea() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"EG스위트밸리1차",

							202000000,

							187000000,

							193166666.7

							],

							[

							"EG스위트밸리2차",

							210000000,

							184000000,

							190750000

							],

							[

							"EG스위트밸리3차",

							227000000,

							209000000,

							216214285.7

							],

							[

							"대덕무지개",

							93000000,

							79000000,

							84000000

							],

							[

							"대성베르힐",

							240000000,

							235000000,

							236666666.7

							],

							[

							"대화",

							87000000,

							78000000,

							84500000

							],

							[

							"라인1차",

							115000000,

							83000000,

							100166666.7

							],

							[

							"라인2차",

							130000000,

							95000000,

							113000000

							],

							[

							"모아드림타운1차",

							186000000,

							63000000,

							108958333.3

							],

							[

							"모아드림타운2차",

							187000000,

							137000000,

							149461538.5

							],

							[

							"모아엘가에듀퍼스트",

							230000000,

							223000000,

							225857142.9

							],

							[

							"보라2차",

							89000000,

							89000000,

							89000000

							],

							[

							"보양그린",

							65000000,

							65000000,

							65000000

							],

							[

							"삼라",

							99000000,

							92000000,

							94333333.33

							],

							[

							"서라1차",

							100000000,

							95000000,

							96666666.67

							],

							[

							"서라2차",

							98000000,

							85000000,

							90583333.33

							],

							[

							"서라3차",

							105000000,

							83000000,

							93600000

							],

							[

							"성화파인빌",

							175000000,

							170000000,

							173750000

							],

							[

							"송광파크2차",

							104000000,

							74000000,

							89000000

							],

							[

							"송광파크3차",

							89000000,

							85000000,

							87000000

							],

							[

							"온세계아이조움",

							225000000,

							185000000,

							202500000

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

						function drawChartComboChartID1208521249ea() {

							var data = gvisDataComboChartID1208521249ea();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208521249ea')

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

							callbacks.push(drawChartComboChartID1208521249ea);

						})();

						function displayChartComboChartID1208521249ea() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208521249ea"></script>



					<!-- divChart -->



					<div id="ComboChartID1208521249ea"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208521249ea.html">ComboChartID1208521249ea</a>
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
			<!-- 소촌동 그래프 끝 -->

			<!-- 송정동 그래프 시작 -->
			<div class="graph graph-con9" style="display:none;">
				<div class="page-path">광산구 > 송정동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12085c7a17cc() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"e-다움",

							187000000,

							187000000,

							187000000

							],

							[

							"KTX역 모아엘가",

							310000000,

							310000000,

							310000000

							],

							[

							"공항",

							89000000,

							89000000,

							89000000

							],

							[

							"광신프로그레스",

							275000000,

							220000000,

							247500000

							],

							[

							"극동마이더스빌",

							85000000,

							68000000,

							76500000

							],

							[

							"금강3차",

							132000000,

							109000000,

							123166666.7

							],

							[

							"대덕9차",

							125000000,

							85000000,

							96500000

							],

							[

							"대천",

							89000000,

							80000000,

							84500000

							],

							[

							"대화",

							118000000,

							97000000,

							110000000

							],

							[

							"라인1차",

							110000000,

							93000000,

							104700000

							],

							[

							"라인2차",

							300000000,

							115000000,

							165000000

							],

							[

							"명지2차",

							220000000,

							188000000,

							203000000

							],

							[

							"모아",

							136000000,

							70000000,

							103000000

							],

							[

							"상아",

							215000000,

							215000000,

							215000000

							],

							[

							"송정역센트럴시티",

							135000000,

							130000000,

							133333333.3

							],

							[

							"신한화",

							123000000,

							70000000,

							101666666.7

							],

							[

							"온세계아이조움",

							237000000,

							227000000,

							231125000

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

						function drawChartComboChartID12085c7a17cc() {

							var data = gvisDataComboChartID12085c7a17cc();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12085c7a17cc')

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

							callbacks.push(drawChartComboChartID12085c7a17cc);

						})();

						function displayChartComboChartID12085c7a17cc() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12085c7a17cc"></script>



					<!-- divChart -->



					<div id="ComboChartID12085c7a17cc"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12085c7a17cc.html">ComboChartID12085c7a17cc</a>
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
			<!-- 송정동 그래프 끝 -->

			<!-- 수완동 그래프 시작 -->
			<div class="graph graph-con10" style="display:none;">
				<div class="page-path">광산구 > 수완동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208aef7b8d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"대방노블랜드2차",

							505000000,

							408000000,

							433500000

							],

							[

							"대방노블랜드6차",

							620000000,

							440000000,

							538461538.5

							],

							[

							"대주피오레6단지",

							470000000,

							470000000,

							470000000

							],

							[

							"모아엘가",

							450000000,

							400000000,

							425000000

							],

							[

							"수안채 RICH",

							600000000,

							600000000,

							600000000

							],

							[

							"수안채RICH",

							640000000,

							487000000,

							528416666.7

							],

							[

							"수완2차진아리채",

							550000000,

							530000000,

							538000000

							],

							[

							"수완아뜨리움",

							390000000,

							390000000,

							390000000

							],

							[

							"영무예다음2차",

							368000000,

							343000000,

							351333333.3

							],

							[

							"우미린1차",

							400000000,

							370000000,

							388444444.4

							],

							[

							"우미린2차",

							450000000,

							373000000,

							417285714.3

							],

							[

							"코오롱하늘채",

							750000000,

							450000000,

							548166666.7

							],

							[

							"현진에버빌1단지",

							890000000,

							585000000,

							727631578.9

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

						function drawChartComboChartID1208aef7b8d() {

							var data = gvisDataComboChartID1208aef7b8d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208aef7b8d')

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

							callbacks.push(drawChartComboChartID1208aef7b8d);

						})();

						function displayChartComboChartID1208aef7b8d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208aef7b8d"></script>



					<!-- divChart -->



					<div id="ComboChartID1208aef7b8d"
						style="width: 300; height: 500; overflow: auto;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208aef7b8d.html">ComboChartID1208aef7b8d</a>
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
			<!-- 수완동 그래프 끝 -->

			<!-- 신가동 그래프 시작 -->
			<div class="graph graph-con11" style="display:none;">
				<div class="page-path">광산구 > 신가동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120862d73b26() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"그린빌라A동",

							142000000,

							142000000,

							142000000

							],

							[

							"대방노블랜드1차",

							375000000,

							313000000,

							343068965.5

							],

							[

							"대성베르힐",

							350000000,

							313000000,

							331600000

							],

							[

							"도시공사",

							202000000,

							145000000,

							168545454.5

							],

							[

							"우미이노스빌",

							191000000,

							170000000,

							183500000

							],

							[

							"중흥2차",

							160000000,

							115000000,

							133615384.6

							],

							[

							"중흥S클래스1단지",

							465000000,

							340000000,

							360312500

							],

							[

							"진아수완리채1차",

							350000000,

							300000000,

							325000000

							],

							[

							"한양수자인",

							405000000,

							320000000,

							361500000

							],

							[

							"호반리젠시빌1차",

							207000000,

							183000000,

							191000000

							],

							[

							"호반리젠시빌2차",

							220000000,

							195000000,

							205666666.7

							],

							[

							"호반베르디움1차",

							638000000,

							410000000,

							488071428.6

							],

							[

							"호반베르디움6차",

							278000000,

							229000000,

							250846153.8

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

						function drawChartComboChartID120862d73b26() {

							var data = gvisDataComboChartID120862d73b26();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120862d73b26')

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

							callbacks.push(drawChartComboChartID120862d73b26);

						})();

						function displayChartComboChartID120862d73b26() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120862d73b26"></script>



					<!-- divChart -->



					<div id="ComboChartID120862d73b26"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120862d73b26.html">ComboChartID120862d73b26</a>
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
			<!-- 신가동 그래프 끝 -->

			<!-- 신창동 그래프 시작 -->
			<div class="graph graph-con12" style="display:none;">
				<div class="page-path">광산구 > 신창동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083083873() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남양휴튼1단지",

							410000000,

							360000000,

							385000000

							],

							[

							"대광로제비앙",

							295000000,

							270000000,

							282000000

							],

							[

							"대라수",

							245000000,

							218600000,

							230537500

							],

							[

							"모아미래도",

							122000000,

							83000000,

							100200000

							],

							[

							"부영1차",

							203000000,

							185000000,

							192333333.3

							],

							[

							"부영2차",

							233000000,

							190000000,

							205459459.5

							],

							[

							"부영사랑으로3차",

							192000000,

							172000000,

							182888888.9

							],

							[

							"부영사랑으로5차",

							272000000,

							235000000,

							248692307.7

							],

							[

							"부영사랑으로6차",

							268000000,

							225000000,

							248100000

							],

							[

							"부영사랑으로7차",

							262000000,

							232000000,

							241227272.7

							],

							[

							"삼능",

							250000000,

							233000000,

							241500000

							],

							[

							"신가부영",

							216000000,

							185000000,

							195000000

							],

							[

							"중흥",

							125000000,

							120000000,

							121600000

							],

							[

							"해광샹그릴라",

							250000000,

							203000000,

							215666666.7

							],

							[

							"호반베르디움3차",

							315000000,

							243000000,

							270857142.9

							],

							[

							"호반베르디움5차",

							275000000,

							245000000,

							263318181.8

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

						function drawChartComboChartID12083083873() {

							var data = gvisDataComboChartID12083083873();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083083873')

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

							callbacks.push(drawChartComboChartID12083083873);

						})();

						function displayChartComboChartID12083083873() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083083873"></script>



					<!-- divChart -->



					<div id="ComboChartID12083083873"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083083873.html">ComboChartID12083083873</a>
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
			<!-- 신창동 그래프 끝 -->

			<!-- 신촌동 그래프 시작 -->
			<div class="graph graph-con13" style="display:none;">
				<div class="page-path">광산구 > 신촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083cac60db() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"대주파크빌",

							186000000,

							168000000,

							180500000

							],

							[

							"명지",

							155000000,

							155000000,

							155000000

							],

							[

							"명지로드힐3차",

							205000000,

							200000000,

							204000000

							],

							[

							"정석그린",

							88000000,

							88000000,

							88000000

							],

							[

							"중도다이아빌",

							183000000,

							103000000,

							138666666.7

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

						function drawChartComboChartID12083cac60db() {

							var data = gvisDataComboChartID12083cac60db();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083cac60db')

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

							callbacks.push(drawChartComboChartID12083cac60db);

						})();

						function displayChartComboChartID12083cac60db() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083cac60db"></script>



					<!-- divChart -->



					<div id="ComboChartID12083cac60db"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083cac60db.html">ComboChartID12083cac60db</a>
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

			<!-- 신촌동 그래프 끝 -->

			<!-- 쌍암동 그래프 시작 -->
			<div class="graph graph-con14" style="display:none;">
				<div class="page-path">광산구 > 쌍암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12081eee6f57() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"AM-City 센트럴파크",

							135000000,

							135000000,

							135000000

							],

							[

							"AM-City 센트럴파크2차",

							165000000,

							165000000,

							165000000

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

						function drawChartComboChartID12081eee6f57() {

							var data = gvisDataComboChartID12081eee6f57();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12081eee6f57')

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

							callbacks.push(drawChartComboChartID12081eee6f57);

						})();

						function displayChartComboChartID12081eee6f57() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12081eee6f57"></script>



					<!-- divChart -->



					<div id="ComboChartID12081eee6f57"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12081eee6f57.html">ComboChartID12081eee6f57</a>
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

			<!-- 쌍암동 그래프 끝 -->

			<!-- 우산동 그래프 시작 -->
			<div class="graph graph-con15" style="display:none;">
				<div class="page-path">광산구 > 우산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12081cd02b94() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"대광로제비앙",

							350000000,

							236000000,

							275333333.3

							],

							[

							"대덕2차",

							98000000,

							68000000,

							81200000

							],

							[

							"대덕훼미리",

							90000000,

							82000000,

							87333333.33

							],

							[

							"동산",

							122000000,

							97000000,

							110125000

							],

							[

							"리버힐",

							105000000,

							75000000,

							92043478.26

							],

							[

							"송광쇼핑타운",

							190000000,

							180000000,

							183333333.3

							],

							[

							"송광파크1차",

							87000000,

							84000000,

							86000000

							],

							[

							"어등하이빌",

							130000000,

							80000000,

							120916666.7

							],

							[

							"우미",

							100000000,

							90000000,

							94666666.67

							],

							[

							"하남제일파크맨션",

							147000000,

							130000000,

							136363636.4

							],

							[

							"하남주공2단지",

							73000000,

							58000000,

							67266666.67

							],

							[

							"한국아델리움&중해마루힐",

							269000000,

							217000000,

							251000000

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

						function drawChartComboChartID12081cd02b94() {

							var data = gvisDataComboChartID12081cd02b94();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12081cd02b94')

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

							callbacks.push(drawChartComboChartID12081cd02b94);

						})();

						function displayChartComboChartID12081cd02b94() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12081cd02b94"></script>



					<!-- divChart -->



					<div id="ComboChartID12081cd02b94"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12081cd02b94.html">ComboChartID12081cd02b94</a>
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

			<!-- 우산동 그래프 끝 -->

			<!-- 운남동 그래프 시작 -->
			<div class="graph graph-con16" style="display:none;">
				<div class="page-path">광산구 > 운남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208425e744() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남양",

							167000000,

							120000000,

							146714285.7

							],

							[

							"삼성",

							195000000,

							105000000,

							146772727.3

							],

							[

							"운남주공2단지",

							125000000,

							86000000,

							114461538.5

							],

							[

							"운남주공3단지",

							130000000,

							86000000,

							105952381

							],

							[

							"운남주공4단지",

							140000000,

							88000000,

							119937500

							],

							[

							"운남주공5단지",

							215000000,

							179000000,

							189409090.9

							],

							[

							"운남주공6단지",

							258000000,

							257000000,

							257500000

							],

							[

							"운남주공7단지",

							178000000,

							85000000,

							122771428.6

							],

							[

							"운남주공8단지",

							205000000,

							127000000,

							163740740.7

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

						function drawChartComboChartID1208425e744() {

							var data = gvisDataComboChartID1208425e744();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208425e744')

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

							callbacks.push(drawChartComboChartID1208425e744);

						})();

						function displayChartComboChartID1208425e744() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208425e744"></script>



					<!-- divChart -->



					<div id="ComboChartID1208425e744"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208425e744.html">ComboChartID1208425e744</a>
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

			<!-- 운남동 그래프 끝 -->

			<!-- 운수동 그래프 시작 -->
			<div class="graph graph-con17" style="display:none;">
				<div class="page-path">광산구 > 운수동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120886c42dd() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"가천",

							120000000,

							103000000,

							108250000

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

						function drawChartComboChartID120886c42dd() {

							var data = gvisDataComboChartID120886c42dd();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120886c42dd')

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

							callbacks.push(drawChartComboChartID120886c42dd);

						})();

						function displayChartComboChartID120886c42dd() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120886c42dd"></script>



					<!-- divChart -->



					<div id="ComboChartID120886c42dd"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120886c42dd.html">ComboChartID120886c42dd</a>
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
			<!-- 운수동 그래프 끝 -->

			<!-- 월계동 그래프 시작 -->
			<div class="graph graph-con18" style="display:none;">
				<div class="page-path">광산구 > 월계동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083debd4d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"LIG건영",

							210000000,

							175000000,

							194200000

							],

							[

							"금광",

							215000000,

							195000000,

							208000000

							],

							[

							"금호타운",

							221000000,

							197000000,

							209000000

							],

							[

							"기산",

							172000000,

							125000000,

							157200000

							],

							[

							"남양파크",

							145000000,

							123000000,

							134714285.7

							],

							[

							"대우",

							320000000,

							203000000,

							246500000

							],

							[

							"대주",

							175000000,

							165000000,

							171666666.7

							],

							[

							"동부",

							285000000,

							215000000,

							257454545.5

							],

							[

							"동아",

							185000000,

							155000000,

							168000000

							],

							[

							"두산1차",

							140000000,

							105000000,

							126785714.3

							],

							[

							"두산2차",

							139000000,

							124000000,

							129600000

							],

							[

							"라인1차",

							152000000,

							117000000,

							130000000

							],

							[

							"라인2차",

							140000000,

							110000000,

							129000000

							],

							[

							"라인3차",

							182000000,

							157000000,

							173666666.7

							],

							[

							"라인5차",

							215000000,

							172000000,

							186555555.6

							],

							[

							"라인6차",

							163000000,

							145000000,

							155545454.5

							],

							[

							"라인7차",

							172000000,

							155000000,

							162000000

							],

							[

							"라인8차",

							137000000,

							110000000,

							125533333.3

							],

							[

							"모아",

							320000000,

							215000000,

							266700000

							],

							[

							"모아미래도",

							150000000,

							118000000,

							131818181.8

							],

							[

							"벽산",

							310000000,

							250000000,

							279166666.7

							],

							[

							"삼능",

							135000000,

							135000000,

							135000000

							],

							[

							"삼성",

							175000000,

							173000000,

							174000000

							],

							[

							"서라",

							136000000,

							110000000,

							129785714.3

							],

							[

							"선경",

							255000000,

							187000000,

							197428571.4

							],

							[

							"성원",

							273000000,

							187000000,

							221263157.9

							],

							[

							"신동아",

							232000000,

							190000000,

							212111111.1

							],

							[

							"쌍용",

							178000000,

							150000000,

							167545454.5

							],

							[

							"우미1차",

							165000000,

							135000000,

							146000000

							],

							[

							"우미2차",

							178000000,

							149000000,

							155714285.7

							],

							[

							"우미3차",

							145000000,

							125000000,

							130750000

							],

							[

							"일신",

							193000000,

							193000000,

							193000000

							],

							[

							"호반1차",

							147000000,

							112000000,

							135000000

							],

							[

							"호반2차",

							135000000,

							105000000,

							121260869.6

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

						function drawChartComboChartID12083debd4d() {

							var data = gvisDataComboChartID12083debd4d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083debd4d')

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

							callbacks.push(drawChartComboChartID12083debd4d);

						})();

						function displayChartComboChartID12083debd4d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083debd4d"></script>



					<!-- divChart -->



					<div id="ComboChartID12083debd4d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083debd4d.html">ComboChartID12083debd4d</a>
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

			<!-- 월계동 그래프 끝 -->

			<!-- 월곡동 그래프 시작 -->
			<div class="graph graph-con19" style="display:none;">
				<div class="page-path">광산구 > 월곡동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120855016e7b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							165000000,

							0,

							147812500

							],

							[

							"운남주공10단지",

							250000000,

							165000000,

							205680000

							],

							[

							"운남주공9단지",

							245000000,

							215000000,

							227866666.7

							],

							[

							"일신",

							170000000,

							142000000,

							155352941.2

							],

							[

							"한성1차",

							91000000,

							70000000,

							81533333.33

							],

							[

							"한성2차",

							123000000,

							82000000,

							106187500

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

						function drawChartComboChartID120855016e7b() {

							var data = gvisDataComboChartID120855016e7b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120855016e7b')

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

							callbacks.push(drawChartComboChartID120855016e7b);

						})();

						function displayChartComboChartID120855016e7b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120855016e7b"></script>



					<!-- divChart -->



					<div id="ComboChartID120855016e7b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120855016e7b.html">ComboChartID120855016e7b</a>
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
			<!-- 월곡동 그래프 끝 -->

			<!-- 장덕동 그래프 시작 -->
			<div class="graph graph-con20" style="display:none;">
				<div class="page-path">광산구 > 장덕동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120879c03a7f() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS수완자이",

							750000000,

							490000000,

							585000000

							],

							[

							"골드클래스",

							325000000,

							240000000,

							274133333.3

							],

							[

							"대방노블랜드3차",

							790000000,

							610000000,

							713571428.6

							],

							[

							"대방노블랜드5차",

							710000000,

							550000000,

							626655172.4

							],

							[

							"대주피오레1단지",

							500000000,

							380000000,

							441000000

							],

							[

							"부영애시앙1차",

							250000000,

							220000000,

							230807692.3

							],

							[

							"부영애시앙2차",

							300000000,

							237000000,

							255888888.9

							],

							[

							"새한포유",

							435000000,

							350000000,

							403214285.7

							],

							[

							"세영리첼",

							482000000,

							320000000,

							387307692.3

							],

							[

							"수완2차골드클래스 에듀파크",

							370000000,

							251000000,

							304000000

							],

							[

							"수완2차숲안애",

							390000000,

							275000000,

							323062500

							],

							[

							"수완숲안애",

							430000000,

							287000000,

							328500000

							],

							[

							"신안실크밸리",

							315000000,

							290000000,

							303333333.3

							],

							[

							"양우내안애",

							285000000,

							273000000,

							280750000

							],

							[

							"진흥더루벤스",

							350000000,

							268000000,

							295571428.6

							],

							[

							"현진에버빌2단지",

							375000000,

							308000000,

							357100000

							],

							[

							"호반베르디움2차",

							400000000,

							330000000,

							355833333.3

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

						function drawChartComboChartID120879c03a7f() {

							var data = gvisDataComboChartID120879c03a7f();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120879c03a7f')

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

							callbacks.push(drawChartComboChartID120879c03a7f);

						})();

						function displayChartComboChartID120879c03a7f() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120879c03a7f"></script>



					<!-- divChart -->



					<div id="ComboChartID120879c03a7f"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120879c03a7f.html">ComboChartID120879c03a7f</a>
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
			<!-- 장덕동 그래프 끝 -->

			<!-- 하남동 그래프 시작 -->
			<div class="graph graph-con21" style="display:none;">
				<div class="page-path">광산구 > 하남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120847ad7bff() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"다사로움3단지",

							180000000,

							121000000,

							157090909.1

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

						function drawChartComboChartID120847ad7bff() {

							var data = gvisDataComboChartID120847ad7bff();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120847ad7bff')

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

							callbacks.push(drawChartComboChartID120847ad7bff);

						})();

						function displayChartComboChartID120847ad7bff() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120847ad7bff"></script>



					<!-- divChart -->



					<div id="ComboChartID120847ad7bff"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120847ad7bff.html">ComboChartID120847ad7bff</a>
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
			<!-- 하남동 그래프 끝 -->

			<!-- 흑석동 그래프 시작 -->
			<div class="graph graph-con22" style="display:none;">
				<div class="page-path">광산구 > 흑석동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12085c7c7614() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"수완3차진아리채",

							315000000,

							295000000,

							309000000

							],

							[

							"이지더원",

							323000000,

							238000000,

							285043478.3

							],

							[

							"중흥S클래스2단지",

							440000000,

							358000000,

							384000000

							],

							[

							"중흥S클래스3단지",

							370000000,

							347000000,

							363400000

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

						function drawChartComboChartID12085c7c7614() {

							var data = gvisDataComboChartID12085c7c7614();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12085c7c7614')

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

							callbacks.push(drawChartComboChartID12085c7c7614);

						})();

						function displayChartComboChartID12085c7c7614() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12085c7c7614"></script>



					<!-- divChart -->



					<div id="ComboChartID12085c7c7614"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12085c7c7614.html">ComboChartID12085c7c7614</a>
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
			<!-- 흑석동 그래프 끝 -->

			<!-- 상품게시페이지 시작 -->
			<div id="board">
				<table id="table1">
					<thead id="thead1">
						<tr>
							<th>건물명</th>
							<th>사진</th>
							<th>거래가</th>
							<th>평균가격</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="name">건물명</td>
							<td class="photo"><img src=/BigShortWeb/images/main22.png
								alt="테스트임" height="50" width="75"></td>
							<td class="price">거래가</td>
							<td class="average">평균가격</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 상품게시페이지 끝 -->

		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>