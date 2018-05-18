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
				type:"POST",
				url:"gwangsandetail2.bigshort",
				data:"dongname=" + dongname,
				success:function(result){
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

	});
</script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css"
	href="/BigShortWeb/css/east.css?var=1">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<div class="gakgu">
				<table>
					<thead>
						<tr id="east1">
							<td id="td1"><a href="#">계림동<input type="hidden" value="계림동" class="dongname1"></a></td>
							<td id="td2" class="toomuch"><a href="#">금남로2가<input type="hidden" value="금남로2가" class="dongname2"></a></td>
							<td id="td3" class="toomuch"><a href="#">금남로3가<input type="hidden" value="금남로3가" class="dongname3"></a></td>
							<td id="td4"><a href="#">동명동<input type="hidden" value="동명동" class="dongname4"></a></td>
							<td id="td5"><a href="#">산수동<input type="hidden" value="산수동" class="dongname5"></a></td>
						</tr>
						<tr id="east2">
							<td id="td6"><a href="#">소태동<input type="hidden" value="소태동" class="dongname6"></a></td>
							<td id="td7"><a href="#">용산동<input type="hidden" value="용산동" class="dongname7"></a></td>
							<td id="td8"><a href="#">운림동<input type="hidden" value="운림동" class="dongname8"></a></td>
							<td id="td9"><a href="#">월남동<input type="hidden" value="월남동" class="dongname9"></a></td>
							<td id="td10"><a href="#">지산동<input type="hidden" value="지산동" class="dongname10"></a></td>
						</tr>
						<tr id="east3">
							<td id="td11" class="toomuch"><a href="#">충장로4가<input type="hidden" value="충장로4가" class="dongname11"></a></td>
							<td id="td12" class="hakdong"><a href="#">학동<input type="hidden" value="학동" class="dongname12"></a></td>
					</thead>
				</table>
			</div>

			<!-- 동구 전체 그래프 띄우는 div 시작 -->
			<div class="graph graph-con1">
				<div class="page-path">광주광역시 > 동구</div>
				<div class="graph-inner">
					<script type="text/javascript">
						// jsData 
						function gvisDataComboChartIDed474ab435b() {
							var data = new google.visualization.DataTable();
							var datajson = [
									[ "계림동", 435000000, 89000000, 255238806 ],
									[ "금남로2가", 250000000, 250000000, 250000000 ],
									[ "금남로3가", 122000000, 122000000, 122000000 ],
									[ "대인동", 206000000, 155000000, 185333333.3 ],
									[ "동명동", 230000000, 210000000, 223333333.3 ],
									[ "산수동", 315000000, 65000000, 176697674.4 ],
									[ "소태동", 541500000, 72000000, 151035714.3 ],
									[ "용산동", 147000000, 147000000, 147000000 ],
									[ "운림동", 410000000, 125000000, 228898550.7 ],
									[ "월남동", 300000000, 210000000, 255527777.8 ],
									[ "지산동", 300000000, 85000000, 219718750 ],
									[ "충장로4가", 218000000, 107000000,
											183857142.9 ],
									[ "학동", 658000000, 105000000, 263752136.8 ] ];
							data.addColumn('string', 'DONGNAME');
							data.addColumn('number', '최대가격');
							data.addColumn('number', '최소가격');
							data.addColumn('number', '평균가');
							data.addRows(datajson);
							return (data);
						}

						// jsDrawChart
						function drawChartComboChartIDed474ab435b() {
							var data = gvisDataComboChartIDed474ab435b();
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
											.getElementById('ComboChartIDed474ab435b'));
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
							callbacks.push(drawChartComboChartIDed474ab435b);
						})();
						function displayChartComboChartIDed474ab435b() {
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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDed474ab435b"></script>

					<!-- divChart -->

					<div id="ComboChartIDed474ab435b"
						style="width: 500; height: 500; overflow: scroll;"></div>
					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDed474ab435b.html">ComboChartIDed474ab435b</a>
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
			<!-- 동구 전체 그래프 div 끝 -->

			<!-- 계림동 그래프 시작 -->
			<div class="graph graph-con2">
				<div class="page-path">동구 > 계림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb183e006d25() {

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

						function drawChartComboChartIDb183e006d25() {

							var data = gvisDataComboChartIDb183e006d25();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb183e006d25')

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

							callbacks.push(drawChartComboChartIDb183e006d25);

						})();

						function displayChartComboChartIDb183e006d25() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb183e006d25"></script>



					<!-- divChart -->



					<div id="ComboChartIDb183e006d25" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb183e006d25.html">ComboChartIDb183e006d25</a>
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

			<!-- 계림동 그래프 끝 -->

			<!-- 금남로2가 그래프 시작 -->
			<div class="graph graph-con3">
				<div class="page-path">동구 > 금남로2가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb18112e5d5c() {

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

						function drawChartComboChartIDb18112e5d5c() {

							var data = gvisDataComboChartIDb18112e5d5c();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb18112e5d5c')

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

							callbacks.push(drawChartComboChartIDb18112e5d5c);

						})();

						function displayChartComboChartIDb18112e5d5c() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb18112e5d5c"></script>



					<!-- divChart -->



					<div id="ComboChartIDb18112e5d5c" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb18112e5d5c.html">ComboChartIDb18112e5d5c</a>
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

			<!-- 금남로2가 그래프 끝 -->

			<!-- 금남로3가 그래프 시작 -->
			<div class="graph graph-con4">
				<div class="page-path">동구 > 금남로3가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb184d0b28f8() {

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

						function drawChartComboChartIDb184d0b28f8() {

							var data = gvisDataComboChartIDb184d0b28f8();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb184d0b28f8')

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

							callbacks.push(drawChartComboChartIDb184d0b28f8);

						})();

						function displayChartComboChartIDb184d0b28f8() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb184d0b28f8"></script>



					<!-- divChart -->



					<div id="ComboChartIDb184d0b28f8" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb184d0b28f8.html">ComboChartIDb184d0b28f8</a>
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
			<!-- 금남로3가 그래프 끝 -->

			<!-- 동명동 그래프 시작 -->
			<div class="graph graph-con5">
				<div class="page-path">동구 > 동명동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb187b7431e() {

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

						function drawChartComboChartIDb187b7431e() {

							var data = gvisDataComboChartIDb187b7431e();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb187b7431e')

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

							callbacks.push(drawChartComboChartIDb187b7431e);

						})();

						function displayChartComboChartIDb187b7431e() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb187b7431e"></script>



					<!-- divChart -->



					<div id="ComboChartIDb187b7431e" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb187b7431e.html">ComboChartIDb187b7431e</a>
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

			<!-- 동명동 그래프 끝 -->

			<!-- 산수동 그래프 시작 -->
			<div class="graph graph-con6">
				<div class="page-path">동구 > 산수동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb18e761c48() {

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

						function drawChartComboChartIDb18e761c48() {

							var data = gvisDataComboChartIDb18e761c48();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb18e761c48')

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

							callbacks.push(drawChartComboChartIDb18e761c48);

						})();

						function displayChartComboChartIDb18e761c48() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb18e761c48"></script>



					<!-- divChart -->



					<div id="ComboChartIDb18e761c48" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb18e761c48.html">ComboChartIDb18e761c48</a>
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

			<!-- 산수동 그래프 끝 -->

			<!-- 소태동 그래프 시작 -->
			<div class="graph graph-con7">
				<div class="page-path">동구 > 소태동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb182617235a() {

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

						function drawChartComboChartIDb182617235a() {

							var data = gvisDataComboChartIDb182617235a();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb182617235a')

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

							callbacks.push(drawChartComboChartIDb182617235a);

						})();

						function displayChartComboChartIDb182617235a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb182617235a"></script>



					<!-- divChart -->



					<div id="ComboChartIDb182617235a" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb182617235a.html">ComboChartIDb182617235a</a>
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
			<!-- 소태동 그래프 끝 -->

			<!-- 용산동 그래프 시작 -->
			<div class="graph graph-con8">
				<div class="page-path">동구 > 용산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb182422e97() {

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

						function drawChartComboChartIDb182422e97() {

							var data = gvisDataComboChartIDb182422e97();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb182422e97')

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

							callbacks.push(drawChartComboChartIDb182422e97);

						})();

						function displayChartComboChartIDb182422e97() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb182422e97"></script>



					<!-- divChart -->



					<div id="ComboChartIDb182422e97" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb182422e97.html">ComboChartIDb182422e97</a>
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

			<!-- 용산동 그래프 끝 -->

			<!-- 운림동 그래프 시작 -->
			<div class="graph graph-con9">
				<div class="page-path">동구 > 운림동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb1823a252cb() {

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

						function drawChartComboChartIDb1823a252cb() {

							var data = gvisDataComboChartIDb1823a252cb();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb1823a252cb')

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

							callbacks.push(drawChartComboChartIDb1823a252cb);

						})();

						function displayChartComboChartIDb1823a252cb() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb1823a252cb"></script>



					<!-- divChart -->



					<div id="ComboChartIDb1823a252cb" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb1823a252cb.html">ComboChartIDb1823a252cb</a>
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

			<!-- 운림동 그래프 끝 -->

			<!-- 월남동 그래프 시작 -->
			<div class="graph graph-con10">
				<div class="page-path">동구 > 월남동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb1839505a9f() {

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

						function drawChartComboChartIDb1839505a9f() {

							var data = gvisDataComboChartIDb1839505a9f();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb1839505a9f')

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

							callbacks.push(drawChartComboChartIDb1839505a9f);

						})();

						function displayChartComboChartIDb1839505a9f() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb1839505a9f"></script>



					<!-- divChart -->



					<div id="ComboChartIDb1839505a9f" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb1839505a9f.html">ComboChartIDb1839505a9f</a>
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

			<!-- 월남동 그래프 끝 -->

			<!-- 지산동 그래프 시작 -->
			<div class="graph graph-con11">
				<div class="page-path">동구 > 지산동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb186ce151b1() {

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

						function drawChartComboChartIDb186ce151b1() {

							var data = gvisDataComboChartIDb186ce151b1();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb186ce151b1')

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

							callbacks.push(drawChartComboChartIDb186ce151b1);

						})();

						function displayChartComboChartIDb186ce151b1() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb186ce151b1"></script>



					<!-- divChart -->



					<div id="ComboChartIDb186ce151b1" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb186ce151b1.html">ComboChartIDb186ce151b1</a>
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

			<!-- 지산동 그래프 끝 -->

			<!-- 충장로4가 그래프 시작 -->
			<div class="graph graph-con12">
				<div class="page-path">동구 > 충장로4가</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartIDb185950294a() {

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

						function drawChartComboChartIDb185950294a() {

							var data = gvisDataComboChartIDb185950294a();

							var options = {};

							options["allowHtml"] = true;

							options["seriesType"] = "bars";

							options["series"] = {
								2 : {
									type : 'line'
								}
							};

							options["width"] = 900;

							options["height"] = 483;

							var chart = new google.visualization.ComboChart(

							document.getElementById('ComboChartIDb185950294a')

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

							callbacks.push(drawChartComboChartIDb185950294a);

						})();

						function displayChartComboChartIDb185950294a() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartIDb185950294a"></script>



					<!-- divChart -->



					<div id="ComboChartIDb185950294a" style="width: 1200; height: 500;">

					</div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartIDb185950294a.html">ComboChartIDb185950294a</a>
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

			<!-- 충장로4가 그래프 끝 -->

			<!-- 학동 그래프 시작 -->
			<div class="graph graph-con13">
				<div class="page-path">동구 > 학동</div>
				<div class="graph-inner">
					<!-- jsHeader -->


					<script type="text/javascript">
						// jsData

						function gvisDataComboChartID19e46ec82aa2() {

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

						function drawChartComboChartID19e46ec82aa2() {

							var data = gvisDataComboChartID19e46ec82aa2();

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

							document.getElementById('ComboChartID19e46ec82aa2')

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

							callbacks.push(drawChartComboChartID19e46ec82aa2);

						})();

						function displayChartComboChartID19e46ec82aa2() {

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
						src="https://www.google.com/jsapi?callback=displayChartComboChartID19e46ec82aa2"></script>



					<!-- divChart -->



					<div id="ComboChartID19e46ec82aa2"
						style="width: 500; height: automatic;"></div>

					<div>
						<span>Data: data &#8226; Chart ID: <a
							href="Chart_ComboChartID19e46ec82aa2.html">ComboChartID19e46ec82aa2</a>
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
			<div id="board">
			
			</div>

		</div>
	</div>
</body>
</html>
<%@ include file="../footer.jsp"%>