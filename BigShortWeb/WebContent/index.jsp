<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="header.jsp"%>


<%
	response.setHeader("Cache-control", "no-store");
	response.setHeader("Pragma", "no-cache");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=1300px, user-scalable=yes,initial-scale=1, maximum-scale=3.0">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<meta name="Publisher" content="dewy.chang">
<title>Bigshort</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$(".gwangsan").hover(function() {
			$(".graph-con1").css("display", "block");

			var scrollPosition = $(".graph-con1").offset().top;
			$('html, body').animate({
				scrollTop : 400
			}, 150);

			$(".graph-con2").css("display", "none");
			$(".graph-con3").css("display", "none");
			$(".graph-con4").css("display", "none");
			$(".graph-con5").css("display", "none");
		});

		$(".north").hover(function() {
			$(".graph-con2").css("display", "block");

			var scrollPosition = $(".graph-con2").offset().top;
			$('html, body').animate({
				scrollTop : 400
			}, 150);

			$(".graph-con1").css("display", "none");
			$(".graph-con3").css("display", "none");
			$(".graph-con4").css("display", "none");
			$(".graph-con5").css("display", "none");

		});

		$(".south").hover(function() {
			$(".graph-con3").css("display", "block");

			var scrollPosition = $(".graph-con3").offset().top;
			$('html, body').animate({
				scrollTop : 400
			}, 150);

			$(".graph-con1").css("display", "none");
			$(".graph-con2").css("display", "none");
			$(".graph-con4").css("display", "none");
			$(".graph-con5").css("display", "none");

		});

		$(".west").hover(function() {
			$(".graph-con4").css("display", "block");

			var scrollPosition = $(".graph-con4").offset().top;
			$('html, body').animate({
				scrollTop : 400
			}, 150);

			$(".graph-con1").css("display", "none");
			$(".graph-con2").css("display", "none");
			$(".graph-con3").css("display", "none");
			$(".graph-con5").css("display", "none");

		});

		$(".east").hover(function() {
			$(".graph-con5").css("display", "block");

			var scrollPosition = $(".graph-con5").offset().top;
			$('html, body').animate({
				scrollTop : 400
			}, 150);

			$(".graph-con1").css("display", "none");
			$(".graph-con2").css("display", "none");
			$(".graph-con3").css("display", "none");
			$(".graph-con4").css("display", "none");

		});

	});
</script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/style.css?var=1">
</head>
<body>
	<div class="wrap">
		<div id="container">
			<div class="top_page">
				<h3>
					집 가격을 가방에 담다<br>
				</h3>
			</div>
			<div class="inner">
				<div class="local">
					<!--검색전-->
					<!--div class="all">
						
					</div>
					<!--검색전 end //-->

					<!-- 구 -->
					<ul class="gj">
						<li id="gwangsan"><a class="gwangsan"
							href="gwangsandetail.bigshort">광산구</a></li>
						<li class="li_gj"><a class="north"
							href="bukgudetail.bigshort">북구</a></li>
						<li><a class="south" href="namgudetail.bigshort">남구</a></li>
						<li><a class="west" href="seogudetail.bigshort">서구</a></li>
						<li id="east"><a class="east" href="donggudetail.bigshort">동구</a></li>
					</ul>
					<!-- 구 end//-->

				</div>


				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con1">
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
								options["width"] = 1500;

								options["height"] = 483;

								var chart = new google.visualization.ComboChart(

										document
												.getElementById('ComboChartIDf405dc97b0a')

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

								callbacks
										.push(drawChartComboChartIDf405dc97b0a);

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
							style="width: 1300; height: automatic;"></div>

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
				<!-- 그래프 div 끝 -->


				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con2">
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

								"동선택",

								175000000,

								175000000,

								175000000

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
								options["width"] = 1500;

								options["height"] = 483;

								var chart = new google.visualization.ComboChart(

										document
												.getElementById('ComboChartIDf40224944cc')

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

								callbacks
										.push(drawChartComboChartIDf40224944cc);

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
				<!-- 그래프 div 끝 -->


				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con3">
					<div class="page-path">광주광역시 > 남구</div>
					<div class="graph-inner">
						<!-- jsHeader -->


						<script type="text/javascript">
							// jsData

							function gvisDataComboChartIDf4045996d2d() {

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

							function drawChartComboChartIDf4045996d2d() {

								var data = gvisDataComboChartIDf4045996d2d();

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
								options["width"] = 1500;

								options["height"] = 483;

								var chart = new google.visualization.ComboChart(

										document
												.getElementById('ComboChartIDf4045996d2d')

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

								callbacks
										.push(drawChartComboChartIDf4045996d2d);

							})();

							function displayChartComboChartIDf4045996d2d() {

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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDf4045996d2d"></script>



						<!-- divChart -->



						<div id="ComboChartIDf4045996d2d"
							style="width: 500; height: automatic;"></div>

						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDf4045996d2d.html">ComboChartIDf4045996d2d</a>
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
				<!-- 그래프 div 끝 -->

				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con4">
					<div class="page-path">광주광역시 > 서구</div>
					<div class="graph-inner">
						<!-- jsHeader -->


						<script type="text/javascript">
							// jsData

							function gvisDataComboChartIDf40691766e2() {

								var data = new google.visualization.DataTable();

								var datajson =

								[

								[

								"광천동",

								585000000,

								80000000,

								333758620.7

								],

								[

								"금호동",

								760000000,

								86000000,

								227996153.8

								],

								[

								"내방동",

								255000000,

								62000000,

								163000000

								],

								[

								"농성동",

								240000000,

								78000000,

								165812500

								],

								[

								"동선택",

								75000000,

								75000000,

								75000000

								],

								[

								"동천동",

								595000000,

								250000000,

								347260000

								],

								[

								"마륵동",

								690000000,

								180000000,

								446250000

								],

								[

								"매월동",

								254000000,

								240000000,

								244000000

								],

								[

								"쌍촌동",

								950000000,

								92000000,

								234459183.7

								],

								[

								"양동",

								350000000,

								102000000,

								188189189.2

								],

								[

								"유촌동",

								255000000,

								91000000,

								185375000

								],

								[

								"치평동",

								710000000,

								72500000,

								287769480.5

								],

								[

								"풍암동",

								728000000,

								82000000,

								225330000

								],

								[

								"화정동",

								625000000,

								63000000,

								280926045

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

							function drawChartComboChartIDf40691766e2() {

								var data = gvisDataComboChartIDf40691766e2();

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
								options["width"] = 1500;

								options["height"] = 483;

								var chart = new google.visualization.ComboChart(

										document
												.getElementById('ComboChartIDf40691766e2')

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

								callbacks
										.push(drawChartComboChartIDf40691766e2);

							})();

							function displayChartComboChartIDf40691766e2() {

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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDf40691766e2"></script>



						<!-- divChart -->



						<div id="ComboChartIDf40691766e2"
							style="width: 500; height: automatic;"></div>

						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDf40691766e2.html">ComboChartIDf40691766e2</a>
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
				<!-- 그래프 div 끝 -->

				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con5">
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
								options["width"] = 1500;

								options["height"] = 483;

								var chart = new google.visualization.ComboChart(

										document
												.getElementById('ComboChartIDf40224613d8')

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

								callbacks
										.push(drawChartComboChartIDf40224613d8);

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
				<!-- 그래프 div 끝 -->





			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>