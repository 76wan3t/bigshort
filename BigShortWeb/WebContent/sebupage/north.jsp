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
		setTimeout(function() {

			$(".graph").css("display", "none");
			$(".graph-con1").css("display", "block");

		}, 1000);

	});
</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="/BigShortWeb/css/north.css?var=2">
</head>

<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="north1">
							<td id="td1">각화동</td>
							<td id="td2">동림동</td>
							<td id="td3">두암동</td>
							<td id="td4">매곡동</td>
							<td id="td5">문흥동</td>
						</tr>
						<tr id="north2">
							<td id="td6">본촌동</td>
							<td id="td7">삼각동</td>
							<td id="td8">신안동</td>
							<td id="td9">신용동</td>
							<td id="td10">양산동</td>
						</tr>
						<tr id="north3">
							<td id="td11">연제동</td>
							<td id="td12">오치동</td>
							<td id="td13">용두동</td>
							<td id="td14">용봉동</td>
							<td id="td15">우산동</td>
						</tr>
						<tr id="north4">
							<td id="td16">운암동</td>
							<td id="td17">일곡동</td>
							<td id="td18">임동</td>
					</thead>
				</table>
			</div>

			<!-- 북구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 북구</div>
				<div class="graph-inner">
					<script type="text/javascript">
						// jsData 
						function gvisDataComboChartIDed4622566b8() {
							var data = new google.visualization.DataTable();
							var datajson = [
									[ "각화동", 338000000, 92000000, 174739130.4 ],
									[ "동림동", 230000000, 90000000, 155756097.6 ],
									[ "두암동", 650000000, 63000000, 160456937.8 ],
									[ "매곡동", 355000000, 70000000, 181766917.3 ],
									[ "문흥동", 310000000, 57000000, 155952554.7 ],
									[ "본촌동", 500000000, 218000000, 340333333.3 ],
									[ "삼각동", 340000000, 47000000, 159423076.9 ],
									[ "신안동", 205000000, 37500000, 144025000 ],
									[ "신용동", 520000000, 115000000, 298381679.4 ],
									[ "양산동", 395000000, 77500000, 190212837.8 ],
									[ "연제동", 335000000, 87000000, 190628819.4 ],
									[ "오치동", 179500000, 62000000, 121810606.1 ],
									[ "용두동", 275000000, 259000000, 267333333.3 ],
									[ "용봉동", 450000000, 77000000, 192227848.1 ],
									[ "우산동", 263000000, 96000000, 209161290.3 ],
									[ "운암동", 610000000, 65000000, 231975502 ],
									[ "일곡동", 460000000, 87000000, 196834801.8 ],
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
							callbacks.push(drawChartComboChartIDed4622566b8);
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
			<!-- 북구 전체 그래프 div 끝 -->

			<!-- 각화동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">북구 > 각화동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120866175935() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"골드클래스",

							338000000,

							320000000,

							327000000

							],

							[

							"글로벌",

							300000000,

							140000000,

							187687500

							],

							[

							"금호",

							250000000,

							137000000,

							189266666.7

							],

							[

							"무등파크",

							150000000,

							92000000,

							117000000

							],

							[

							"해광파크",

							141000000,

							132000000,

							136600000

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

						function drawChartComboChartID120866175935() {

							var data = gvisDataComboChartID120866175935();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120866175935')

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

							callbacks.push(drawChartComboChartID120866175935);

						})();

						function displayChartComboChartID120866175935() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120866175935"></script>



					<!-- divChart -->



					<div id="ComboChartID120866175935"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120866175935.html">ComboChartID120866175935</a>
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
			<!-- 각화동 그래프 끝 -->

			<!-- 동림동 그래프 시작 -->
			<div class="graph graph-con3">
				<div class="page-path">북구 > 동림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120810896f33() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"삼라마이다스빌",

							225000000,

							190000000,

							208000000

							],

							[

							"삼익",

							230000000,

							85000000,

							151902439

							],

							[

							"삼호가든",

							225000000,

							130000000,

							160300000

							],

							[

							"우미",

							115000000,

							95000000,

							100777777.8

							],

							[

							"유일가든",

							93000000,

							83000000,

							86800000

							],

							[

							"푸른주공1단지",

							115000000,

							102000000,

							105727272.7

							],

							[

							"푸른주공3단지",

							147000000,

							117000000,

							133809523.8

							],

							[

							"푸른주공4단지",

							200000000,

							140000000,

							173857142.9

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

						function drawChartComboChartID120810896f33() {

							var data = gvisDataComboChartID120810896f33();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120810896f33')

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

							callbacks.push(drawChartComboChartID120810896f33);

						})();

						function displayChartComboChartID120810896f33() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120810896f33"></script>



					<!-- divChart -->



					<div id="ComboChartID120810896f33"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120810896f33.html">ComboChartID120810896f33</a>
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

			<!-- 동림동 그래프 끝 -->

			<!-- 두암동 그래프 시작 -->
			<div class="graph graph-con4">
				<div class="page-path">북구 > 두암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120844fb52ba() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광신",

							135000000,

							76000000,

							105500000

							],

							[

							"광일",

							127000000,

							127000000,

							127000000

							],

							[

							"대주빌라",

							320000000,

							220000000,

							265000000

							],

							[

							"동산훼밀리",

							100000000,

							85000000,

							92500000

							],

							[

							"두암",

							73000000,

							72000000,

							72500000

							],

							[

							"두암주공3단지",

							108000000,

							63000000,

							76666666.67

							],

							[

							"라인동산",

							190000000,

							125000000,

							135750000

							],

							[

							"모아미래도",

							245000000,

							200000000,

							230586206.9

							],

							[

							"목화",

							113000000,

							73000000,

							93000000

							],

							[

							"무등산 이스토리",

							650000000,

							428000000,

							521750000

							],

							[

							"무등파크1차",

							155000000,

							140000000,

							144750000

							],

							[

							"무등파크2차",

							165000000,

							110000000,

							134866666.7

							],

							[

							"무등파크3차",

							200000000,

							165000000,

							183857142.9

							],

							[

							"문화",

							72000000,

							65000000,

							69000000

							],

							[

							"미라보4차",

							180000000,

							88000000,

							129615384.6

							],

							[

							"미진",

							102000000,

							102000000,

							102000000

							],

							[

							"부영",

							117000000,

							90000000,

							103545454.5

							],

							[

							"산호",

							80000000,

							80000000,

							80000000

							],

							[

							"신흥",

							93000000,

							86000000,

							89000000

							],

							[

							"양서",

							102000000,

							102000000,

							102000000

							],

							[

							"예향",

							110000000,

							95000000,

							102500000

							],

							[

							"율곡타운",

							112000000,

							66000000,

							81180555.56

							],

							[

							"일흥",

							72000000,

							72000000,

							72000000

							],

							[

							"중흥S클래스",

							389000000,

							383000000,

							387000000

							],

							[

							"청아",

							127000000,

							127000000,

							127000000

							],

							[

							"현대",

							340000000,

							115000000,

							179512820.5

							],

							[

							"현대2차",

							340000000,

							230000000,

							271888888.9

							],

							[

							"화성",

							90000000,

							90000000,

							90000000

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

						function drawChartComboChartID120844fb52ba() {

							var data = gvisDataComboChartID120844fb52ba();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120844fb52ba')

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

							callbacks.push(drawChartComboChartID120844fb52ba);

						})();

						function displayChartComboChartID120844fb52ba() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120844fb52ba"></script>



					<!-- divChart -->



					<div id="ComboChartID120844fb52ba"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120844fb52ba.html">ComboChartID120844fb52ba</a>
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

			<!-- 두암동 그래프 끝 -->

			<!-- 매곡동 그래프 시작 -->
			<div class="graph graph-con5">
				<div class="page-path">북구 > 매곡동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208196816d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							195000000,

							138000000,

							161352941.2

							],

							[

							"대광로제비앙",

							289000000,

							275000000,

							282000000

							],

							[

							"대성베르힐",

							330000000,

							245000000,

							296200000

							],

							[

							"대주피오레",

							355000000,

							235000000,

							263928571.4

							],

							[

							"대화",

							105000000,

							95000000,

							100000000

							],

							[

							"동남",

							160000000,

							160000000,

							160000000

							],

							[

							"부림1차",

							180000000,

							92000000,

							114555555.6

							],

							[

							"부림2차",

							115000000,

							85000000,

							108500000

							],

							[

							"삼성",

							190000000,

							112000000,

							159600000

							],

							[

							"삼익",

							195000000,

							145000000,

							171705882.4

							],

							[

							"서강",

							110000000,

							88500000,

							100833333.3

							],

							[

							"서광인텔파크",

							320000000,

							200000000,

							237410256.4

							],

							[

							"아남",

							150000000,

							142000000,

							145285714.3

							],

							[

							"호반1차",

							100000000,

							78000000,

							86000000

							],

							[

							"호반2차",

							120000000,

							105000000,

							111500000

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

						function drawChartComboChartID1208196816d() {

							var data = gvisDataComboChartID1208196816d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208196816d')

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

							callbacks.push(drawChartComboChartID1208196816d);

						})();

						function displayChartComboChartID1208196816d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208196816d"></script>



					<!-- divChart -->



					<div id="ComboChartID1208196816d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208196816d.html">ComboChartID1208196816d</a>
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

			<!-- 매곡동 그래프 끝 -->

			<!-- 문흥동 그래프 시작 -->

			<div class="graph graph-con6">
				<div class="page-path">북구 > 문흥동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208178714b5() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"공간",

							147000000,

							127000000,

							135111111.1

							],

							[

							"광명",

							137000000,

							115000000,

							123653846.2

							],

							[

							"금형트리뷰",

							230000000,

							185000000,

							206250000

							],

							[

							"금호",

							295000000,

							183000000,

							217195122

							],

							[

							"대주1차",

							87000000,

							56000000,

							72181818.18

							],

							[

							"대주2차",

							157000000,

							82000000,

							107800000

							],

							[

							"대주3차",

							105000000,

							85000000,

							96000000

							],

							[

							"라인1차",

							145000000,

							107000000,

							131178571.4

							],

							[

							"라인3차",

							125000000,

							117000000,

							121666666.7

							],

							[

							"라인동산2차",

							270000000,

							170000000,

							196125000

							],

							[

							"명지",

							175000000,

							160000000,

							167111111.1

							],

							[

							"모아",

							195000000,

							170000000,

							182578947.4

							],

							[

							"상록",

							138000000,

							112000000,

							126218750

							],

							[

							"우미1차",

							110000000,

							98000000,

							104666666.7

							],

							[

							"우미호반",

							189000000,

							165000000,

							171000000

							],

							[

							"우산주공2차",

							134000000,

							83000000,

							108000000

							],

							[

							"우성",

							193000000,

							149000000,

							165312500

							],

							[

							"일신",

							132000000,

							115000000,

							122238095.2

							],

							[

							"제일",

							108000000,

							89000000,

							98352941.18

							],

							[

							"중흥1차",

							173000000,

							145000000,

							163111111.1

							],

							[

							"중흥2차",

							150000000,

							113000000,

							130157894.7

							],

							[

							"중흥3차",

							142000000,

							107000000,

							126851851.9

							],

							[

							"해광한신",

							168000000,

							156000000,

							162500000

							],

							[

							"현대",

							300000000,

							190000000,

							233916666.7

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

						function drawChartComboChartID1208178714b5() {

							var data = gvisDataComboChartID1208178714b5();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208178714b5')

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

							callbacks.push(drawChartComboChartID1208178714b5);

						})();

						function displayChartComboChartID1208178714b5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208178714b5"></script>



					<!-- divChart -->



					<div id="ComboChartID1208178714b5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208178714b5.html">ComboChartID1208178714b5</a>
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

			<!-- 문흥동 그래프 끝 -->

			<!-- 본촌동 그래프 시작 -->
			<div class="graph graph-con7">
				<div class="page-path">북구 > 본촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120819d03595() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"부영사랑으로",

							225000000,

							215000000,

							218909090.9

							],

							[

							"현진에버빌",

							398000000,

							269000000,

							357687500

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

						function drawChartComboChartID120819d03595() {

							var data = gvisDataComboChartID120819d03595();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120819d03595')

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

							callbacks.push(drawChartComboChartID120819d03595);

						})();

						function displayChartComboChartID120819d03595() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120819d03595"></script>



					<!-- divChart -->



					<div id="ComboChartID120819d03595"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120819d03595.html">ComboChartID120819d03595</a>
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

			<!-- 본촌동 그래프 끝 -->

			<!-- 삼각동 그래프 시작 -->
			<div class="graph graph-con8">
				<div class="page-path">북구 > 삼각동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120899b5c20() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"그린타운",

							230000000,

							116000000,

							160019230.8

							],

							[

							"극동마이다스빌",

							180000000,

							173000000,

							178600000

							],

							[

							"드림네스트",

							256000000,

							256000000,

							256000000

							],

							[

							"모아호반",

							128000000,

							104000000,

							117416666.7

							],

							[

							"삼익",

							155000000,

							140000000,

							147166666.7

							],

							[

							"서라",

							143000000,

							105000000,

							120071428.6

							],

							[

							"우미타운",

							195000000,

							115000000,

							141727272.7

							],

							[

							"일곡엘리체프라임",

							335000000,

							300000000,

							316565217.4

							],

							[

							"혁신타운",

							52000000,

							47000000,

							49500000

							],

							[

							"호반",

							90000000,

							73000000,

							81500000

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

						function drawChartComboChartID120899b5c20() {

							var data = gvisDataComboChartID120899b5c20();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120899b5c20')

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

							callbacks.push(drawChartComboChartID120899b5c20);

						})();

						function displayChartComboChartID120899b5c20() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120899b5c20"></script>



					<!-- divChart -->



					<div id="ComboChartID120899b5c20"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120899b5c20.html">ComboChartID120899b5c20</a>
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

			<!-- 삼각동 그래프 끝 -->

			<!-- 신안동 그래프 시작 -->

			<div class="graph graph-con9">
				<div class="page-path">북구 > 신안동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12084f471f97() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남양파크",

							115000000,

							112000000,

							113500000

							],

							[

							"모아타운",

							245000000,

							245000000,

							245000000

							],

							[

							"삼익",

							133000000,

							133000000,

							133000000

							],

							[

							"중도다이아빌",

							169000000,

							142000000,

							161166666.7

							],

							[

							"중흥파크",

							100000000,

							95000000,

							97000000

							],

							[

							"한국하이빌",

							205000000,

							205000000,

							205000000

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

						function drawChartComboChartID12084f471f97() {

							var data = gvisDataComboChartID12084f471f97();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12084f471f97')

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

							callbacks.push(drawChartComboChartID12084f471f97);

						})();

						function displayChartComboChartID12084f471f97() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12084f471f97"></script>



					<!-- divChart -->



					<div id="ComboChartID12084f471f97"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12084f471f97.html">ComboChartID12084f471f97</a>
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

			<!-- 신안동 그래프 끝 -->

			<!-- 신용동 그래프 시작 -->
			<div class="graph graph-con10">
				<div class="page-path">북구 > 신용동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12083a61600a() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS첨단자이1차",

							515000000,

							285000000,

							350000000

							],

							[

							"GS첨단자이2차",

							350000000,

							325000000,

							331909090.9

							],

							[

							"용두주공",

							150000000,

							98000000,

							123265306.1

							],

							[

							"제일풍경채",

							370000000,

							285000000,

							332222222.2

							],

							[

							"중흥S클래스",

							520000000,

							370000000,

							420818181.8

							],

							[

							"한양수자인리버뷰",

							372000000,

							225000000,

							278727272.7

							],

							[

							"호반베르디움1단지",

							415000000,

							330000000,

							356300000

							],

							[

							"호반베르디움2단지",

							450000000,

							365000000,

							405000000

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

						function drawChartComboChartID12083a61600a() {

							var data = gvisDataComboChartID12083a61600a();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12083a61600a')

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

							callbacks.push(drawChartComboChartID12083a61600a);

						})();

						function displayChartComboChartID12083a61600a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12083a61600a"></script>



					<!-- divChart -->



					<div id="ComboChartID12083a61600a"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12083a61600a.html">ComboChartID12083a61600a</a>
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

			<!-- 신용동 그래프 끝 -->

			<!-- 양산동 그래프 시작 -->
			<div class="graph graph-con11">
				<div class="page-path">북구 > 양산동</div>
				<div class="graph-inner">

					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12084f256519() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS자이1차",

							450000000,

							251000000,

							352151515.2

							],

							[

							"GS자이2차",

							410000000,

							280000000,

							342333333.3

							],

							[

							"금광",

							168000000,

							110000000,

							131090909.1

							],

							[

							"동남2차",

							100000000,

							85000000,

							94333333.33

							],

							[

							"동남3차",

							99000000,

							80000000,

							86333333.33

							],

							[

							"드림플러스",

							233000000,

							233000000,

							233000000

							],

							[

							"마루힐센트럴파크",

							165000000,

							148000000,

							155285714.3

							],

							[

							"새봄",

							115000000,

							100000000,

							106400000

							],

							[

							"송지트리뷰",

							245000000,

							208000000,

							220200000

							],

							[

							"영무예다음",

							243000000,

							215000000,

							228000000

							],

							[

							"올리브",

							193000000,

							185000000,

							190250000

							],

							[

							"우미",

							170000000,

							82000000,

							110812500

							],

							[

							"일신1차",

							135000000,

							124000000,

							130875000

							],

							[

							"일신2차",

							135000000,

							122000000,

							130363636.4

							],

							[

							"청암",

							107000000,

							81500000,

							96750000

							],

							[

							"한국",

							167000000,

							115000000,

							141578947.4

							],

							[

							"한양",

							120000000,

							120000000,

							120000000

							],

							[

							"호반",

							140000000,

							77500000,

							97729166.67

							],

							[

							"호반리젠시빌",

							193000000,

							74000000,

							145083333.3

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

						function drawChartComboChartID12084f256519() {

							var data = gvisDataComboChartID12084f256519();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12084f256519')

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

							callbacks.push(drawChartComboChartID12084f256519);

						})();

						function displayChartComboChartID12084f256519() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12084f256519"></script>



					<!-- divChart -->



					<div id="ComboChartID12084f256519"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12084f256519.html">ComboChartID12084f256519</a>
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

			<!-- 양산동 그래프 끝 -->

			<!-- 연제동 그래프 시작 -->
			<div class="graph graph-con12">
				<div class="page-path">북구 > 연제동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120876e24c1a() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광명1차",

							110000000,

							79000000,

							93428571.43

							],

							[

							"광명2차",

							125000000,

							96000000,

							107312500

							],

							[

							"대광로제비앙",

							335000000,

							267000000,

							293533333.3

							],

							[

							"대주피오레1차",

							260000000,

							211000000,

							232434782.6

							],

							[

							"대주피오레2차",

							310000000,

							237000000,

							253190476.2

							],

							[

							"새한",

							115000000,

							87000000,

							98000000

							],

							[

							"연제골드클래스",

							270000000,

							269550000,

							269775000

							],

							[

							"한국아델리움",

							175000000,

							160000000,

							170250000

							],

							[

							"현대",

							238000000,

							140000000,

							176790697.7

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

						function drawChartComboChartID120876e24c1a() {

							var data = gvisDataComboChartID120876e24c1a();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120876e24c1a')

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

							callbacks.push(drawChartComboChartID120876e24c1a);

						})();

						function displayChartComboChartID120876e24c1a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120876e24c1a"></script>



					<!-- divChart -->



					<div id="ComboChartID120876e24c1a"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120876e24c1a.html">ComboChartID120876e24c1a</a>
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

			<!-- 연제동 그래프 끝 -->

			<!-- 오치동 그래프 시작 -->
			<div class="graph graph-con13">
				<div class="page-path">북구 > 오치동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120876eb58c2() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"고운1차",

							80000000,

							80000000,

							80000000

							],

							[

							"공간",

							122000000,

							87000000,

							102111111.1

							],

							[

							"금호타운",

							180000000,

							110000000,

							133333333.3

							],

							[

							"대광",

							83000000,

							73000000,

							79666666.67

							],

							[

							"대웅",

							138000000,

							138000000,

							138000000

							],

							[

							"대화",

							95000000,

							80000000,

							88166666.67

							],

							[

							"도나우아파트",

							64000000,

							64000000,

							64000000

							],

							[

							"동선",

							87000000,

							77000000,

							82000000

							],

							[

							"럭키",

							165000000,

							138000000,

							148454545.5

							],

							[

							"로얄타운",

							115000000,

							85000000,

							100000000

							],

							[

							"무등파크",

							173000000,

							148000000,

							158400000

							],

							[

							"비리치타운",

							259000000,

							259000000,

							259000000

							],

							[

							"삼익1차",

							235000000,

							130000000,

							175153846.2

							],

							[

							"삼익2차",

							210000000,

							149000000,

							172428571.4

							],

							[

							"양지",

							78000000,

							78000000,

							78000000

							],

							[

							"오치",

							65000000,

							65000000,

							65000000

							],

							[

							"오치주공2차",

							101000000,

							68000000,

							82000000

							],

							[

							"우미",

							155000000,

							143000000,

							150200000

							],

							[

							"우성",

							179500000,

							135000000,

							150152173.9

							],

							[

							"중도다이아빌",

							48000000,

							43000000,

							45500000

							],

							[

							"천오",

							80000000,

							79000000,

							79666666.67

							],

							[

							"한국아델리움",

							418000000,

							368000000,

							386100000

							],

							[

							"혁신1차",

							110000000,

							80000000,

							95000000

							],

							[

							"혁신2차",

							108000000,

							98000000,

							103000000

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

						function drawChartComboChartID120876eb58c2() {

							var data = gvisDataComboChartID120876eb58c2();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120876eb58c2')

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

							callbacks.push(drawChartComboChartID120876eb58c2);

						})();

						function displayChartComboChartID120876eb58c2() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120876eb58c2"></script>



					<!-- divChart -->



					<div id="ComboChartID120876eb58c2"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120876eb58c2.html">ComboChartID120876eb58c2</a>
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

			<!-- 오치동 그래프 끝 -->

			<!-- 용두동 그래프 시작 -->
			<div class="graph graph-con14">
				<div class="page-path">북구 > 용두동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12085f2351c5() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"양산타운",

							147000000,

							109000000,

							132428571.4

							],

							[

							"이안광주첨단",

							480000000,

							225000000,

							297200000

							],

							[

							"진아리채",

							275000000,

							262000000,

							267333333.3

							],

							[

							"첨단미래하이클래스",

							192000000,

							192000000,

							192000000

							],

							[

							"첨단용두산이고운",

							342000000,

							342000000,

							342000000

							],

							[

							"첨단우방아이유쉘",

							327000000,

							214500000,

							288270000

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

						function drawChartComboChartID12085f2351c5() {

							var data = gvisDataComboChartID12085f2351c5();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12085f2351c5')

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

							callbacks.push(drawChartComboChartID12085f2351c5);

						})();

						function displayChartComboChartID12085f2351c5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12085f2351c5"></script>



					<!-- divChart -->



					<div id="ComboChartID12085f2351c5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12085f2351c5.html">ComboChartID12085f2351c5</a>
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

			<!-- 용두동 그래프 끝 -->

			<!-- 용봉동 그래프 시작 -->
			<div class="graph graph-con15">
				<div class="page-path">북구 > 용봉동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12085e1c2a90() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금곡",

							80000000,

							80000000,

							80000000

							],

							[

							"금호",

							170000000,

							150000000,

							162882352.9

							],

							[

							"금호어울림",

							350000000,

							290000000,

							322076923.1

							],

							[

							"꿈에그린",

							349000000,

							215000000,

							269205882.4

							],

							[

							"대주파크빌1차",

							230000000,

							195000000,

							208588235.3

							],

							[

							"대주파크빌2차",

							220000000,

							205000000,

							210000000

							],

							[

							"대주파크빌3차",

							259000000,

							217000000,

							243484848.5

							],

							[

							"대화",

							127000000,

							117000000,

							122600000

							],

							[

							"동성노블리3차",

							110000000,

							110000000,

							110000000

							],

							[

							"동성노블리4차",

							110000000,

							110000000,

							110000000

							],

							[

							"명보",

							123000000,

							109000000,

							116200000

							],

							[

							"모아미래도",

							240000000,

							153000000,

							201954545.5

							],

							[

							"삼성",

							245000000,

							215000000,

							226666666.7

							],

							[

							"삼원주상복합",

							130000000,

							95000000,

							106500000

							],

							[

							"성산",

							107000000,

							107000000,

							107000000

							],

							[

							"신동아",

							200000000,

							136000000,

							174750000

							],

							[

							"쌍용예가",

							450000000,

							365000000,

							401833333.3

							],

							[

							"아이파크",

							465000000,

							430000000,

							452500000

							],

							[

							"엘리체",

							325000000,

							235000000,

							258136363.6

							],

							[

							"용봉2휴먼시아",

							265000000,

							220000000,

							241294117.6

							],

							[

							"우미",

							181000000,

							181000000,

							181000000

							],

							[

							"우영",

							160000000,

							77000000,

							101000000

							],

							[

							"유창파크4차",

							145000000,

							102000000,

							121727272.7

							],

							[

							"유창하이리빙1차",

							155000000,

							81000000,

							123416666.7

							],

							[

							"유창하이리빙2차",

							149000000,

							100000000,

							118100000

							],

							[

							"유창허니문",

							185000000,

							140000000,

							156666666.7

							],

							[

							"중흥",

							250000000,

							127000000,

							163705882.4

							],

							[

							"중흥S클래스",

							255000000,

							240000000,

							248625000

							],

							[

							"투인",

							155000000,

							102000000,

							140250000

							],

							[

							"한신",

							223000000,

							117000000,

							153300000

							],

							[

							"현대1차",

							205000000,

							149000000,

							160583333.3

							],

							[

							"현대2차",

							210000000,

							159000000,

							176333333.3

							],

							[

							"현대3차",

							290000000,

							185000000,

							219153846.2

							],

							[

							"호반",

							170000000,

							111000000,

							138500000

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

						function drawChartComboChartID12085e1c2a90() {

							var data = gvisDataComboChartID12085e1c2a90();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12085e1c2a90')

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

							callbacks.push(drawChartComboChartID12085e1c2a90);

						})();

						function displayChartComboChartID12085e1c2a90() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12085e1c2a90"></script>



					<!-- divChart -->



					<div id="ComboChartID12085e1c2a90"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12085e1c2a90.html">ComboChartID12085e1c2a90</a>
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

			<!-- 용봉동 그래프 끝 -->

			<!-- 우산동 그래프 시작 -->
			<div class="graph graph-con16">
				<div class="page-path">북구 > 우산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID1208184d3cdf() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"무등",

							100000000,

							100000000,

							100000000

							],

							[

							"무진",

							110000000,

							110000000,

							110000000

							],

							[

							"우미프라자",

							110000000,

							90000000,

							101000000

							],

							[

							"현대",

							263000000,

							213000000,

							229235294.1

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

						function drawChartComboChartID1208184d3cdf() {

							var data = gvisDataComboChartID1208184d3cdf();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID1208184d3cdf')

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

							callbacks.push(drawChartComboChartID1208184d3cdf);

						})();

						function displayChartComboChartID1208184d3cdf() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1208184d3cdf"></script>



					<!-- divChart -->



					<div id="ComboChartID1208184d3cdf"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1208184d3cdf.html">ComboChartID1208184d3cdf</a>
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

			<!-- 운암동 그래프 시작 -->
			<div class="graph graph-con17">
				<div class="page-path">북구 > 운암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID12085f20330d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호",

							245000000,

							154000000,

							195266666.7

							],

							[

							"나산",

							330000000,

							149000000,

							243047619

							],

							[

							"남양휴튼",

							390000000,

							305000000,

							358000000

							],

							[

							"대라수",

							158000000,

							142000000,

							149400000

							],

							[

							"대우",

							88000000,

							88000000,

							88000000

							],

							[

							"대주",

							285000000,

							145000000,

							180526315.8

							],

							[

							"동일",

							160000000,

							143000000,

							154555555.6

							],

							[

							"롯데캐슬1단지",

							335000000,

							210000000,

							248125000

							],

							[

							"롯데캐슬2단지",

							338000000,

							240000000,

							287833333.3

							],

							[

							"롯데캐슬3단지",

							300000000,

							190000000,

							222470588.2

							],

							[

							"미라보2차",

							167000000,

							138000000,

							160100000

							],

							[

							"미라보3차",

							270000000,

							160000000,

							202482758.6

							],

							[

							"벽산블루밍메가시티1단지",

							400000000,

							275000000,

							357571428.6

							],

							[

							"벽산블루밍메가시티2단지",

							510000000,

							340000000,

							412500000

							],

							[

							"벽산블루밍메가시티3단지",

							325000000,

							220000000,

							269904761.9

							],

							[

							"블루시안1차",

							215000000,

							163000000,

							195200000

							],

							[

							"블루시안2차",

							227000000,

							225000000,

							226333333.3

							],

							[

							"삼호",

							175000000,

							145000000,

							168000000

							],

							[

							"신성포레힐",

							420000000,

							260000000,

							330000000

							],

							[

							"우미1차",

							115000000,

							95000000,

							105388888.9

							],

							[

							"우미3차",

							230000000,

							225000000,

							227600000

							],

							[

							"우성",

							185000000,

							140000000,

							168600000

							],

							[

							"운암산아이파크",

							590000000,

							400000000,

							530714285.7

							],

							[

							"운암아이미소",

							165000000,

							140000000,

							150750000

							],

							[

							"운암주공3단지",

							266000000,

							150000000,

							188200000

							],

							[

							"운암프라자",

							164000000,

							83000000,

							139900000

							],

							[

							"유탑하늘세움",

							215000000,

							207000000,

							209500000

							],

							[

							"일신1차",

							158000000,

							158000000,

							158000000

							],

							[

							"일신2차",

							130000000,

							104000000,

							116565217.4

							],

							[

							"중흥파크1차",

							240000000,

							140000000,

							192750000

							],

							[

							"중흥파크2차",

							155000000,

							145000000,

							148666666.7

							],

							[

							"코아루렉시안",

							319000000,

							253000000,

							270538461.5

							],

							[

							"트라움힐",

							200000000,

							200000000,

							200000000

							],

							[

							"한국",

							230000000,

							125000000,

							164416666.7

							],

							[

							"해피아이유",

							190000000,

							190000000,

							190000000

							],

							[

							"현대",

							190000000,

							170000000,

							180642857.1

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

						function drawChartComboChartID12085f20330d() {

							var data = gvisDataComboChartID12085f20330d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID12085f20330d')

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

							callbacks.push(drawChartComboChartID12085f20330d);

						})();

						function displayChartComboChartID12085f20330d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID12085f20330d"></script>



					<!-- divChart -->



					<div id="ComboChartID12085f20330d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID12085f20330d.html">ComboChartID12085f20330d</a>
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

			<!-- 운암동 그래프 끝 -->

			<!-- 일곡동 그래프 시작 -->
			<div class="graph graph-con18">
				<div class="page-path">북구 > 일곡동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120842d81ba3() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							260000000,

							233000000,

							242600000

							],

							[

							"대림1차",

							176000000,

							120000000,

							157214285.7

							],

							[

							"대림2차",

							232000000,

							175000000,

							202565217.4

							],

							[

							"대우",

							156000000,

							105000000,

							134928571.4

							],

							[

							"동아",

							345000000,

							252000000,

							288375000

							],

							[

							"롯데",

							465000000,

							305000000,

							357500000

							],

							[

							"벽산",

							230000000,

							175000000,

							203394736.8

							],

							[

							"삼호",

							362000000,

							252000000,

							301909090.9

							],

							[

							"쌍용",

							375000000,

							270000000,

							318307692.3

							],

							[

							"진로",

							162000000,

							140000000,

							156117647.1

							],

							[

							"청솔1차",

							110000000,

							85000000,

							100727272.7

							],

							[

							"청솔2차",

							115000000,

							89000000,

							100428571.4

							],

							[

							"청솔3차",

							103000000,

							88000000,

							96750000

							],

							[

							"청솔4차",

							110000000,

							92000000,

							100800000

							],

							[

							"한국",

							162000000,

							132000000,

							150272727.3

							],

							[

							"한일",

							160000000,

							145000000,

							152571428.6

							],

							[

							"현대1차",

							150000000,

							132000000,

							139277777.8

							],

							[

							"현대2차",

							168000000,

							140000000,

							150750000

							],

							[

							"현대3차",

							228000000,

							207000000,

							220181818.2

							],

							[

							"호반일신",

							156000000,

							143000000,

							151000000

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

						function drawChartComboChartID120842d81ba3() {

							var data = gvisDataComboChartID120842d81ba3();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120842d81ba3')

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

							callbacks.push(drawChartComboChartID120842d81ba3);

						})();

						function displayChartComboChartID120842d81ba3() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120842d81ba3"></script>



					<!-- divChart -->



					<div id="ComboChartID120842d81ba3"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120842d81ba3.html">ComboChartID120842d81ba3</a>
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

			<!-- 일곡동 그래프 끝 -->

			<!-- 임동 그래프 시작 -->
			<div class="graph graph-con19">
				<div class="page-path">북구 > 임동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID120843cb1a2b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"국제미소래",

							130000000,

							130000000,

							130000000

							],

							[

							"국제미소래2차",

							171600000,

							171600000,

							171600000

							],

							[

							"임동다이아빌",

							43000000,

							43000000,

							43000000

							],

							[

							"임동주공",

							227000000,

							137000000,

							167117647.1

							],

							[

							"토림에디스",

							220000000,

							197000000,

							208500000

							],

							[

							"평화",

							135000000,

							90000000,

							120000000

							],

							[

							"한국아델리움1차",

							239000000,

							238000000,

							238500000

							],

							[

							"한국아델리움2차",

							340000000,

							240000000,

							279720000

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

						function drawChartComboChartID120843cb1a2b() {

							var data = gvisDataComboChartID120843cb1a2b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID120843cb1a2b')

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

							callbacks.push(drawChartComboChartID120843cb1a2b);

						})();

						function displayChartComboChartID120843cb1a2b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID120843cb1a2b"></script>



					<!-- divChart -->



					<div id="ComboChartID120843cb1a2b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID120843cb1a2b.html">ComboChartID120843cb1a2b</a>
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

			<!-- 임동 그래프 끝 -->


		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>