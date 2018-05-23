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

		function product(dongname) {
			var dongname;

			$.ajax({
				type : "POST",
				url : "namgudetail2.bigshort",
				data : "dongname=" + dongname,
				success : function(result) {
					$("#board").html(result);
				}
			});
		}

		$("#td1").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con2").css("display", "block");
			var dongname = $(".dongname1").val();
			product(dongname);
		});
		$("#td2").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con3").css("display", "block");
			var dongname = $(".dongname2").val();
			product(dongname);
		});
		$("#td3").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con4").css("display", "block");
			var dongname = $(".dongname3").val();
			product(dongname);
		});
		$("#td4").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con5").css("display", "block");
			var dongname = $(".dongname4").val();
			product(dongname);
		});
		$("#td5").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con6").css("display", "block");
			var dongname = $(".dongname5").val();
			product(dongname);
		});
		$("#td6").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con7").css("display", "block");
			var dongname = $(".dongname6").val();
			product(dongname);
		});
		$("#td7").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con8").css("display", "block");
			var dongname = $(".dongname7").val();
			product(dongname);
		});
		$("#td8").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con9").css("display", "block");
			var dongname = $(".dongname8").val();
			product(dongname);
		});
		$("#td9").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con10").css("display", "block");
			var dongname = $(".dongname9").val();
			product(dongname);
		});
		$("#td10").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con11").css("display", "block");
			var dongname = $(".dongname10").val();
			product(dongname);
		});
		$("#td11").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con12").css("display", "block");
			var dongname = $(".dongname11").val();
			product(dongname);
		});
		$("#td12").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con13").css("display", "block");
			var dongname = $(".dongname12").val();
			product(dongname);
		});

		setTimeout(function() {

			$(".graph").css("display", "none");
			$(".graph-con1").css("display", "block");

		}, 1000);

		/* 계산기 계산 부분 */

		$("#main_cal_m").on("click", function() {
			$("#main_cal_m").val("");
		});

		$("#main_cal_p").on("click", function() {
			$("#main_cal_p").val("");
		});

		$("#main_cal_m").on("change keyup paste", function() {

			var ir = $('#main_cal_m').val();

			var im = ir / 3.3058;
			;
			$('#main_cal_p').val(im.toFixed(2));

		});

		$("#main_cal_p").on("change keyup paste", function() {

			var ir = $('#main_cal_p').val();

			var im = ir * 3.3058;
			$('#main_cal_m').val(im.toFixed(2));

		});

	});
</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css"
	href="/BigShortWeb/css/south.css?var=1">

<style type="text/css">
.main_calc {
	width: 84px;
	border: 1px solid #d8d8d8;
	height: 67px;
	/* position: relative; */
}

.main_calc_title {
	background-color: #75787d;
	width: 84px;
	height: 27px;
	text-align: center;
	color: #FFF;
	padding-top: 7px;
	font-size: 11px;
}

#all_calc {
	text-align: center;
	position: fixed;
	width: 100%;
	top: 100px;
}

#top_calc {
	width: 1200px;
	display: inline-block;
	text-align: right;
}

#right {
	display: inline-block;
}

.graph-inner {
	position: relative;
	left: -60px;
}
</style>
</head>

<body>

	<div class="wrap">
		<!-- 계산기 부분 -->
		<div id="all_calc">
			<div id="top_calc">
				<div id="right">
					<div class="main_calc_title position">면적환산기</div>
					<div class="main_calc position">
						<div style="margin: 6px 0 0 5px; text-align: left; height: 19px;">
							<span
								style="position: relative; display: inline-block; border: 1px solid #cfcfcf; height: 19px; width: 54px">
								<span
								style="position: absolute; right: -14px; bottom: 0px; color: #68728b; font-size: 11px;">㎡</span>
								<input type="text" id="main_cal_m"
								style="width: 49px; height: 17px; line-height: 19px; padding: 0; padding-left: 5px; margin: 0; font-size: 11px; border: 0; position: absolute;">
							</span>
						</div>
						<div style="margin: 8px 0 0 5px; text-align: left; height: 19px;">
							<span
								style="position: relative; display: inline-block; border: 1px solid #cfcfcf; height: 19px; width: 54px">
								<span
								style="position: absolute; right: -14px; bottom: 0px; color: #68728b; font-size: 11px;">평</span>
								<input type="text" id="main_cal_p"
								style="width: 49px; height: 17px; line-height: 19px; padding: 0; padding-left: 5px; margin: 0; font-size: 11px; border: 0; position: absolute;">
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>





		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="south1">
							<td id="td1"><a href="#">노대동<input type="hidden"
									value="노대동" class="dongname1"></a></td>
							<td id="td2"><a href="#">방림동<input type="hidden"
									value="방림동" class="dongname2"></a></td>
							<td id="td3"><a href="#">백운동<input type="hidden"
									value="백운동" class="dongname3"></a></td>
							<td id="td4"><a href="#">봉선동<input type="hidden"
									value="봉선동" class="dongname4"></a></td>
							<td id="td5"><a href="#">서동<input type="hidden"
									value="서동" class="dongname5"></a></td>
						</tr>
						<tr id="south2">
							<td id="td6"><a href="#">송하동<input type="hidden"
									value="송하동" class="dongname6"></a></td>
							<td id="td7"><a href="#">양림동<input type="hidden"
									value="양림동" class="dongname7"></a></td>
							<td id="td8"><a href="#">월산동<input type="hidden"
									value="월산동" class="dongname8"></a></td>
							<td id="td9"><a href="#">주월동<input type="hidden"
									value="주월동" class="dongname9"></a></td>
							<td id="td10"><a href="#">지석동<input type="hidden"
									value="지석동" class="dongname10"></a></td>
						</tr>
						<tr id="south3">
							<td id="td11"><a href="#">진월동<input type="hidden"
									value="진월동" class="dongname11"></a></td>
							<td id="td12"><a href="#">행암동<input type="hidden"
									value="행암동" class="dongname12"></a></td>
					</thead>
				</table>
			</div>

			<!-- 남구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 남구</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf404516138a() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"노대동",

							595000000,

							238000000,

							340743902.4

							],

							[

							"방림동",

							322000000,

							65000000,

							182295082

							],

							[

							"백운동",

							420000000,

							114000000,

							260474359

							],

							[

							"봉선동",

							1500000000,

							60000000,

							277380239.5

							],

							[

							"서동",

							318000000,

							113000000,

							257533333.3

							],

							[

							"송하동",

							265000000,

							105000000,

							178426470.6

							],

							[

							"양림동",

							310000000,

							285000000,

							298428571.4

							],

							[

							"월산동",

							465000000,

							73000000,

							199184210.5

							],

							[

							"주월동",

							500000000,

							53000000,

							210938367.3

							],

							[

							"지석동",

							353000000,

							245000000,

							286600000

							],

							[

							"진월동",

							710000000,

							52000000,

							216153322.7

							],

							[

							"행암동",

							630000000,

							255000000,

							328826087

							]

							];

							data.addColumn('string', 'DONGNAME');

							data.addColumn('number', '최대가격');

							data.addColumn('number', '최소가격');

							data.addColumn('number', '평균가');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartIDf404516138a() {

							var data = gvisDataComboChartIDf404516138a();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf404516138a')

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

							callbacks.push(drawChartComboChartIDf404516138a);

						})();

						function displayChartComboChartIDf404516138a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf404516138a"></script>



					<!-- divChart -->



					<div id="ComboChartIDf404516138a"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf404516138a.html">ComboChartIDf404516138a</a>
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
			<!-- 남구 그래프 div 끝 -->

			<!-- 노대동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">남구 > 노대동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID394079ea56c4() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID394079ea56c4() {

							var data = gvisDataComboChartID394079ea56c4();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID394079ea56c4')

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

							callbacks.push(drawChartComboChartID394079ea56c4);

						})();

						function displayChartComboChartID394079ea56c4() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID394079ea56c4"></script>



					<!-- divChart -->



					<div id="ComboChartID394079ea56c4"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID394079ea56c4.html">ComboChartID394079ea56c4</a>
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

						function gvisDataComboChartID3940400a5235() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID3940400a5235() {

							var data = gvisDataComboChartID3940400a5235();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID3940400a5235')

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

							callbacks.push(drawChartComboChartID3940400a5235);

						})();

						function displayChartComboChartID3940400a5235() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID3940400a5235"></script>



					<!-- divChart -->



					<div id="ComboChartID3940400a5235"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID3940400a5235.html">ComboChartID3940400a5235</a>
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

						function gvisDataComboChartID394026291e9b() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID394026291e9b() {

							var data = gvisDataComboChartID394026291e9b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID394026291e9b')

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

							callbacks.push(drawChartComboChartID394026291e9b);

						})();

						function displayChartComboChartID394026291e9b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID394026291e9b"></script>



					<!-- divChart -->



					<div id="ComboChartID394026291e9b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID394026291e9b.html">ComboChartID394026291e9b</a>
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

						function gvisDataComboChartID394036b81370() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID394036b81370() {

							var data = gvisDataComboChartID394036b81370();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID394036b81370')

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

							callbacks.push(drawChartComboChartID394036b81370);

						})();

						function displayChartComboChartID394036b81370() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID394036b81370"></script>



					<!-- divChart -->



					<div id="ComboChartID394036b81370"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID394036b81370.html">ComboChartID394036b81370</a>
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

						function gvisDataComboChartID3940379866ba() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID3940379866ba() {

							var data = gvisDataComboChartID3940379866ba();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID3940379866ba')

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

							callbacks.push(drawChartComboChartID3940379866ba);

						})();

						function displayChartComboChartID3940379866ba() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID3940379866ba"></script>



					<!-- divChart -->



					<div id="ComboChartID3940379866ba"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID3940379866ba.html">ComboChartID3940379866ba</a>
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

						function gvisDataComboChartID394064c256fc() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID394064c256fc() {

							var data = gvisDataComboChartID394064c256fc();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID394064c256fc')

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

							callbacks.push(drawChartComboChartID394064c256fc);

						})();

						function displayChartComboChartID394064c256fc() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID394064c256fc"></script>



					<!-- divChart -->



					<div id="ComboChartID394064c256fc"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID394064c256fc.html">ComboChartID394064c256fc</a>
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

						function gvisDataComboChartIDf4012d47ce8() {

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

						function drawChartComboChartIDf4012d47ce8() {

							var data = gvisDataComboChartIDf4012d47ce8();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4012d47ce8')

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

							callbacks.push(drawChartComboChartIDf4012d47ce8);

						})();

						function displayChartComboChartIDf4012d47ce8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4012d47ce8"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4012d47ce8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4012d47ce8.html">ComboChartIDf4012d47ce8</a>
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

						function gvisDataComboChartID39407015691() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID39407015691() {

							var data = gvisDataComboChartID39407015691();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID39407015691')

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

							callbacks.push(drawChartComboChartID39407015691);

						})();

						function displayChartComboChartID39407015691() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID39407015691"></script>



					<!-- divChart -->



					<div id="ComboChartID39407015691"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID39407015691.html">ComboChartID39407015691</a>
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

						function gvisDataComboChartID39405079175e() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID39405079175e() {

							var data = gvisDataComboChartID39405079175e();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID39405079175e')

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

							callbacks.push(drawChartComboChartID39405079175e);

						})();

						function displayChartComboChartID39405079175e() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID39405079175e"></script>



					<!-- divChart -->



					<div id="ComboChartID39405079175e"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID39405079175e.html">ComboChartID39405079175e</a>
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

						function gvisDataComboChartIDf40e7a1c1b() {

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

						function drawChartComboChartIDf40e7a1c1b() {

							var data = gvisDataComboChartIDf40e7a1c1b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf40e7a1c1b')

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

							callbacks.push(drawChartComboChartIDf40e7a1c1b);

						})();

						function displayChartComboChartIDf40e7a1c1b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40e7a1c1b"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40e7a1c1b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40e7a1c1b.html">ComboChartIDf40e7a1c1b</a>
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

						function gvisDataComboChartID39404d7f2fc6() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID39404d7f2fc6() {

							var data = gvisDataComboChartID39404d7f2fc6();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID39404d7f2fc6')

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

							callbacks.push(drawChartComboChartID39404d7f2fc6);

						})();

						function displayChartComboChartID39404d7f2fc6() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID39404d7f2fc6"></script>



					<!-- divChart -->



					<div id="ComboChartID39404d7f2fc6"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID39404d7f2fc6.html">ComboChartID39404d7f2fc6</a>
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

						function gvisDataComboChartID39402527168d() {

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

							data.addColumn('number', '최대값');

							data.addColumn('number', '최소값');

							data.addColumn('number', '평균값');

							data.addRows(datajson);

							return (data);

						}

						// jsDrawChart

						function drawChartComboChartID39402527168d() {

							var data = gvisDataComboChartID39402527168d();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};
							/* 차트의 전체 크기 조절 */
							options["width"] = 1100;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID39402527168d')

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

							callbacks.push(drawChartComboChartID39402527168d);

						})();

						function displayChartComboChartID39402527168d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID39402527168d"></script>



					<!-- divChart -->



					<div id="ComboChartID39402527168d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID39402527168d.html">ComboChartID39402527168d</a>
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
			<div id="board"></div>

		</div>
	</div>


</body>
</html>
<%@ include file="../footer.jsp"%>