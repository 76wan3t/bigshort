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
				url : "bukgudetail2.bigshort",
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
			var dongname = $(".dongname1").val();
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
	href="/BigShortWeb/css/north.css?var=2">
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
						<tr id="north1">
							<td id="td1"><a href="#">각화동<input type="hidden"
									value="각화동" class="dongname1"></a></td>
							<td id="td2"><a href="#">동림동<input type="hidden"
									value="동림동" class="dongname2"></a></td>
							<td id="td3"><a href="#">두암동<input type="hidden"
									value="두암동" class="dongname3"></a></td>
							<td id="td4"><a href="#">매곡동<input type="hidden"
									value="매곡동" class="dongname4"></a></td>
							<td id="td5"><a href="#">문흥동<input type="hidden"
									value="문흥동" class="dongname5"></a></td>
						</tr>
						<tr id="north2">
							<td id="td6"><a href="#">본촌동<input type="hidden"
									value="본촌동" class="dongname6"></a></td>
							<td id="td7"><a href="#">삼각동<input type="hidden"
									value="삼각동" class="dongname7"></a></td>
							<td id="td8"><a href="#">신안동<input type="hidden"
									value="신안동" class="dongname8"></a></td>
							<td id="td9"><a href="#">신용동<input type="hidden"
									value="신용동" class="dongname9"></a></td>
							<td id="td10"><a href="#">양산동<input type="hidden"
									value="양산동" class="dongname10"></a></td>
						</tr>
						<tr id="north3">
							<td id="td11"><a href="#">연제동<input type="hidden"
									value="연제동" class="dongname11"></a></td>
							<td id="td12"><a href="#">오치동<input type="hidden"
									value="오치동" class="dongname12"></a></td>
							<td id="td13"><a href="#">용두동<input type="hidden"
									value="용두동" class="dongname13"></a></td>
							<td id="td14"><a href="#">용봉동<input type="hidden"
									value="용봉동" class="dongname14"></a></td>
							<td id="td15"><a href="#">우산동<input type="hidden"
									value="우산동" class="dongname15"></a></td>
						</tr>
						<tr id="north4">
							<td id="td16"><a href="#">운암동<input type="hidden"
									value="운암동" class="dongname16"></a></td>
							<td id="td17"><a href="#">일곡동<input type="hidden"
									value="일곡동" class="dongname17"></a></td>
							<td id="td18"><a href="#">임동<input type="hidden"
									value="임동" class="dongname18"></a></td>
					</thead>
				</table>
			</div>

			<!-- 북구 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 북구</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40224944cc() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"각화동",

							338000000,

							92000000,

							182941176.5

							],

							[

							"동림동",

							230000000,

							83000000,

							143600000

							],

							[

							"두암동",

							650000000,

							63000000,

							157330449.8

							],

							[

							"매곡동",

							355000000,

							78000000,

							185408227.8

							],

							[

							"문흥동",

							300000000,

							56000000,

							147044705.9

							],

							[

							"본촌동",

							398000000,

							215000000,

							322186046.5

							],

							[

							"삼각동",

							335000000,

							47000000,

							174184615.4

							],

							[

							"신안동",

							245000000,

							95000000,

							151421052.6

							],

							[

							"신용동",

							520000000,

							98000000,

							276141361.3

							],

							[

							"양산동",

							450000000,

							74000000,

							183785714.3

							],

							[

							"연제동",

							335000000,

							79000000,

							201247256.1

							],

							[

							"오치동",

							418000000,

							43000000,

							142250000

							],

							[

							"용두동",

							480000000,

							109000000,

							234058695.7

							],

							[

							"용봉동",

							465000000,

							77000000,

							213021447.7

							],

							[

							"우산동",

							263000000,

							90000000,

							200454545.5

							],

							[

							"운암동",

							590000000,

							83000000,

							227170227.3

							],

							[

							"일곡동",

							465000000,

							85000000,

							185236014

							],

							[

							"임동",

							340000000,

							43000000,

							218070370.4

							],

							[

							"중흥동",

							300000000,

							73000000,

							213500000

							],

							[

							"풍향동",

							400000000,

							125000000,

							326600000

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

						function drawChartComboChartIDf40224944cc() {

							var data = gvisDataComboChartIDf40224944cc();

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

							document.getElementById('ComboChartIDf40224944cc')

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

							callbacks.push(drawChartComboChartIDf40224944cc);

						})();

						function displayChartComboChartIDf40224944cc() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40224944cc"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40224944cc"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40224944cc.html">ComboChartIDf40224944cc</a>
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
			<!-- 북구 전체 그래프 div 끝 -->

			<!-- 각화동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">북구 > 각화동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID152045fb481c() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"골드클래스",

							338000000,

							325000000,

							330500000

							],

							[

							"글로벌",

							190000000,

							138000000,

							166000000

							],

							[

							"금호",

							230000000,

							135000000,

							169307692.3

							],

							[

							"무등파크",

							157000000,

							92000000,

							124538461.5

							],

							[

							"해광파크",

							140000000,

							134000000,

							136333333.3

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

						function drawChartComboChartID152045fb481c() {

							var data = gvisDataComboChartID152045fb481c();

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

							document.getElementById('ComboChartID152045fb481c')

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

							callbacks.push(drawChartComboChartID152045fb481c);

						})();

						function displayChartComboChartID152045fb481c() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152045fb481c"></script>



					<!-- divChart -->



					<div id="ComboChartID152045fb481c"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152045fb481c.html">ComboChartID152045fb481c</a>
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

						function gvisDataComboChartID152049b058e9() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"삼라마이다스빌",

							220000000,

							198000000,

							207100000

							],

							[

							"삼익",

							230000000,

							90000000,

							157478260.9

							],

							[

							"삼호가든",

							225000000,

							140000000,

							180400000

							],

							[

							"우미",

							97000000,

							95000000,

							95666666.67

							],

							[

							"푸른주공3단지",

							150000000,

							120000000,

							134866666.7

							],

							[

							"푸른주공4단지",

							167000000,

							151000000,

							157000000

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

						function drawChartComboChartID152049b058e9() {

							var data = gvisDataComboChartID152049b058e9();

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

							document.getElementById('ComboChartID152049b058e9')

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

							callbacks.push(drawChartComboChartID152049b058e9);

						})();

						function displayChartComboChartID152049b058e9() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152049b058e9"></script>



					<!-- divChart -->



					<div id="ComboChartID152049b058e9"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152049b058e9.html">ComboChartID152049b058e9</a>
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

						function gvisDataComboChartID1520a694d14() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광신",

							135000000,

							119000000,

							127000000

							],

							[

							"광일",

							127000000,

							97000000,

							112000000

							],

							[

							"그린파크",

							175000000,

							175000000,

							175000000

							],

							[

							"기산로얄타운",

							270000000,

							180000000,

							210000000

							],

							[

							"대주빌라",

							320000000,

							220000000,

							261666666.7

							],

							[

							"동산훼밀리",

							95000000,

							85000000,

							90000000

							],

							[

							"두암",

							73000000,

							73000000,

							73000000

							],

							[

							"두암주공3단지",

							95000000,

							63000000,

							72431818.18

							],

							[

							"라인동산",

							185000000,

							185000000,

							185000000

							],

							[

							"모아미래도",

							245000000,

							225000000,

							230850000

							],

							[

							"목화",

							73000000,

							73000000,

							73000000

							],

							[

							"무등산 이스토리",

							650000000,

							428000000,

							525900000

							],

							[

							"무등파크1차",

							150000000,

							140000000,

							143750000

							],

							[

							"무등파크2차",

							165000000,

							127000000,

							142533333.3

							],

							[

							"무등파크3차",

							197000000,

							167000000,

							178000000

							],

							[

							"문화",

							85000000,

							67000000,

							75500000

							],

							[

							"미라보4차",

							180000000,

							88000000,

							113923076.9

							],

							[

							"백조",

							81000000,

							81000000,

							81000000

							],

							[

							"부영",

							100000000,

							86000000,

							94000000

							],

							[

							"산호",

							76000000,

							76000000,

							76000000

							],

							[

							"삼호",

							72000000,

							72000000,

							72000000

							],

							[

							"신흥",

							93000000,

							83000000,

							89666666.67

							],

							[

							"양서",

							105000000,

							99000000,

							102000000

							],

							[

							"예향",

							110000000,

							95000000,

							101333333.3

							],

							[

							"율곡타운",

							115000000,

							66000000,

							82696969.7

							],

							[

							"일흥",

							72000000,

							72000000,

							72000000

							],

							[

							"중흥S클래스",

							400000000,

							390000000,

							395000000

							],

							[

							"현대",

							310000000,

							132000000,

							187500000

							],

							[

							"현대2차",

							340000000,

							230000000,

							285000000

							],

							[

							"화성",

							93000000,

							93000000,

							93000000

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

						function drawChartComboChartID1520a694d14() {

							var data = gvisDataComboChartID1520a694d14();

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

							document.getElementById('ComboChartID1520a694d14')

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

							callbacks.push(drawChartComboChartID1520a694d14);

						})();

						function displayChartComboChartID1520a694d14() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID1520a694d14"></script>



					<!-- divChart -->



					<div id="ComboChartID1520a694d14"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID1520a694d14.html">ComboChartID1520a694d14</a>
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

						function gvisDataComboChartID15203b6f61d9() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							185000000,

							139000000,

							155769230.8

							],

							[

							"대광로제비앙",

							277000000,

							277000000,

							277000000

							],

							[

							"대성베르힐",

							350000000,

							245000000,

							298769230.8

							],

							[

							"대주피오레",

							355000000,

							235000000,

							263647058.8

							],

							[

							"대화",

							127000000,

							82000000,

							100500000

							],

							[

							"부림1차",

							120000000,

							92000000,

							107571428.6

							],

							[

							"부림2차",

							115000000,

							80000000,

							106300000

							],

							[

							"삼성",

							187000000,

							112000000,

							160636363.6

							],

							[

							"삼익",

							195000000,

							185000000,

							193750000

							],

							[

							"서강",

							116000000,

							89000000,

							100384615.4

							],

							[

							"서광인텔파크",

							320000000,

							205000000,

							280066666.7

							],

							[

							"아남",

							150000000,

							143000000,

							147571428.6

							],

							[

							"호반1차",

							110000000,

							70000000,

							85500000

							],

							[

							"호반2차",

							118000000,

							107000000,

							111250000

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

						function drawChartComboChartID15203b6f61d9() {

							var data = gvisDataComboChartID15203b6f61d9();

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

							document.getElementById('ComboChartID15203b6f61d9')

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

							callbacks.push(drawChartComboChartID15203b6f61d9);

						})();

						function displayChartComboChartID15203b6f61d9() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15203b6f61d9"></script>



					<!-- divChart -->



					<div id="ComboChartID15203b6f61d9"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15203b6f61d9.html">ComboChartID15203b6f61d9</a>
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

						function gvisDataComboChartID15207f72469() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"공간",

							125000000,

							125000000,

							125000000

							],

							[

							"광명",

							137000000,

							116000000,

							124083333.3

							],

							[

							"금형트리뷰",

							230000000,

							210000000,

							220000000

							],

							[

							"금호",

							295000000,

							200000000,

							240840000

							],

							[

							"대주1차",

							57000000,

							57000000,

							57000000

							],

							[

							"대주2차",

							157000000,

							80000000,

							113000000

							],

							[

							"대주3차",

							108000000,

							90000000,

							98818181.82

							],

							[

							"라인1차",

							147000000,

							120000000,

							134882352.9

							],

							[

							"라인3차",

							138000000,

							113000000,

							121500000

							],

							[

							"라인동산2차",

							285000000,

							170000000,

							214588235.3

							],

							[

							"상록",

							137000000,

							117000000,

							126708333.3

							],

							[

							"우미1차",

							110000000,

							102000000,

							106428571.4

							],

							[

							"우미호반",

							168000000,

							165000000,

							165750000

							],

							[

							"우산주공2차",

							134000000,

							90000000,

							117700000

							],

							[

							"우성",

							183000000,

							150000000,

							160812500

							],

							[

							"일신",

							140000000,

							117000000,

							124040000

							],

							[

							"제일",

							105000000,

							95000000,

							97750000

							],

							[

							"중흥1차",

							170000000,

							145000000,

							164444444.4

							],

							[

							"중흥2차",

							140000000,

							113000000,

							127857142.9

							],

							[

							"중흥3차",

							142000000,

							113000000,

							128695652.2

							],

							[

							"해광한신",

							173000000,

							159000000,

							166222222.2

							],

							[

							"현대",

							310000000,

							190000000,

							240703703.7

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

						function drawChartComboChartID15207f72469() {

							var data = gvisDataComboChartID15207f72469();

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

							document.getElementById('ComboChartID15207f72469')

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

							callbacks.push(drawChartComboChartID15207f72469);

						})();

						function displayChartComboChartID15207f72469() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15207f72469"></script>



					<!-- divChart -->



					<div id="ComboChartID15207f72469"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15207f72469.html">ComboChartID15207f72469</a>
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

						function gvisDataComboChartID15205f0342cc() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"부영사랑으로",

							227000000,

							218000000,

							220222222.2

							],

							[

							"이안광주첨단",

							281000000,

							250000000,

							265500000

							],

							[

							"현진에버빌",

							500000000,

							267000000,

							376529411.8

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

						function drawChartComboChartID15205f0342cc() {

							var data = gvisDataComboChartID15205f0342cc();

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

							document.getElementById('ComboChartID15205f0342cc')

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

							callbacks.push(drawChartComboChartID15205f0342cc);

						})();

						function displayChartComboChartID15205f0342cc() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15205f0342cc"></script>



					<!-- divChart -->



					<div id="ComboChartID15205f0342cc"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15205f0342cc.html">ComboChartID15205f0342cc</a>
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

						function gvisDataComboChartID15203876caa() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"그린타운",

							230000000,

							128000000,

							176000000

							],

							[

							"극동마이다스빌",

							185000000,

							155000000,

							170000000

							],

							[

							"드림네스트",

							256000000,

							256000000,

							256000000

							],

							[

							"모아호반",

							130000000,

							104000000,

							114692307.7

							],

							[

							"삼익",

							155000000,

							140000000,

							146857142.9

							],

							[

							"서라",

							130000000,

							105000000,

							119153846.2

							],

							[

							"우미타운",

							195000000,

							115000000,

							131142857.1

							],

							[

							"일곡엘리체프라임",

							340000000,

							300000000,

							313888888.9

							],

							[

							"혁신타운",

							47000000,

							47000000,

							47000000

							],

							[

							"호반",

							90000000,

							73000000,

							83250000

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

						function drawChartComboChartID15203876caa() {

							var data = gvisDataComboChartID15203876caa();

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

							document.getElementById('ComboChartID15203876caa')

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

							callbacks.push(drawChartComboChartID15203876caa);

						})();

						function displayChartComboChartID15203876caa() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15203876caa"></script>



					<!-- divChart -->



					<div id="ComboChartID15203876caa"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15203876caa.html">ComboChartID15203876caa</a>
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

						function gvisDataComboChartID15202a88b68() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"남양파크",

							115000000,

							103000000,

							110000000

							],

							[

							"부강아트빌",

							37500000,

							37500000,

							37500000

							],

							[

							"삼익",

							137000000,

							120000000,

							128500000

							],

							[

							"중도다이아빌",

							169000000,

							142000000,

							157666666.7

							],

							[

							"중흥파크",

							95000000,

							95000000,

							95000000

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

						function drawChartComboChartID15202a88b68() {

							var data = gvisDataComboChartID15202a88b68();

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

							document.getElementById('ComboChartID15202a88b68')

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

							callbacks.push(drawChartComboChartID15202a88b68);

						})();

						function displayChartComboChartID15202a88b68() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15202a88b68"></script>



					<!-- divChart -->



					<div id="ComboChartID15202a88b68"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15202a88b68.html">ComboChartID15202a88b68</a>
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

						function gvisDataComboChartID15207f47144b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS첨단자이1차",

							460000000,

							295000000,

							368863636.4

							],

							[

							"GS첨단자이2차",

							345000000,

							297000000,

							318333333.3

							],

							[

							"용두주공",

							143000000,

							115000000,

							129500000

							],

							[

							"제일풍경채",

							385000000,

							275000000,

							325857142.9

							],

							[

							"중흥S클래스",

							520000000,

							505000000,

							512500000

							],

							[

							"한양수자인리버뷰",

							355000000,

							225000000,

							283750000

							],

							[

							"호반베르디움1단지",

							415000000,

							338000000,

							363666666.7

							],

							[

							"호반베르디움2단지",

							450000000,

							348000000,

							396466666.7

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

						function drawChartComboChartID15207f47144b() {

							var data = gvisDataComboChartID15207f47144b();

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

							document.getElementById('ComboChartID15207f47144b')

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

							callbacks.push(drawChartComboChartID15207f47144b);

						})();

						function displayChartComboChartID15207f47144b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15207f47144b"></script>



					<!-- divChart -->



					<div id="ComboChartID15207f47144b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15207f47144b.html">ComboChartID15207f47144b</a>
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

						function gvisDataComboChartID152065bbc74() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"GS자이1차",

							395000000,

							256000000,

							300375000

							],

							[

							"GS자이2차",

							380000000,

							280000000,

							333437500

							],

							[

							"금광",

							170000000,

							151000000,

							156142857.1

							],

							[

							"동남3차",

							99000000,

							78000000,

							89750000

							],

							[

							"새봄",

							115000000,

							100000000,

							106750000

							],

							[

							"송지트리뷰",

							245000000,

							208000000,

							216666666.7

							],

							[

							"영무예다음",

							243000000,

							215000000,

							228888888.9

							],

							[

							"우미",

							170000000,

							83000000,

							126583333.3

							],

							[

							"일신1차",

							140000000,

							125000000,

							132500000

							],

							[

							"일신2차",

							135000000,

							115000000,

							128071428.6

							],

							[

							"한국",

							167000000,

							115000000,

							133384615.4

							],

							[

							"호반",

							136000000,

							77500000,

							91361111.11

							],

							[

							"호반리젠시빌",

							193000000,

							80000000,

							172687500

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

						function drawChartComboChartID152065bbc74() {

							var data = gvisDataComboChartID152065bbc74();

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

							document.getElementById('ComboChartID152065bbc74')

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

							callbacks.push(drawChartComboChartID152065bbc74);

						})();

						function displayChartComboChartID152065bbc74() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152065bbc74"></script>



					<!-- divChart -->



					<div id="ComboChartID152065bbc74"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152065bbc74.html">ComboChartID152065bbc74</a>
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

						function gvisDataComboChartID152055e455f0() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광명1차",

							110000000,

							93000000,

							102400000

							],

							[

							"광명2차",

							125000000,

							97000000,

							108789473.7

							],

							[

							"대광로제비앙",

							335000000,

							265000000,

							294500000

							],

							[

							"대주피오레1차",

							235000000,

							211000000,

							225600000

							],

							[

							"대주피오레2차",

							310000000,

							237000000,

							252700000

							],

							[

							"새한",

							115000000,

							87000000,

							96857142.86

							],

							[

							"연제골드클래스",

							269550000,

							236500000,

							248516666.7

							],

							[

							"한국아델리움",

							177000000,

							160000000,

							170000000

							],

							[

							"현대",

							168000000,

							139000000,

							157281250

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

						function drawChartComboChartID152055e455f0() {

							var data = gvisDataComboChartID152055e455f0();

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

							document.getElementById('ComboChartID152055e455f0')

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

							callbacks.push(drawChartComboChartID152055e455f0);

						})();

						function displayChartComboChartID152055e455f0() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152055e455f0"></script>



					<!-- divChart -->



					<div id="ComboChartID152055e455f0"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152055e455f0.html">ComboChartID152055e455f0</a>
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

						function gvisDataComboChartID15203ec5563d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"로얄타운",

							115000000,

							85000000,

							102166666.7

							],

							[

							"삼익1차",

							135000000,

							130000000,

							132400000

							],

							[

							"삼익2차",

							150000000,

							149000000,

							149333333.3

							],

							[

							"오치",

							62000000,

							62000000,

							62000000

							],

							[

							"오치주공2차",

							101000000,

							70000000,

							90888888.89

							],

							[

							"우미",

							158000000,

							150000000,

							153111111.1

							],

							[

							"우성",

							179500000,

							144000000,

							154843750

							],

							[

							"천오",

							79000000,

							79000000,

							79000000

							],

							[

							"혁신2차",

							108000000,

							95000000,

							97714285.71

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

						function drawChartComboChartID15203ec5563d() {

							var data = gvisDataComboChartID15203ec5563d();

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

							document.getElementById('ComboChartID15203ec5563d')

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

							callbacks.push(drawChartComboChartID15203ec5563d);

						})();

						function displayChartComboChartID15203ec5563d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15203ec5563d"></script>



					<!-- divChart -->



					<div id="ComboChartID15203ec5563d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15203ec5563d.html">ComboChartID15203ec5563d</a>
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

						function gvisDataComboChartID152015fb49e9() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"진아리채",

							275000000,

							259000000,

							267333333.3

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

						function drawChartComboChartID152015fb49e9() {

							var data = gvisDataComboChartID152015fb49e9();

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

							document.getElementById('ComboChartID152015fb49e9')

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

							callbacks.push(drawChartComboChartID152015fb49e9);

						})();

						function displayChartComboChartID152015fb49e9() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152015fb49e9"></script>



					<!-- divChart -->



					<div id="ComboChartID152015fb49e9"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152015fb49e9.html">ComboChartID152015fb49e9</a>
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

						function gvisDataComboChartID152021547638() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"고운",

							78000000,

							78000000,

							78000000

							],

							[

							"금호",

							170000000,

							150000000,

							162400000

							],

							[

							"금호어울림",

							350000000,

							340000000,

							343142857.1

							],

							[

							"꿈에그린",

							285000000,

							215000000,

							259583333.3

							],

							[

							"대주파크빌1차",

							230000000,

							200000000,

							211571428.6

							],

							[

							"대주파크빌2차",

							220000000,

							205000000,

							212727272.7

							],

							[

							"대주파크빌3차",

							259000000,

							243000000,

							249150000

							],

							[

							"대화",

							127000000,

							117000000,

							123833333.3

							],

							[

							"동성노블리3차",

							110000000,

							110000000,

							110000000

							],

							[

							"명보",

							123000000,

							109000000,

							117200000

							],

							[

							"모아미래도",

							220000000,

							156000000,

							195200000

							],

							[

							"삼성",

							238000000,

							215000000,

							226000000

							],

							[

							"삼원주상복합",

							130000000,

							110000000,

							116666666.7

							],

							[

							"성산",

							120000000,

							107000000,

							113500000

							],

							[

							"신동아",

							195000000,

							147000000,

							176500000

							],

							[

							"쌍용예가",

							400000000,

							385000000,

							392400000

							],

							[

							"아이파크",

							450000000,

							430000000,

							440000000

							],

							[

							"엘리체",

							310000000,

							250000000,

							279666666.7

							],

							[

							"용봉2휴먼시아",

							252000000,

							220000000,

							235636363.6

							],

							[

							"우미",

							182000000,

							182000000,

							182000000

							],

							[

							"우영",

							105000000,

							77000000,

							95166666.67

							],

							[

							"유창파크4차",

							138000000,

							102000000,

							117571428.6

							],

							[

							"유창하이리빙1차",

							155000000,

							85000000,

							131214285.7

							],

							[

							"유창하이리빙2차",

							149000000,

							101000000,

							116222222.2

							],

							[

							"중흥",

							186000000,

							127000000,

							149400000

							],

							[

							"중흥S클래스",

							255000000,

							242000000,

							250375000

							],

							[

							"투인",

							155000000,

							102000000,

							137333333.3

							],

							[

							"한신",

							157000000,

							120000000,

							135571428.6

							],

							[

							"현대1차",

							151000000,

							151000000,

							151000000

							],

							[

							"현대3차",

							290000000,

							185000000,

							212916666.7

							],

							[

							"호반",

							165000000,

							150000000,

							156111111.1

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

						function drawChartComboChartID152021547638() {

							var data = gvisDataComboChartID152021547638();

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

							document.getElementById('ComboChartID152021547638')

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

							callbacks.push(drawChartComboChartID152021547638);

						})();

						function displayChartComboChartID152021547638() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152021547638"></script>



					<!-- divChart -->



					<div id="ComboChartID152021547638"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152021547638.html">ComboChartID152021547638</a>
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

						function gvisDataComboChartID152031d130f8() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"무진",

							105000000,

							96000000,

							100500000

							],

							[

							"우미프라자",

							127000000,

							103000000,

							111666666.7

							],

							[

							"현대",

							263000000,

							213000000,

							228769230.8

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

						function drawChartComboChartID152031d130f8() {

							var data = gvisDataComboChartID152031d130f8();

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

							document.getElementById('ComboChartID152031d130f8')

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

							callbacks.push(drawChartComboChartID152031d130f8);

						})();

						function displayChartComboChartID152031d130f8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152031d130f8"></script>



					<!-- divChart -->



					<div id="ComboChartID152031d130f8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152031d130f8.html">ComboChartID152031d130f8</a>
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

						function gvisDataComboChartID15203f037e8() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호",

							250000000,

							152000000,

							205909090.9

							],

							[

							"나산",

							435000000,

							195000000,

							280857142.9

							],

							[

							"남양휴튼",

							610000000,

							305000000,

							404000000

							],

							[

							"대주",

							262000000,

							140000000,

							171523809.5

							],

							[

							"동일",

							160000000,

							143000000,

							150200000

							],

							[

							"롯데캐슬1단지",

							325000000,

							260000000,

							299000000

							],

							[

							"롯데캐슬2단지",

							310000000,

							265000000,

							300000000

							],

							[

							"롯데캐슬3단지",

							272000000,

							272000000,

							272000000

							],

							[

							"미라보2차",

							166000000,

							165900000,

							165950000

							],

							[

							"미라보3차",

							270000000,

							159000000,

							205411764.7

							],

							[

							"벽산블루밍메가시티1단지",

							270000000,

							270000000,

							270000000

							],

							[

							"벽산블루밍메가시티2단지",

							480000000,

							360000000,

							418823529.4

							],

							[

							"벽산블루밍메가시티3단지",

							315000000,

							220000000,

							257277777.8

							],

							[

							"블루시안1차",

							225000000,

							210000000,

							216000000

							],

							[

							"삼호",

							175000000,

							165000000,

							167166666.7

							],

							[

							"신성포레힐",

							420000000,

							253000000,

							319750000

							],

							[

							"우미1차",

							118000000,

							95000000,

							107375000

							],

							[

							"우미3차",

							230000000,

							225000000,

							227600000

							],

							[

							"우성",

							178000000,

							144000000,

							164263157.9

							],

							[

							"운암산아이파크",

							590000000,

							580000000,

							582000000

							],

							[

							"운암주공3단지",

							249000000,

							175000000,

							203750000

							],

							[

							"운암프라자",

							164000000,

							83000000,

							137142857.1

							],

							[

							"유탑하늘세움",

							225000000,

							207000000,

							211666666.7

							],

							[

							"일신2차",

							116000000,

							106000000,

							110800000

							],

							[

							"중흥파크1차",

							167000000,

							140000000,

							155666666.7

							],

							[

							"중흥파크2차",

							155000000,

							145000000,

							148500000

							],

							[

							"코아루렉시안",

							327000000,

							253000000,

							279454545.5

							],

							[

							"트라움힐",

							205000000,

							205000000,

							205000000

							],

							[

							"한국",

							300000000,

							168000000,

							194111111.1

							],

							[

							"한영",

							67000000,

							65000000,

							66000000

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

						function drawChartComboChartID15203f037e8() {

							var data = gvisDataComboChartID15203f037e8();

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

							document.getElementById('ComboChartID15203f037e8')

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

							callbacks.push(drawChartComboChartID15203f037e8);

						})();

						function displayChartComboChartID15203f037e8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15203f037e8"></script>



					<!-- divChart -->



					<div id="ComboChartID15203f037e8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15203f037e8.html">ComboChartID15203f037e8</a>
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

						function gvisDataComboChartID152057435c5b() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호타운",

							260000000,

							235000000,

							242545454.5

							],

							[

							"대림1차",

							171000000,

							120000000,

							152307692.3

							],

							[

							"대림2차",

							232000000,

							180000000,

							205280000

							],

							[

							"대우",

							156000000,

							105000000,

							130000000

							],

							[

							"동아",

							345000000,

							252000000,

							304727272.7

							],

							[

							"롯데",

							460000000,

							305000000,

							358187500

							],

							[

							"벽산",

							230000000,

							175000000,

							202218750

							],

							[

							"삼호",

							335000000,

							285000000,

							311166666.7

							],

							[

							"쌍용",

							375000000,

							270000000,

							324750000

							],

							[

							"진로",

							167000000,

							145000000,

							155117647.1

							],

							[

							"청솔1차",

							110000000,

							93000000,

							101800000

							],

							[

							"청솔2차",

							113000000,

							87000000,

							96333333.33

							],

							[

							"청솔4차",

							110000000,

							93000000,

							103285714.3

							],

							[

							"한국",

							155000000,

							132000000,

							150900000

							],

							[

							"한일",

							162000000,

							141000000,

							152720000

							],

							[

							"현대1차",

							150000000,

							135000000,

							142400000

							],

							[

							"현대2차",

							168000000,

							142000000,

							151875000

							],

							[

							"현대3차",

							225000000,

							210000000,

							219444444.4

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

						function drawChartComboChartID152057435c5b() {

							var data = gvisDataComboChartID152057435c5b();

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

							document.getElementById('ComboChartID152057435c5b')

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

							callbacks.push(drawChartComboChartID152057435c5b);

						})();

						function displayChartComboChartID152057435c5b() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID152057435c5b"></script>



					<!-- divChart -->



					<div id="ComboChartID152057435c5b"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID152057435c5b.html">ComboChartID152057435c5b</a>
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

						function gvisDataComboChartID15201f8d6d02() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"국제미소래2차",

							171600000,

							171600000,

							171600000

							],

							[

							"임동주공",

							226000000,

							155000000,

							186375000

							],

							[

							"토림에디스",

							220000000,

							220000000,

							220000000

							],

							[

							"평화",

							135000000,

							77000000,

							95000000

							],

							[

							"한국아델리움1차",

							240000000,

							237000000,

							238500000

							],

							[

							"한국아델리움2차",

							340000000,

							245000000,

							278909090.9

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

						function drawChartComboChartID15201f8d6d02() {

							var data = gvisDataComboChartID15201f8d6d02();

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

							document.getElementById('ComboChartID15201f8d6d02')

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

							callbacks.push(drawChartComboChartID15201f8d6d02);

						})();

						function displayChartComboChartID15201f8d6d02() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID15201f8d6d02"></script>



					<!-- divChart -->



					<div id="ComboChartID15201f8d6d02"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID15201f8d6d02.html">ComboChartID15201f8d6d02</a>
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
			<div id="board"></div>


		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>