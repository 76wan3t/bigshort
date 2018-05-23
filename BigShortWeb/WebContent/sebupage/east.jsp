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
				url : "donggudetail2.bigshort",
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
	href="/BigShortWeb/css/east.css?var=1">

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
						<tr id="east1">
							<td id="td1"><a href="#">계림동<input type="hidden"
									value="계림동" class="dongname1"></a></td>
							<td id="td2" class="toomuch"><a href="#">금남로2가<input
									type="hidden" value="금남로2가" class="dongname2"></a></td>
							<td id="td3" class="toomuch"><a href="#">금남로3가<input
									type="hidden" value="금남로3가" class="dongname3"></a></td>
							<td id="td4"><a href="#">동명동<input type="hidden"
									value="동명동" class="dongname4"></a></td>
							<td id="td5"><a href="#">산수동<input type="hidden"
									value="산수동" class="dongname5"></a></td>
						</tr>
						<tr id="east2">
							<td id="td6"><a href="#">소태동<input type="hidden"
									value="소태동" class="dongname6"></a></td>
							<td id="td7"><a href="#">용산동<input type="hidden"
									value="용산동" class="dongname7"></a></td>
							<td id="td8"><a href="#">운림동<input type="hidden"
									value="운림동" class="dongname8"></a></td>
							<td id="td9"><a href="#">월남동<input type="hidden"
									value="월남동" class="dongname9"></a></td>
							<td id="td10"><a href="#">지산동<input type="hidden"
									value="지산동" class="dongname10"></a></td>
						</tr>
						<tr id="east3">
							<td id="td11" class="toomuch"><a href="#">충장로4가<input
									type="hidden" value="충장로4가" class="dongname11"></a></td>
							<td id="td12" class="hakdong"><a href="#">학동<input
									type="hidden" value="학동" class="dongname12"></a></td>
					</thead>
				</table>
			</div>

			<!-- 동구 전체 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 동구</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40224613d8() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"계림동",

							435000000,

							89000000,

							258900000

							],

							[

							"금남로2가",

							250000000,

							230000000,

							236666666.7

							],

							[

							"금남로3가",

							129000000,

							115000000,

							122000000

							],

							[

							"동명동",

							235000000,

							235000000,

							235000000

							],

							[

							"산수동",

							330000000,

							60000000,

							184500000

							],

							[

							"소태동",

							550000000,

							67000000,

							196807692.3

							],

							[

							"수기동",

							85000000,

							82000000,

							83500000

							],

							[

							"용산동",

							255000000,

							78000000,

							140600000

							],

							[

							"운림동",

							455000000,

							130000000,

							238178571.4

							],

							[

							"월남동",

							300000000,

							207000000,

							253411764.7

							],

							[

							"지산동",

							300000000,

							72000000,

							205125000

							],

							[

							"충장로4가",

							225000000,

							100000000,

							181500000

							],

							[

							"학동",

							750000000,

							105000000,

							269622807

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

						function drawChartComboChartIDf40224613d8() {

							var data = gvisDataComboChartIDf40224613d8();

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

							document.getElementById('ComboChartIDf40224613d8')

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

							callbacks.push(drawChartComboChartIDf40224613d8);

						})();

						function displayChartComboChartIDf40224613d8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40224613d8"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40224613d8"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40224613d8.html">ComboChartIDf40224613d8</a>
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
			<!-- 동구 전체 그래프 div 끝 -->

			<!-- 계림동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">동구 > 계림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4040e07843() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"계림2차두산위브",

							333000000,

							261000000,

							297000000

							],

							[

							"금호",

							360000000,

							193000000,

							248166666.7

							],

							[

							"금호주상복합",

							240000000,

							153000000,

							196111111.1

							],

							[

							"대명",

							147000000,

							89000000,

							108666666.7

							],

							[

							"두산위브",

							435000000,

							223000000,

							299357142.9

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

						function drawChartComboChartIDf4040e07843() {

							var data = gvisDataComboChartIDf4040e07843();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4040e07843')

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

							callbacks.push(drawChartComboChartIDf4040e07843);

						})();

						function displayChartComboChartIDf4040e07843() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4040e07843"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4040e07843"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4040e07843.html">ComboChartIDf4040e07843</a>
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

			<!-- 계림동 그래프 끝 -->

			<!-- 금남로2가 그래프 시작 -->
			<div class="graph graph-con3">
				<div class="page-path">동구 > 금남로2가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4040102e2c() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"무등맨션",

							250000000,

							230000000,

							236666666.7

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

						function drawChartComboChartIDf4040102e2c() {

							var data = gvisDataComboChartIDf4040102e2c();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4040102e2c')

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

							callbacks.push(drawChartComboChartIDf4040102e2c);

						})();

						function displayChartComboChartIDf4040102e2c() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4040102e2c"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4040102e2c"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4040102e2c.html">ComboChartIDf4040102e2c</a>
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

			<!-- 금남로2가 그래프 끝 -->

			<!-- 금남로3가 그래프 시작 -->
			<div class="graph graph-con4">
				<div class="page-path">동구 > 금남로3가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf401ab82f78() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금남",

							129000000,

							115000000,

							122000000

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

						function drawChartComboChartIDf401ab82f78() {

							var data = gvisDataComboChartIDf401ab82f78();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf401ab82f78')

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

							callbacks.push(drawChartComboChartIDf401ab82f78);

						})();

						function displayChartComboChartIDf401ab82f78() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf401ab82f78"></script>



					<!-- divChart -->



					<div id="ComboChartIDf401ab82f78"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf401ab82f78.html">ComboChartIDf401ab82f78</a>
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
			<!-- 금남로3가 그래프 끝 -->

			<!-- 동명동 그래프 시작 -->
			<div class="graph graph-con5">
				<div class="page-path">동구 > 동명동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40ccc727d() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"동명",

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

						function drawChartComboChartIDf40ccc727d() {

							var data = gvisDataComboChartIDf40ccc727d();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf40ccc727d')

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

							callbacks.push(drawChartComboChartIDf40ccc727d);

						})();

						function displayChartComboChartIDf40ccc727d() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40ccc727d"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40ccc727d"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40ccc727d.html">ComboChartIDf40ccc727d</a>
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

			<!-- 동명동 그래프 끝 -->

			<!-- 산수동 그래프 시작 -->
			<div class="graph graph-con6">
				<div class="page-path">동구 > 산수동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4037714e74() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"공무원",

							60000000,

							60000000,

							60000000

							],

							[

							"광명",

							270000000,

							173000000,

							200000000

							],

							[

							"그린파크",

							185000000,

							150000000,

							170233333.3

							],

							[

							"동산로얄",

							180000000,

							130000000,

							150000000

							],

							[

							"동진",

							122000000,

							102000000,

							110200000

							],

							[

							"두암타운",

							330000000,

							190000000,

							230812500

							],

							[

							"라도스하임",

							287000000,

							268000000,

							279166666.7

							],

							[

							"명성",

							88000000,

							85000000,

							87000000

							],

							[

							"무등산광신프로그레스",

							318000000,

							300000000,

							311600000

							],

							[

							"무등파크",

							125000000,

							97000000,

							115500000

							],

							[

							"해광",

							105000000,

							105000000,

							105000000

							],

							[

							"호남",

							90000000,

							69000000,

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

						function drawChartComboChartIDf4037714e74() {

							var data = gvisDataComboChartIDf4037714e74();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4037714e74')

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

							callbacks.push(drawChartComboChartIDf4037714e74);

						})();

						function displayChartComboChartIDf4037714e74() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4037714e74"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4037714e74"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4037714e74.html">ComboChartIDf4037714e74</a>
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

			<!-- 산수동 그래프 끝 -->

			<!-- 소태동 그래프 시작 -->
			<div class="graph graph-con7">
				<div class="page-path">동구 > 소태동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4017221390() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"NK아이리스",

							155000000,

							149000000,

							151333333.3

							],

							[

							"국제",

							115000000,

							115000000,

							115000000

							],

							[

							"대아2차",

							165000000,

							147000000,

							158333333.3

							],

							[

							"모아미래도",

							245000000,

							220000000,

							230250000

							],

							[

							"백조",

							100000000,

							100000000,

							100000000

							],

							[

							"수정",

							145000000,

							145000000,

							145000000

							],

							[

							"온세계아이조움",

							255000000,

							235000000,

							247500000

							],

							[

							"우영타워",

							125000000,

							125000000,

							125000000

							],

							[

							"진아하이빌2차",

							215000000,

							215000000,

							215000000

							],

							[

							"진양",

							67000000,

							67000000,

							67000000

							],

							[

							"한국아델리움",

							550000000,

							550000000,

							550000000

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

						function drawChartComboChartIDf4017221390() {

							var data = gvisDataComboChartIDf4017221390();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4017221390')

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

							callbacks.push(drawChartComboChartIDf4017221390);

						})();

						function displayChartComboChartIDf4017221390() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4017221390"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4017221390"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4017221390.html">ComboChartIDf4017221390</a>
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
			<!-- 소태동 그래프 끝 -->

			<!-- 용산동 그래프 시작 -->
			<div class="graph graph-con8">
				<div class="page-path">동구 > 용산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4010146d0e() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"다보애",

							255000000,

							235000000,

							245000000

							],

							[

							"동산타워",

							165000000,

							143000000,

							154000000

							],

							[

							"일광",

							78000000,

							78000000,

							78000000

							],

							[

							"한국",

							138000000,

							135000000,

							136500000

							],

							[

							"호반",

							92000000,

							87000000,

							89500000

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

						function drawChartComboChartIDf4010146d0e() {

							var data = gvisDataComboChartIDf4010146d0e();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4010146d0e')

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

							callbacks.push(drawChartComboChartIDf4010146d0e);

						})();

						function displayChartComboChartIDf4010146d0e() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4010146d0e"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4010146d0e"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4010146d0e.html">ComboChartIDf4010146d0e</a>
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

			<!-- 용산동 그래프 끝 -->

			<!-- 운림동 그래프 시작 -->
			<div class="graph graph-con9">
				<div class="page-path">동구 > 운림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf406a962492() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"광명샤인빌",

							410000000,

							398000000,

							402000000

							],

							[

							"글로벌",

							298000000,

							270000000,

							284000000

							],

							[

							"남해오네뜨빌",

							455000000,

							358000000,

							406500000

							],

							[

							"라인1차",

							242000000,

							210000000,

							224166666.7

							],

							[

							"라인2차",

							325000000,

							190000000,

							216428571.4

							],

							[

							"라인광명",

							390000000,

							150000000,

							250555555.6

							],

							[

							"무등스위트",

							225000000,

							143000000,

							187750000

							],

							[

							"무등파크1차",

							285000000,

							200000000,

							251833333.3

							],

							[

							"무등파크2차",

							320000000,

							150000000,

							206583333.3

							],

							[

							"무등파크3차",

							205000000,

							130000000,

							148750000

							],

							[

							"운림빌라트",

							300000000,

							300000000,

							300000000

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

						function drawChartComboChartIDf406a962492() {

							var data = gvisDataComboChartIDf406a962492();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf406a962492')

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

							callbacks.push(drawChartComboChartIDf406a962492);

						})();

						function displayChartComboChartIDf406a962492() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf406a962492"></script>



					<!-- divChart -->



					<div id="ComboChartIDf406a962492"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf406a962492.html">ComboChartIDf406a962492</a>
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

			<!-- 운림동 그래프 끝 -->

			<!-- 월남동 그래프 시작 -->
			<div class="graph graph-con10">
				<div class="page-path">동구 > 월남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4027795984() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"호반베르디움2차",

							300000000,

							207000000,

							253411764.7

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

						function drawChartComboChartIDf4027795984() {

							var data = gvisDataComboChartIDf4027795984();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4027795984')

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

							callbacks.push(drawChartComboChartIDf4027795984);

						})();

						function displayChartComboChartIDf4027795984() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4027795984"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4027795984"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4027795984.html">ComboChartIDf4027795984</a>
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

			<!-- 월남동 그래프 끝 -->

			<!-- 지산동 그래프 시작 -->
			<div class="graph graph-con11">
				<div class="page-path">동구 > 지산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf4014cc1452() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"동산",

							72000000,

							72000000,

							72000000

							],

							[

							"삼성",

							250000000,

							180000000,

							204666666.7

							],

							[

							"썬빌라4",

							125000000,

							115000000,

							120000000

							],

							[

							"이안리츠빌",

							300000000,

							300000000,

							300000000

							],

							[

							"이화맨션",

							90000000,

							85000000,

							87750000

							],

							[

							"제일",

							100000000,

							100000000,

							100000000

							],

							[

							"진아하이빌",

							190000000,

							185000000,

							186666666.7

							],

							[

							"휴먼시아",

							300000000,

							240000000,

							277923076.9

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

						function drawChartComboChartIDf4014cc1452() {

							var data = gvisDataComboChartIDf4014cc1452();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf4014cc1452')

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

							callbacks.push(drawChartComboChartIDf4014cc1452);

						})();

						function displayChartComboChartIDf4014cc1452() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4014cc1452"></script>



					<!-- divChart -->



					<div id="ComboChartIDf4014cc1452"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf4014cc1452.html">ComboChartIDf4014cc1452</a>
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

			<!-- 지산동 그래프 끝 -->

			<!-- 충장로4가 그래프 시작 -->
			<div class="graph graph-con12">
				<div class="page-path">동구 > 충장로4가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40d721cbf() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"충장",

							100000000,

							100000000,

							100000000

							],

							[

							"충장고운라피네",

							225000000,

							180000000,

							197800000

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

						function drawChartComboChartIDf40d721cbf() {

							var data = gvisDataComboChartIDf40d721cbf();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf40d721cbf')

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

							callbacks.push(drawChartComboChartIDf40d721cbf);

						})();

						function displayChartComboChartIDf40d721cbf() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40d721cbf"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40d721cbf"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40d721cbf.html">ComboChartIDf40d721cbf</a>
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

			<!-- 충장로4가 그래프 끝 -->

			<!-- 학동 그래프 시작 -->
			<div class="graph graph-con13">
				<div class="page-path">동구 > 학동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDf40625573a5() {

							var data = new google.visualization.DataTable();

							var datajson =

							[

							[

							"금호베스트빌",

							340000000,

							290000000,

							310000000

							],

							[

							"무등산IPARK",

							750000000,

							390000000,

							508750000

							],

							[

							"무등산모아미래도",

							299000000,

							299000000,

							299000000

							],

							[

							"무등파크",

							180000000,

							138000000,

							166333333.3

							],

							[

							"백화",

							105000000,

							105000000,

							105000000

							],

							[

							"보라맨션",

							142000000,

							142000000,

							142000000

							],

							[

							"삼익세라믹",

							320000000,

							190000000,

							269444444.4

							],

							[

							"신영루체클래식",

							650000000,

							350000000,

							463750000

							],

							[

							"아남",

							320000000,

							150000000,

							208900000

							],

							[

							"평화",

							228000000,

							150000000,

							185857142.9

							],

							[

							"학1마을",

							235000000,

							196000000,

							207285714.3

							],

							[

							"학2마을",

							480000000,

							285000000,

							310916666.7

							],

							[

							"현대",

							455000000,

							158000000,

							222250000

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

						function drawChartComboChartIDf40625573a5() {

							var data = gvisDataComboChartIDf40625573a5();

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
							options["width"] = 900;
							
							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDf40625573a5')

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

							callbacks.push(drawChartComboChartIDf40625573a5);

						})();

						function displayChartComboChartIDf40625573a5() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40625573a5"></script>



					<!-- divChart -->



					<div id="ComboChartIDf40625573a5"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDf40625573a5.html">ComboChartIDf40625573a5</a>
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

			<!-- 학동 그래프 끝 -->
			<div id="board"></div>

		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>