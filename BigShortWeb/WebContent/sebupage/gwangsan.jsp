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
				url : "gwangsandetail2.bigshort",
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
		$("#td13").on("click", function() {
			$(".graph").css("display", "none");
			$(".graph-con14").css("display", "block");
			var dongname = $(".dongname13").val();
			product(dongname);
		});
		$("#td14").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con15").css("display", "block");
			var dongname = $(".dongname14").val();
			product(dongname);
		});
		$("#td15").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con16").css("display", "block");
			var dongname = $(".dongname15").val();
			product(dongname);
		});
		$("#td16").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con17").css("display", "block");
			var dongname = $(".dongname16").val();
			product(dongname);
		});
		$("#td17").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con18").css("display", "block");
			var dongname = $(".dongname17").val();
			product(dongname);
		});
		$("#td18").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con19").css("display", "block");
			var dongname = $(".dongname18").val();
			product(dongname);
		});
		$("#td19").on("click", function() {

			$(".graph").css("display", "none");
			$(".graph-con20").css("display", "block");
			var dongname = $(".dongname19").val();
			product(dongname);

		});
		$("#td20").on("click", function() {
			$(".graph").css("display", "none");
			$(".graph-con21").css("display", "block");
			var dongname = $(".dongname20").val();
			product(dongname);
		});
		$("#td21").on("click", function() {
			$(".graph").css("display", "none");
			$(".graph-con22").css("display", "block");
			var dongname = $(".dongname21").val();
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
	href="/BigShortWeb/css/gwangsan.css?var=1">
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
						<tr id="gwangsan1">
							<td id="td1"><a href="#">도산동<input type="hidden"
									value="도산동" class="dongname1"></a></td>
							<td id="td2"><a href="#">도천동<input type="hidden"
									value="도천동" class="dongname2"></a></td>
							<td id="td3"><a href="#">비아동<input type="hidden"
									value="비아동" class="dongname3"></a></td>
							<td id="td4"><a href="#">산월동<input type="hidden"
									value="산월동" class="dongname4"></a></td>
							<td id="td5"><a href="#">산정동<input type="hidden"
									value="산정동" class="dongname5"></a></td>
						</tr>
						<tr id="gwangsan2">
							<td id="td6"><a href="#">선암동<input type="hidden"
									value="선암동" class="dongname6"></a></td>
							<td id="td7"><a href="#">소촌동<input type="hidden"
									value="소촌동" class="dongname7"></a></td>
							<td id="td8"><a href="#">송정동<input type="hidden"
									value="송정동" class="dongname8"></a></td>
							<td id="td9"><a href="#">수완동<input type="hidden"
									value="수완동" class="dongname9"></a></td>
							<td id="td10"><a href="#">신가동<input type="hidden"
									value="신가동" class="dongname10"></a></td>
						</tr>
						<tr id="gwangsan3">
							<td id="td11"><a href="#">신창동<input type="hidden"
									value="신창동" class="dongname11"></a></td>
							<td id="td12"><a href="#">신촌동<input type="hidden"
									value="신촌동" class="dongname12"></a></td>
							<td id="td13"><a href="#">쌍암동<input type="hidden"
									value="쌍암동" class="dongname13"></a></td>
							<td id="td14"><a href="#">우산동<input type="hidden"
									value="우산동" class="dongname14"></a></td>
							<td id="td15"><a href="#">운남동<input type="hidden"
									value="운남동" class="dongname15"></a></td>
						</tr>
						<tr id="gwangsan4">
							<td id="td16"><a href="#">운수동<input type="hidden"
									value="운수동" class="dongname16"></a></td>
							<td id="td17"><a href="#">월계동<input type="hidden"
									value="월계동" class="dongname17"></a></td>
							<td id="td18"><a href="#">월곡동<input type="hidden"
									value="월곡동" class="dongname18"></a></td>
							<td id="td19"><a href="#">장덕동<input type="hidden"
									value="장덕동" class="dongname19"></a></td>
							<td id="td20"><a href="#">하남동<input type="hidden"
									value="하남동" class="dongname20"></a></td>
						</tr>
						<tr id="gwangsan5">
							<td id="td21"><a href="#">흑석동<input type="hidden"
									value="흑석동" class="dongname21"></a></td>
					</thead>
				</table>
			</div>

			<!-- 광산구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1" id="graph1">
				<div class="page-path">광주광역시 > 광산구</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf405dc97b0a() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"도산동",

							239000000,

							65000000,

							120858823.5

							],

							[

							"도천동",

							115000000,

							80000000,

							95318181.82

							],

							[

							"비아동",

							167000000,

							74000000,

							111070588.2

							],

							[

							"산월동",

							290000000,

							190000000,

							227545977

							],

							[

							"산정동",

							590000000,

							60000000,

							286268518.5

							],

							[

							"선암동",

							350000000,

							163000000,

							285208333.3

							],

							[

							"소촌동",

							240000000,

							63000000,

							144062992.1

							],

							[

							"송정동",

							310000000,

							68000000,

							152727272.7

							],

							[

							"수완동",

							890000000,

							343000000,

							520254902

							],

							[

							"신가동",

							638000000,

							115000000,

							326886597.9

							],

							[

							"신창동",

							410000000,

							83000000,

							218829411.8

							],

							[

							"신촌동",

							205000000,

							88000000,

							172625000

							],

							[

							"쌍암동",

							165000000,

							135000000,

							150000000

							],

							[

							"우산동",

							350000000,

							58000000,

							115289256.2

							],

							[

							"운남동",

							258000000,

							85000000,

							142078282.8

							],

							[

							"운수동",

							120000000,

							103000000,

							108250000

							],

							[

							"월계동",

							320000000,

							105000000,

							173520634.9

							],

							[

							"월곡동",

							250000000,

							70000000,

							159800000

							],

							[

							"장덕동",

							790000000,

							220000000,

							387949275.4

							],

							[

							"하남동",

							180000000,

							121000000,

							157090909.1

							],

							[

							"흑석동",

							440000000,

							238000000,

							309567567.6

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

						function drawChartComboChartIDf405dc97b0a() {

							var data = gvisDataComboChartIDf405dc97b0a();

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
							options["width"] = 1150;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf405dc97b0a')

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

							callbacks.push(drawChartComboChartIDf405dc97b0a);

						})();

						function displayChartComboChartIDf405dc97b0a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf405dc97b0a"></script>



					<!-- divChart -->



					<div id="ComboChartIDf405dc97b0a"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf405dc97b0a.html">ComboChartIDf405dc97b0a</a>
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
			<!-- 광산구 전체 그래프 div 끝 -->

			<!-- 도산동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">광산구 > 도산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40e7a4249() {

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

						function drawChartComboChartIDf40e7a4249() {

							var data = gvisDataComboChartIDf40e7a4249();

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

							document.getElementById('ComboChartIDf40e7a4249')

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

							callbacks.push(drawChartComboChartIDf40e7a4249);

						})();

						function displayChartComboChartIDf40e7a4249() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40e7a4249"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40e7a4249"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40e7a4249.html">ComboChartIDf40e7a4249</a>
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
			<div class="graph graph-con3">
				<div class="page-path">광산구 > 도천동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf402d5e7797() {

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

						function drawChartComboChartIDf402d5e7797() {

							var data = gvisDataComboChartIDf402d5e7797();

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

							document.getElementById('ComboChartIDf402d5e7797')

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

							callbacks.push(drawChartComboChartIDf402d5e7797);

						})();

						function displayChartComboChartIDf402d5e7797() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf402d5e7797"></script>



					<!-- divChart -->



					<div id="ComboChartIDf402d5e7797"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf402d5e7797.html">ComboChartIDf402d5e7797</a>
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
			<div class="graph graph-con4"">
				<div class="page-path">광산구 > 비아동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4045406a22() {

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

						function drawChartComboChartIDf4045406a22() {

							var data = gvisDataComboChartIDf4045406a22();

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

							document.getElementById('ComboChartIDf4045406a22')

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

							callbacks.push(drawChartComboChartIDf4045406a22);

						})();

						function displayChartComboChartIDf4045406a22() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4045406a22"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4045406a22"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4045406a22.html">ComboChartIDf4045406a22</a>
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
			<div class="graph graph-con5"">
				<div class="page-path">광산구 > 산월동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4045b43c95() {

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

						function drawChartComboChartIDf4045b43c95() {

							var data = gvisDataComboChartIDf4045b43c95();

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

							document.getElementById('ComboChartIDf4045b43c95')

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

							callbacks.push(drawChartComboChartIDf4045b43c95);

						})();

						function displayChartComboChartIDf4045b43c95() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4045b43c95"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4045b43c95"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4045b43c95.html">ComboChartIDf4045b43c95</a>
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
			<div class="graph graph-con6">
				<div class="page-path">광산구 > 산정동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf401bb616c() {

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

						function drawChartComboChartIDf401bb616c() {

							var data = gvisDataComboChartIDf401bb616c();

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

							document.getElementById('ComboChartIDf401bb616c')

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

							callbacks.push(drawChartComboChartIDf401bb616c);

						})();

						function displayChartComboChartIDf401bb616c() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf401bb616c"></script>



					<!-- divChart -->



					<div id="ComboChartIDf401bb616c"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf401bb616c.html">ComboChartIDf401bb616c</a>
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

			<div class="graph graph-con7">
				<div class="page-path">광산구 > 선암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4043932c75() {

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

						function drawChartComboChartIDf4043932c75() {

							var data = gvisDataComboChartIDf4043932c75();

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

							document.getElementById('ComboChartIDf4043932c75')

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

							callbacks.push(drawChartComboChartIDf4043932c75);

						})();

						function displayChartComboChartIDf4043932c75() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4043932c75"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4043932c75"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4043932c75.html">ComboChartIDf4043932c75</a>
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

			<div class="graph graph-con8">
				<div class="page-path">광산구 > 소촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf401f1e2998() {

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

						function drawChartComboChartIDf401f1e2998() {

							var data = gvisDataComboChartIDf401f1e2998();

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

							document.getElementById('ComboChartIDf401f1e2998')

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

							callbacks.push(drawChartComboChartIDf401f1e2998);

						})();

						function displayChartComboChartIDf401f1e2998() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf401f1e2998"></script>



					<!-- divChart -->



					<div id="ComboChartIDf401f1e2998"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf401f1e2998.html">ComboChartIDf401f1e2998</a>
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
			<div class="graph graph-con9">
				<div class="page-path">광산구 > 송정동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf405a71abf() {

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

						function drawChartComboChartIDf405a71abf() {

							var data = gvisDataComboChartIDf405a71abf();

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

							document.getElementById('ComboChartIDf405a71abf')

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

							callbacks.push(drawChartComboChartIDf405a71abf);

						})();

						function displayChartComboChartIDf405a71abf() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf405a71abf"></script>



					<!-- divChart -->



					<div id="ComboChartIDf405a71abf"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf405a71abf.html">ComboChartIDf405a71abf</a>
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
			<div class="graph graph-con10">
				<div class="page-path">광산구 > 수완동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf403bc9e0e() {

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

						function drawChartComboChartIDf403bc9e0e() {

							var data = gvisDataComboChartIDf403bc9e0e();

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

							document.getElementById('ComboChartIDf403bc9e0e')

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

							callbacks.push(drawChartComboChartIDf403bc9e0e);

						})();

						function displayChartComboChartIDf403bc9e0e() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf403bc9e0e"></script>



					<!-- divChart -->



					<div id="ComboChartIDf403bc9e0e"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf403bc9e0e.html">ComboChartIDf403bc9e0e</a>
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
			<div class="graph graph-con11">
				<div class="page-path">광산구 > 신가동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf405f466d0() {

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

						function drawChartComboChartIDf405f466d0() {

							var data = gvisDataComboChartIDf405f466d0();

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

							document.getElementById('ComboChartIDf405f466d0')

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

							callbacks.push(drawChartComboChartIDf405f466d0);

						})();

						function displayChartComboChartIDf405f466d0() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf405f466d0"></script>



					<!-- divChart -->



					<div id="ComboChartIDf405f466d0"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf405f466d0.html">ComboChartIDf405f466d0</a>
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
			<div class="graph graph-con12">
				<div class="page-path">광산구 > 신창동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40149d527f() {

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

						function drawChartComboChartIDf40149d527f() {

							var data = gvisDataComboChartIDf40149d527f();

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

							document.getElementById('ComboChartIDf40149d527f')

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

							callbacks.push(drawChartComboChartIDf40149d527f);

						})();

						function displayChartComboChartIDf40149d527f() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40149d527f"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40149d527f"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40149d527f.html">ComboChartIDf40149d527f</a>
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
			<div class="graph graph-con13">
				<div class="page-path">광산구 > 신촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40246c43c7() {

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

						function drawChartComboChartIDf40246c43c7() {

							var data = gvisDataComboChartIDf40246c43c7();

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

							document.getElementById('ComboChartIDf40246c43c7')

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

							callbacks.push(drawChartComboChartIDf40246c43c7);

						})();

						function displayChartComboChartIDf40246c43c7() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40246c43c7"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40246c43c7"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40246c43c7.html">ComboChartIDf40246c43c7</a>
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
			<div class="graph graph-con14">
				<div class="page-path">광산구 > 쌍암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf407ceac00() {

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

						function drawChartComboChartIDf407ceac00() {

							var data = gvisDataComboChartIDf407ceac00();

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

							document.getElementById('ComboChartIDf407ceac00')

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

							callbacks.push(drawChartComboChartIDf407ceac00);

						})();

						function displayChartComboChartIDf407ceac00() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf407ceac00"></script>



					<!-- divChart -->



					<div id="ComboChartIDf407ceac00"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf407ceac00.html">ComboChartIDf407ceac00</a>
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
			<div class="graph graph-con15">
				<div class="page-path">광산구 > 우산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4019a026aa() {

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

						function drawChartComboChartIDf4019a026aa() {

							var data = gvisDataComboChartIDf4019a026aa();

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

							document.getElementById('ComboChartIDf4019a026aa')

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

							callbacks.push(drawChartComboChartIDf4019a026aa);

						})();

						function displayChartComboChartIDf4019a026aa() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4019a026aa"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4019a026aa"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4019a026aa.html">ComboChartIDf4019a026aa</a>
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
			<div class="graph graph-con16">
				<div class="page-path">광산구 > 운남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40271e7f09() {

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

						function drawChartComboChartIDf40271e7f09() {

							var data = gvisDataComboChartIDf40271e7f09();

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

							document.getElementById('ComboChartIDf40271e7f09')

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

							callbacks.push(drawChartComboChartIDf40271e7f09);

						})();

						function displayChartComboChartIDf40271e7f09() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40271e7f09"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40271e7f09"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40271e7f09.html">ComboChartIDf40271e7f09</a>
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
			<div class="graph graph-con17">
				<div class="page-path">광산구 > 운수동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4050ba2c63() {

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

						function drawChartComboChartIDf4050ba2c63() {

							var data = gvisDataComboChartIDf4050ba2c63();

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

							document.getElementById('ComboChartIDf4050ba2c63')

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

							callbacks.push(drawChartComboChartIDf4050ba2c63);

						})();

						function displayChartComboChartIDf4050ba2c63() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4050ba2c63"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4050ba2c63"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4050ba2c63.html">ComboChartIDf4050ba2c63</a>
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
			<div class="graph graph-con18">
				<div class="page-path">광산구 > 월계동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf402979134() {

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

						function drawChartComboChartIDf402979134() {

							var data = gvisDataComboChartIDf402979134();

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

							document.getElementById('ComboChartIDf402979134')

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

							callbacks.push(drawChartComboChartIDf402979134);

						})();

						function displayChartComboChartIDf402979134() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf402979134"></script>



					<!-- divChart -->



					<div id="ComboChartIDf402979134"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf402979134.html">ComboChartIDf402979134</a>
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
			<div class="graph graph-con19">
				<div class="page-path">광산구 > 월곡동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40711ccff() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							165000000,

							110000000,

							152580645.2

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

						function drawChartComboChartIDf40711ccff() {

							var data = gvisDataComboChartIDf40711ccff();

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

							document.getElementById('ComboChartIDf40711ccff')

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

							callbacks.push(drawChartComboChartIDf40711ccff);

						})();

						function displayChartComboChartIDf40711ccff() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40711ccff"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40711ccff"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40711ccff.html">ComboChartIDf40711ccff</a>
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
			<div class="graph graph-con20">
				<div class="page-path">광산구 > 장덕동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf403e9f6da5() {

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

						function drawChartComboChartIDf403e9f6da5() {

							var data = gvisDataComboChartIDf403e9f6da5();

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

							document.getElementById('ComboChartIDf403e9f6da5')

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

							callbacks.push(drawChartComboChartIDf403e9f6da5);

						})();

						function displayChartComboChartIDf403e9f6da5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf403e9f6da5"></script>



					<!-- divChart -->



					<div id="ComboChartIDf403e9f6da5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf403e9f6da5.html">ComboChartIDf403e9f6da5</a>
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
			<div class="graph graph-con21">
				<div class="page-path">광산구 > 하남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4023b27462() {

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

						function drawChartComboChartIDf4023b27462() {

							var data = gvisDataComboChartIDf4023b27462();

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

							document.getElementById('ComboChartIDf4023b27462')

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

							callbacks.push(drawChartComboChartIDf4023b27462);

						})();

						function displayChartComboChartIDf4023b27462() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4023b27462"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4023b27462"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4023b27462.html">ComboChartIDf4023b27462</a>
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
			<div class="graph graph-con22">
				<div class="page-path">광산구 > 흑석동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4038ef3ec() {

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

						function drawChartComboChartIDf4038ef3ec() {

							var data = gvisDataComboChartIDf4038ef3ec();

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

							document.getElementById('ComboChartIDf4038ef3ec')

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

							callbacks.push(drawChartComboChartIDf4038ef3ec);

						})();

						function displayChartComboChartIDf4038ef3ec() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4038ef3ec"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4038ef3ec"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4038ef3ec.html">ComboChartIDf4038ef3ec</a>
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
				<%-- <c:forEach items="${gwangsan}" var="gwangsan">
				<div class="product">
					<a href="${gwangsan.url}">
					<span class="aptname">건물명 : ${gwangsan.aptname}</span>
					<span class="standard">평수 : ${gwangsan.dongextent}</span>
					<span class="average">평균가 : 
						<fmt:formatNumber value="${pDto.mean_price}" pattern="###,###,###,###"/>원
					</span>
					<span class="price">매매가 : ${gwangsan.nameprice}원</span>
					</a>
				</div>
				</c:forEach> --%>
			</div>
			<!-- 상품게시페이지 끝 -->

		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>