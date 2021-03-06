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
				url : "sergudetail2.bigshort",
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
	href="/BigShortWeb/css/west.css?var=1">

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
						<tr id="west1">
							<td id="td1"><a href="#">광천동<input type="hidden"
									value="광천동" class="dongname1"></a></td>
							<td id="td2"><a href="#">금호동<input type="hidden"
									value="금호동" class="dongname2"></a></td>
							<td id="td3"><a href="#">내방동<input type="hidden"
									value="내방동" class="dongname3"></a></td>
							<td id="td4"><a href="#">농성동<input type="hidden"
									value="농성동" class="dongname4"></a></td>
							<td id="td5"><a href="#">동천동<input type="hidden"
									value="동천동" class="dongname5"></a></td>
						</tr>
						<tr id="west2">
							<td id="td6"><a href="#">마륵동<input type="hidden"
									value="마륵동" class="dongname6"></a></td>
							<td id="td7"><a href="#">매월동<input type="hidden"
									value="매월동" class="dongname7"></a></td>
							<td id="td8"><a href="#">쌍촌동<input type="hidden"
									value="쌍촌동" class="dongname8"></a></td>
							<td id="td9" class="yangdong"><a href="#">양동<input
									type="hidden" value="양동" class="dongname9"></a></td>
							<td id="td10"><a href="#">유촌동<input type="hidden"
									value="유촌동" class="dongname10"></a></td>
						</tr>
						<tr id="west3">
							<td id="td11"><a href="#">치평동<input type="hidden"
									value="치평동" class="dongname11"></a></td>
							<td id="td12"><a href="#">풍암동<input type="hidden"
									value="풍암동" class="dongname12"></a></td>
							<td id="td13"><a href="#">화정동<input type="hidden"
									value="화정동" class="dongname13"></a></td>
					</thead>
				</table>
			</div>

			<!-- 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 서구</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID7341f182aab() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"고운하이플러스",

							350000000,

							260000000,

							325625000

							],

							[

							"광명",

							145000000,

							115000000,

							135000000

							],

							[

							"광주유니버시아드힐스테이트1단지",

							450000000,

							375000000,

							404108108.1

							],

							[

							"광주유니버시아드힐스테이트2단지",

							440000000,

							380000000,

							409000000

							],

							[

							"광주유니버시아드힐스테이트3단지",

							625000000,

							289000000,

							422787234

							],

							[

							"금호1차",

							350000000,

							314000000,

							321166666.7

							],

							[

							"금호2차",

							192000000,

							131000000,

							152666666.7

							],

							[

							"금호타운3차",

							310000000,

							139000000,

							194909090.9

							],

							[

							"금호타운4차",

							190000000,

							190000000,

							190000000

							],

							[

							"금호하이빌",

							95000000,

							63000000,

							73666666.67

							],

							[

							"남화",

							220000000,

							220000000,

							220000000

							],

							[

							"대륙",

							87000000,

							87000000,

							87000000

							],

							[

							"대림e편한세상",

							570000000,

							430000000,

							515000000

							],

							[

							"대주",

							210000000,

							173000000,

							198600000

							],

							[

							"대주피오레",

							520000000,

							415000000,

							472272727.3

							],

							[

							"라인동산",

							191000000,

							121000000,

							165272727.3

							],

							[

							"모아",

							209000000,

							175000000,

							194750000

							],

							[

							"모아타워",

							300000000,

							253000000,

							271500000

							],

							[

							"무등파크",

							160000000,

							143000000,

							154600000

							],

							[

							"삼익",

							160000000,

							120000000,

							150400000

							],

							[

							"신동아",

							200000000,

							170000000,

							187739130.4

							],

							[

							"염주맨션",

							109000000,

							109000000,

							109000000

							],

							[

							"염주주공",

							400000000,

							230000000,

							261312500

							],

							[

							"염주현대",

							142000000,

							122000000,

							134166666.7

							],

							[

							"영무예다음1차",

							135000000,

							135000000,

							135000000

							],

							[

							"영무예다음2차",

							465000000,

							465000000,

							465000000

							],

							[

							"영화",

							110000000,

							98000000,

							104000000

							],

							[

							"우성1차",

							165000000,

							140000000,

							144285714.3

							],

							[

							"우성2차",

							122000000,

							100000000,

							110000000

							],

							[

							"중흥",

							185000000,

							183000000,

							183666666.7

							],

							[

							"중흥파크",

							175000000,

							155000000,

							162000000

							],

							[

							"태영",

							147000000,

							120000000,

							127285714.3

							],

							[

							"한양",

							258000000,

							118000000,

							200916666.7

							],

							[

							"해광샹그릴라센트럴337",

							295000000,

							180000000,

							218750000

							],

							[

							"현대",

							180000000,

							170000000,

							175000000

							],

							[

							"호반",

							130000000,

							129000000,

							129500000

							],

							[

							"화정우미",

							210000000,

							195000000,

							202500000

							],

							[

							"흥국",

							80000000,

							79000000,

							79500000

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

						function drawChartComboChartID7341f182aab() {

							var data = gvisDataComboChartID7341f182aab();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID7341f182aab')

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

							callbacks.push(drawChartComboChartID7341f182aab);

						})();

						function displayChartComboChartID7341f182aab() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID7341f182aab"></script>



					<!-- divChart -->



					<div id="ComboChartID7341f182aab"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID7341f182aab.html">ComboChartID7341f182aab</a>
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

			<!-- 광천동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">서구 > 광천동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID734166439ce() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남일",

							163000000,

							150000000,

							156333333.3

							],

							[

							"대광",

							135000000,

							135000000,

							135000000

							],

							[

							"대림e편한세상",

							585000000,

							363000000,

							451777777.8

							],

							[

							"삼화",

							233000000,

							233000000,

							233000000

							],

							[

							"성진",

							140000000,

							135000000,

							137500000

							],

							[

							"시민",

							80000000,

							80000000,

							80000000

							],

							[

							"신광연립주택",

							140000000,

							135000000,

							137500000

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

						function drawChartComboChartID734166439ce() {

							var data = gvisDataComboChartID734166439ce();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID734166439ce')

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

							callbacks.push(drawChartComboChartID734166439ce);

						})();

						function displayChartComboChartID734166439ce() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID734166439ce"></script>



					<!-- divChart -->



					<div id="ComboChartID734166439ce"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID734166439ce.html">ComboChartID734166439ce</a>
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

			<!-- 광천동 그래프 끝 -->

			<!-- 금호동 그래프 시작 -->
			<div class="graph graph-con3">
				<div class="page-path">서구 > 금호동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID734112c7c6b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호베스트빌",

							390000000,

							363000000,

							376750000

							],

							[

							"남양파크",

							390000000,

							325000000,

							360000000

							],

							[

							"대주",

							175000000,

							170000000,

							173000000

							],

							[

							"대주파크빌",

							188000000,

							162000000,

							178100000

							],

							[

							"도개공1단지",

							145000000,

							136000000,

							140444444.4

							],

							[

							"도개공2단지",

							175000000,

							133000000,

							160846153.8

							],

							[

							"라인",

							330000000,

							202000000,

							250500000

							],

							[

							"로렌시아",

							345000000,

							345000000,

							345000000

							],

							[

							"로이스빌",

							380000000,

							365000000,

							372500000

							],

							[

							"명지",

							195000000,

							195000000,

							195000000

							],

							[

							"모아엘가",

							250000000,

							205000000,

							236250000

							],

							[

							"부영사랑으로",

							240000000,

							212000000,

							222888888.9

							],

							[

							"삼능공간",

							193000000,

							162000000,

							177500000

							],

							[

							"송촌파인힐",

							260000000,

							210000000,

							229600000

							],

							[

							"시영1단지",

							125000000,

							102000000,

							118000000

							],

							[

							"시영일반",

							135000000,

							86000000,

							114466666.7

							],

							[

							"쌍용예가",

							760000000,

							635000000,

							685000000

							],

							[

							"우미",

							225000000,

							220000000,

							222000000

							],

							[

							"이지더원",

							285000000,

							285000000,

							285000000

							],

							[

							"일신",

							173000000,

							173000000,

							173000000

							],

							[

							"종원팰리스빌",

							277000000,

							225000000,

							253863636.4

							],

							[

							"주은",

							242000000,

							223000000,

							230250000

							],

							[

							"중흥",

							188000000,

							155000000,

							174480000

							],

							[

							"진흥더루벤스",

							580000000,

							510000000,

							542500000

							],

							[

							"진흥더블파크1차",

							497000000,

							445000000,

							458375000

							],

							[

							"코아루",

							455000000,

							380000000,

							405000000

							],

							[

							"한국1차",

							187000000,

							165000000,

							176800000

							],

							[

							"한국2차",

							167000000,

							167000000,

							167000000

							],

							[

							"해광대덕무지개",

							195000000,

							160000000,

							173888888.9

							],

							[

							"호반리젠시빌2차",

							275000000,

							103000000,

							164500000

							],

							[

							"호반리젠시빌3차",

							265000000,

							233000000,

							249000000

							],

							[

							"호반리젠시빌5차",

							285000000,

							253000000,

							275666666.7

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

						function drawChartComboChartID734112c7c6b() {

							var data = gvisDataComboChartID734112c7c6b();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID734112c7c6b')

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

							callbacks.push(drawChartComboChartID734112c7c6b);

						})();

						function displayChartComboChartID734112c7c6b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID734112c7c6b"></script>



					<!-- divChart -->



					<div id="ComboChartID734112c7c6b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID734112c7c6b.html">ComboChartID734112c7c6b</a>
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

			<!-- 금호동 그래프 끝 -->

			<!-- 내방동 그래프 시작 -->

			<div class="graph graph-con4">
				<div class="page-path">서구 > 내방동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID73468b1fda() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"개나리",

							85000000,

							85000000,

							85000000

							],

							[

							"그린",

							150000000,

							150000000,

							150000000

							],

							[

							"내방주공",

							238000000,

							107000000,

							169916666.7

							],

							[

							"솔뫼타운",

							99000000,

							62000000,

							83545454.55

							],

							[

							"해태",

							255000000,

							150000000,

							205333333.3

							],

							[

							"해태맨션",

							120000000,

							90000000,

							107500000

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

						function drawChartComboChartID73468b1fda() {

							var data = gvisDataComboChartID73468b1fda();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID73468b1fda')

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

							callbacks.push(drawChartComboChartID73468b1fda);

						})();

						function displayChartComboChartID73468b1fda() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID73468b1fda"></script>



					<!-- divChart -->



					<div id="ComboChartID73468b1fda"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID73468b1fda.html">ComboChartID73468b1fda</a>
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

			<!-- 내방동 그래프 끝 -->

			<!-- 농성동 그래프 시작 -->
			<div class="graph graph-con5">
				<div class="page-path">서구 > 농성동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID7344f807c75() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"무등",

							115000000,

							115000000,

							115000000

							],

							[

							"삼익",

							240000000,

							147000000,

							186400000

							],

							[

							"세종",

							87000000,

							78000000,

							82500000

							],

							[

							"제일파크맨션",

							179000000,

							170000000,

							174500000

							],

							[

							"중흥",

							160000000,

							160000000,

							160000000

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

						function drawChartComboChartID7344f807c75() {

							var data = gvisDataComboChartID7344f807c75();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID7344f807c75')

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

							callbacks.push(drawChartComboChartID7344f807c75);

						})();

						function displayChartComboChartID7344f807c75() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID7344f807c75"></script>



					<!-- divChart -->



					<div id="ComboChartID7344f807c75"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID7344f807c75.html">ComboChartID7344f807c75</a>
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

			<!-- 농성동 그래프 끝 -->

			<!-- 동천동 그래프 시작 -->
			<div class="graph graph-con6">
				<div class="page-path">서구 > 동천동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID73435562fca() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"동천마을2단지휴먼시아",

							289000000,

							250000000,

							269916666.7

							],

							[

							"동천마을3단지휴먼시아",

							300000000,

							259000000,

							286227272.7

							],

							[

							"우미린",

							595000000,

							360000000,

							482733333.3

							],

							[

							"호반베르디움",

							560000000,

							350000000,

							424851851.9

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

						function drawChartComboChartID73435562fca() {

							var data = gvisDataComboChartID73435562fca();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID73435562fca')

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

							callbacks.push(drawChartComboChartID73435562fca);

						})();

						function displayChartComboChartID73435562fca() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID73435562fca"></script>



					<!-- divChart -->



					<div id="ComboChartID73435562fca"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID73435562fca.html">ComboChartID73435562fca</a>
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

			<!-- 동천동 그래프 끝 -->

			<!-- 마륵동 그래프 시작 -->

			<div class="graph graph-con7">
				<div class="page-path">서구 > 마륵동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID734174a5966() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS상무자이",

							690000000,

							550000000,

							584000000

							],

							[

							"연화",

							180000000,

							180000000,

							180000000

							],

							[

							"희망가",

							235000000,

							235000000,

							235000000

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

						function drawChartComboChartID734174a5966() {

							var data = gvisDataComboChartID734174a5966();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID734174a5966')

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

							callbacks.push(drawChartComboChartID734174a5966);

						})();

						function displayChartComboChartID734174a5966() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID734174a5966"></script>



					<!-- divChart -->



					<div id="ComboChartID734174a5966"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID734174a5966.html">ComboChartID734174a5966</a>
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

			<!-- 마륵동 그래프 끝 -->

			<!-- 매월동 그래프 시작 -->
			<div class="graph graph-con8">
				<div class="page-path">서구 > 매월동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID73463e46d6() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"이지스위트밸리",

							254000000,

							240000000,

							244000000

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

						function drawChartComboChartID73463e46d6() {

							var data = gvisDataComboChartID73463e46d6();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID73463e46d6')

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

							callbacks.push(drawChartComboChartID73463e46d6);

						})();

						function displayChartComboChartID73463e46d6() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID73463e46d6"></script>



					<!-- divChart -->



					<div id="ComboChartID73463e46d6"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID73463e46d6.html">ComboChartID73463e46d6</a>
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
			<!-- 매월동 그래프 끝 -->

			<!-- 쌍촌동 그래프 시작 -->
			<div class="graph graph-con9">
				<div class="page-path">서구 > 쌍촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID73438e23aaf() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광명중흥",

							215000000,

							210000000,

							211666666.7

							],

							[

							"광명하이츠타운",

							280000000,

							147000000,

							195083333.3

							],

							[

							"대건",

							127000000,

							112000000,

							118166666.7

							],

							[

							"대주",

							213000000,

							187000000,

							195666666.7

							],

							[

							"동신",

							92000000,

							92000000,

							92000000

							],

							[

							"명지",

							210000000,

							140000000,

							160090909.1

							],

							[

							"명지2차",

							177000000,

							177000000,

							177000000

							],

							[

							"명지맨션",

							142000000,

							142000000,

							142000000

							],

							[

							"모아제일",

							225000000,

							208000000,

							216400000

							],

							[

							"부건빛고을",

							212000000,

							212000000,

							212000000

							],

							[

							"빛고을파크",

							132000000,

							92000000,

							116055555.6

							],

							[

							"삼우",

							125000000,

							125000000,

							125000000

							],

							[

							"상무지오스테이션",

							310000000,

							270000000,

							296166666.7

							],

							[

							"상무힐스테이트",

							950000000,

							710000000,

							762727272.7

							],

							[

							"성우1차",

							275000000,

							273000000,

							273500000

							],

							[

							"성우행복한집",

							265000000,

							265000000,

							265000000

							],

							[

							"신천파크",

							146000000,

							142000000,

							144000000

							],

							[

							"신천힐탑",

							300000000,

							113000000,

							158000000

							],

							[

							"쌍촌아너팰리스",

							250000000,

							250000000,

							250000000

							],

							[

							"쌍촌현대",

							300000000,

							163000000,

							204541666.7

							],

							[

							"용산그린",

							135000000,

							123000000,

							129000000

							],

							[

							"우미아트빌",

							305000000,

							227000000,

							284750000

							],

							[

							"일신",

							320000000,

							148000000,

							243307692.3

							],

							[

							"중흥S클래스",

							432000000,

							235000000,

							301846153.8

							],

							[

							"진성",

							150000000,

							150000000,

							150000000

							],

							[

							"현대맨션",

							129000000,

							127000000,

							128000000

							],

							[

							"호반리젠시빌3차",

							280000000,

							255000000,

							265666666.7

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

						function drawChartComboChartID73438e23aaf() {

							var data = gvisDataComboChartID73438e23aaf();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID73438e23aaf')

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

							callbacks.push(drawChartComboChartID73438e23aaf);

						})();

						function displayChartComboChartID73438e23aaf() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID73438e23aaf"></script>



					<!-- divChart -->



					<div id="ComboChartID73438e23aaf"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID73438e23aaf.html">ComboChartID73438e23aaf</a>
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

			<!-- 쌍촌동 그래프 끝 -->

			<!-- 양동 그래프 시작 -->
			<div class="graph graph-con10">
				<div class="page-path">서구 > 양동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb18589d26db() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"그린파크",

							110000000,

							102000000,

							106750000

							],

							[

							"금호1차",

							220000000,

							180000000,

							200000000

							],

							[

							"금호2차",

							163000000,

							155000000,

							159000000

							],

							[

							"동산",

							105000000,

							105000000,

							105000000

							],

							[

							"삼익",

							157000000,

							148000000,

							154000000

							],

							[

							"우진",

							155000000,

							148000000,

							151500000

							],

							[

							"초원",

							130000000,

							117000000,

							123333333.3

							],

							[

							"휴먼시아",

							350000000,

							165000000,

							250764705.9

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

						function drawChartComboChartIDb18589d26db() {

							var data = gvisDataComboChartIDb18589d26db();

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

							document.getElementById('ComboChartIDb18589d26db')

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

							callbacks.push(drawChartComboChartIDb18589d26db);

						})();

						function displayChartComboChartIDb18589d26db() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb18589d26db"></script>



					<!-- divChart -->



					<div id="ComboChartIDb18589d26db"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb18589d26db.html">ComboChartIDb18589d26db</a>
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

			<!-- 양동 그래프 끝 -->

			<!-- 유촌동 그래프 시작 -->
			<div class="graph graph-con11">
				<div class="page-path">서구 > 유촌동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb181c9a9ca() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"상무버들마을주공1단지",

							217000000,

							150000000,

							190764705.9

							],

							[

							"상무버들마을주공2단지",

							178000000,

							126000000,

							148652173.9

							],

							[

							"중도다이아빌",

							171000000,

							91000000,

							131000000

							],

							[

							"호반리젠시빌",

							255000000,

							232000000,

							244615384.6

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

						function drawChartComboChartIDb181c9a9ca() {

							var data = gvisDataComboChartIDb181c9a9ca();

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

							document.getElementById('ComboChartIDb181c9a9ca')

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

							callbacks.push(drawChartComboChartIDb181c9a9ca);

						})();

						function displayChartComboChartIDb181c9a9ca() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb181c9a9ca"></script>



					<!-- divChart -->



					<div id="ComboChartIDb181c9a9ca"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb181c9a9ca.html">ComboChartIDb181c9a9ca</a>
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

			<!-- 유촌동 그래프 끝 -->

			<!-- 치평동 그래프 시작 -->
			<div class="graph graph-con12">
				<div class="page-path">서구 > 치평동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb1875214412() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"갤러리303",

							620000000,

							530000000,

							571250000

							],

							[

							"금호대우",

							205000000,

							166000000,

							179827586.2

							],

							[

							"금호쌍용",

							530000000,

							430000000,

							480000000

							],

							[

							"금호타운3차",

							290000000,

							280000000,

							285833333.3

							],

							[

							"금호타운4차",

							268000000,

							235000000,

							260666666.7

							],

							[

							"대주",

							175000000,

							140000000,

							155000000

							],

							[

							"라인대주",

							210000000,

							183000000,

							193833333.3

							],

							[

							"라인동산",

							220000000,

							212000000,

							216000000

							],

							[

							"로잔티움파크",

							455000000,

							320000000,

							362500000

							],

							[

							"상무SK VIEW",

							710000000,

							245000000,

							499000000

							],

							[

							"상무광명메이루즈",

							400000000,

							350000000,

							378800000

							],

							[

							"상무리채1",

							72500000,

							72500000,

							72500000

							],

							[

							"우미1차",

							158000000,

							140000000,

							149666666.7

							],

							[

							"중흥1단지",

							410000000,

							368000000,

							399500000

							],

							[

							"중흥2단지",

							300000000,

							254000000,

							274428571.4

							],

							[

							"한국",

							190000000,

							180000000,

							184444444.4

							],

							[

							"해광한신",

							173000000,

							165000000,

							166444444.4

							],

							[

							"현대",

							350000000,

							310000000,

							334000000

							],

							[

							"호반",

							172000000,

							171000000,

							171250000

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

						function drawChartComboChartIDb1875214412() {

							var data = gvisDataComboChartIDb1875214412();

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

							document.getElementById('ComboChartIDb1875214412')

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

							callbacks.push(drawChartComboChartIDb1875214412);

						})();

						function displayChartComboChartIDb1875214412() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb1875214412"></script>



					<!-- divChart -->



					<div id="ComboChartIDb1875214412"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb1875214412.html">ComboChartIDb1875214412</a>
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

			<!-- 치평동 그래프 끝 -->

			<!-- 풍암동 그래프 시작 -->

			<div class="graph graph-con13">
				<div class="page-path">서구 > 풍암동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb1857ff55fd() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"SK VIEW",

							728000000,

							630000000,

							679000000

							],

							[

							"광명메이루즈",

							610000000,

							450000000,

							506214285.7

							],

							[

							"금호타운1단지",

							410000000,

							365000000,

							380250000

							],

							[

							"금호타운2단지",

							350000000,

							300000000,

							331764705.9

							],

							[

							"남양현대",

							170000000,

							136000000,

							153250000

							],

							[

							"대주파크빌",

							370000000,

							370000000,

							370000000

							],

							[

							"대주파크빌3차",

							253000000,

							220000000,

							246500000

							],

							[

							"대주파크빌4차",

							245000000,

							220000000,

							233333333.3

							],

							[

							"동부센트레빌",

							510000000,

							290000000,

							353000000

							],

							[

							"모아엘가",

							353000000,

							317000000,

							330500000

							],

							[

							"부영2차",

							233000000,

							198000000,

							218500000

							],

							[

							"삼능남양",

							165000000,

							140000000,

							149962963

							],

							[

							"새한센시빌",

							285000000,

							240000000,

							259592592.6

							],

							[

							"우미광장",

							180000000,

							85000000,

							138900000

							],

							[

							"주은모아",

							180000000,

							155000000,

							165888888.9

							],

							[

							"중흥",

							265000000,

							235000000,

							253333333.3

							],

							[

							"한국",

							155000000,

							132000000,

							143888888.9

							],

							[

							"한국아델리움",

							580000000,

							570000000,

							575000000

							],

							[

							"한신",

							150000000,

							82000000,

							121642857.1

							],

							[

							"현대삼환",

							352000000,

							280000000,

							311666666.7

							],

							[

							"호반중흥",

							177000000,

							138000000,

							156588235.3

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

						function drawChartComboChartIDb1857ff55fd() {

							var data = gvisDataComboChartIDb1857ff55fd();

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

							document.getElementById('ComboChartIDb1857ff55fd')

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

							callbacks.push(drawChartComboChartIDb1857ff55fd);

						})();

						function displayChartComboChartIDb1857ff55fd() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb1857ff55fd"></script>



					<!-- divChart -->



					<div id="ComboChartIDb1857ff55fd"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb1857ff55fd.html">ComboChartIDb1857ff55fd</a>
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

			<!-- 풍암동 그래프 끝 -->

			<!-- 화정동 그래프 시작 -->
			<div class="graph graph-con14">
				<div class="page-path">서구 > 화정동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID7341f182aab() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"고운하이플러스",

							350000000,

							260000000,

							325625000

							],

							[

							"광명",

							145000000,

							115000000,

							135000000

							],

							[

							"광주유니버시아드힐스테이트1단지",

							450000000,

							375000000,

							404108108.1

							],

							[

							"광주유니버시아드힐스테이트2단지",

							440000000,

							380000000,

							409000000

							],

							[

							"광주유니버시아드힐스테이트3단지",

							625000000,

							289000000,

							422787234

							],

							[

							"금호1차",

							350000000,

							314000000,

							321166666.7

							],

							[

							"금호2차",

							192000000,

							131000000,

							152666666.7

							],

							[

							"금호타운3차",

							310000000,

							139000000,

							194909090.9

							],

							[

							"금호타운4차",

							190000000,

							190000000,

							190000000

							],

							[

							"금호하이빌",

							95000000,

							63000000,

							73666666.67

							],

							[

							"남화",

							220000000,

							220000000,

							220000000

							],

							[

							"대륙",

							87000000,

							87000000,

							87000000

							],

							[

							"대림e편한세상",

							570000000,

							430000000,

							515000000

							],

							[

							"대주",

							210000000,

							173000000,

							198600000

							],

							[

							"대주피오레",

							520000000,

							415000000,

							472272727.3

							],

							[

							"라인동산",

							191000000,

							121000000,

							165272727.3

							],

							[

							"모아",

							209000000,

							175000000,

							194750000

							],

							[

							"모아타워",

							300000000,

							253000000,

							271500000

							],

							[

							"무등파크",

							160000000,

							143000000,

							154600000

							],

							[

							"삼익",

							160000000,

							120000000,

							150400000

							],

							[

							"신동아",

							200000000,

							170000000,

							187739130.4

							],

							[

							"염주맨션",

							109000000,

							109000000,

							109000000

							],

							[

							"염주주공",

							400000000,

							230000000,

							261312500

							],

							[

							"염주현대",

							142000000,

							122000000,

							134166666.7

							],

							[

							"영무예다음1차",

							135000000,

							135000000,

							135000000

							],

							[

							"영무예다음2차",

							465000000,

							465000000,

							465000000

							],

							[

							"영화",

							110000000,

							98000000,

							104000000

							],

							[

							"우성1차",

							165000000,

							140000000,

							144285714.3

							],

							[

							"우성2차",

							122000000,

							100000000,

							110000000

							],

							[

							"중흥",

							185000000,

							183000000,

							183666666.7

							],

							[

							"중흥파크",

							175000000,

							155000000,

							162000000

							],

							[

							"태영",

							147000000,

							120000000,

							127285714.3

							],

							[

							"한양",

							258000000,

							118000000,

							200916666.7

							],

							[

							"해광샹그릴라센트럴337",

							295000000,

							180000000,

							218750000

							],

							[

							"현대",

							180000000,

							170000000,

							175000000

							],

							[

							"호반",

							130000000,

							129000000,

							129500000

							],

							[

							"화정우미",

							210000000,

							195000000,

							202500000

							],

							[

							"흥국",

							80000000,

							79000000,

							79500000

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

						function drawChartComboChartID7341f182aab() {

							var data = gvisDataComboChartID7341f182aab();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["legend"] = "top";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartID7341f182aab')

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

							callbacks.push(drawChartComboChartID7341f182aab);

						})();

						function displayChartComboChartID7341f182aab() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID7341f182aab"></script>



					<!-- divChart -->



					<div id="ComboChartID7341f182aab"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID7341f182aab.html">ComboChartID7341f182aab</a>
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

			<!-- 화정동 그래프 끝 -->
			<div id="board"></div>


		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>