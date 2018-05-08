<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@ include file = "header.jsp"%>
	
	
<%response.setHeader("Cache-control", "no-store");response.setHeader("Pragma", "no-cache");%>
	
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
 $(document).ready(function(){
	
	 $(".gwangsan").hover(function(){
	    $(".graph-con1").css("display", "block");
	    
	    $(".graph-con2").css("display", "none");
	    $(".graph-con3").css("display", "none");
	    $(".graph-con4").css("display", "none");
	    $(".graph-con5").css("display", "none");
	});
	
	$(".north").hover(function(){
	    $(".graph-con2").css("display", "block");
	   
	    $(".graph-con1").css("display", "none");
	    $(".graph-con3").css("display", "none");
	    $(".graph-con4").css("display", "none");
	    $(".graph-con5").css("display", "none");
	});
	$(".south").hover(function(){
	    $(".graph-con3").css("display", "block");
	    
	    $(".graph-con1").css("display", "none");
	    $(".graph-con2").css("display", "none");
	    $(".graph-con4").css("display", "none");
	    $(".graph-con5").css("display", "none");
	});
	$(".west").hover(function(){
	    $(".graph-con4").css("display", "block");
	    
	    $(".graph-con1").css("display", "none");
	    $(".graph-con2").css("display", "none");
	    $(".graph-con3").css("display", "none");
	    $(".graph-con5").css("display", "none");
	});
	$(".east").hover(function(){
	    $(".graph-con5").css("display", "block");
	    
	    $(".graph-con1").css("display", "none");
	    $(".graph-con2").css("display", "none");
	    $(".graph-con3").css("display", "none");
	    $(".graph-con4").css("display", "none");
	});
	
	 
	 
	 
	 
	 
	
	
}); 






</script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/style.css?var=2">
</head>
<body>
	<div class="wrap">
		<div id="container">
			<div class="top_page">
				<h3>집 가격을 가방에 담다<br></h3>
			</div>
			<div class="inner">
				<div class="local">
					<!--검색전-->
					<!--div class="all">
						
					</div>
					<!--검색전 end //-->

					<!-- 구 -->
					<ul class="gj">
						<li id="gwangsan"><a class="gwangsan" href="gwangsandetail.bigshort">광산구</a></li>
						<li class="li_gj"><a class="north" href="bukgudetail.bigshort">북구</a></li>
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
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed43ab15521() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "도산동", 284000000, 13500000, 126220000 ],
										[ "도천동", 103000000, 80000000, 90000000 ],
										[ "비아동", 177000000, 75000000, 120012500 ],
										[ "산월동", 275000000, 195000000,
												227073529.4 ],
										[ "산정동", 590000000, 52000000,
												282357894.7 ],
										[ "선암동", 350000000, 237000000,
												287255319.1 ],
										[ "소촌동", 240000000, 61000000,
												146711538.5 ],
										[ "송정동", 270000000, 69000000, 145781250 ],
										[ "수완동", 890000000, 320000000,
												533898148.1 ],
										[ "신가동", 620000000, 113000000,
												315050279.3 ],
										[ "신창동", 410000000, 61000000,
												226107569.7 ],
										[ "신촌동", 205000000, 88000000,
												169409090.9 ],
										[ "쌍암동", 125000000, 125000000,
												125000000 ],
										[ "우산동", 273000000, 58000000,
												108613821.1 ],
										[ "운남동", 258000000, 85000000, 144241784 ],
										[ "운수동", 116000000, 103000000,
												108000000 ],
										[ "월계동", 320000000, 102000000,
												171201680.7 ],
										[ "월곡동", 253000000, 70000000, 162625000 ],
										[ "장덕동", 800000000, 215000000,
												385390804.6 ],
										[ "하남동", 177000000, 121000000,
												150882352.9 ],
										[ "흑석동", 420000000, 240000000,
												322222222.2 ] ];
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
								callbacks
										.push(drawChartComboChartIDed43ab15521);
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
				<!-- 그래프 div 끝 -->
				
				
				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con2">
					<div class="page-path">광주광역시 > 북구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed4622566b8() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "각화동", 338000000, 92000000,
												174739130.4 ],
										[ "동림동", 230000000, 90000000,
												155756097.6 ],
										[ "두암동", 650000000, 63000000,
												160456937.8 ],
										[ "매곡동", 355000000, 70000000,
												181766917.3 ],
										[ "문흥동", 310000000, 57000000,
												155952554.7 ],
										[ "본촌동", 500000000, 218000000,
												340333333.3 ],
										[ "삼각동", 340000000, 47000000,
												159423076.9 ],
										[ "신안동", 205000000, 37500000, 144025000 ],
										[ "신용동", 520000000, 115000000,
												298381679.4 ],
										[ "양산동", 395000000, 77500000,
												190212837.8 ],
										[ "연제동", 335000000, 87000000,
												190628819.4 ],
										[ "오치동", 179500000, 62000000,
												121810606.1 ],
										[ "용두동", 275000000, 259000000,
												267333333.3 ],
										[ "용봉동", 450000000, 77000000,
												192227848.1 ],
										[ "우산동", 263000000, 96000000,
												209161290.3 ],
										[ "운암동", 610000000, 65000000, 231975502 ],
										[ "일곡동", 460000000, 87000000,
												196834801.8 ],
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
								callbacks
										.push(drawChartComboChartIDed4622566b8);
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
				<!-- 그래프 div 끝 -->


				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con3">
					<div class="page-path">광주광역시 > 남구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed43cc1148f() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "노대동", 640000000, 238000000,
												348697916.7 ],
										[ "방림동", 320000000, 60000000,
												190458333.3 ],
										[ "백운동", 400000000, 113000000,
												252310810.8 ],
										[ "봉선동", 1500000000, 73000000,
												269121951.2 ],
										[ "서동", 320000000, 113000000, 277750000 ],
										[ "송하동", 265000000, 103000000,
												182238095.2 ],
										[ "양림동", 320000000, 290000000,
												308333333.3 ],
										[ "월산동", 660000000, 68000000, 231600000 ],
										[ "주월동", 500000000, 53000000,
												209880842.9 ],
										[ "지석동", 245000000, 243000000,
												243666666.7 ],
										[ "진월동", 550000000, 62000000,
												209718373.5 ],
										[ "행암동", 570000000, 255000000,
												320666666.7 ] ];
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
								callbacks
										.push(drawChartComboChartIDed43cc1148f);
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
				<!-- 그래프 div 끝 -->

				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con4">
					<div class="page-path">광주광역시 > 서구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed443272950() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "광천동", 590000000, 85000000,
												428285714.3 ],
										[ "금호동", 635000000, 90000000,
												226853479.9 ],
										[ "내방동", 255000000, 61000000,
												160386363.6 ],
										[ "농성동", 235000000, 59000000,
												154307692.3 ],
										[ "동천동", 650000000, 248000000,
												345672413.8 ],
										[ "마륵동", 690000000, 180000000,
												442384615.4 ],
										[ "매월동", 410000000, 239000000,
												323166666.7 ],
										[ "쌍촌동", 820000000, 75000000,
												225285046.7 ],
										[ "양동", 350000000, 102000000, 179500000 ],
										[ "유촌동", 255000000, 91000000,
												186680722.9 ],
										[ "치평동", 710000000, 72500000,
												292638235.3 ],
										[ "풍암동", 820000000, 85000000,
												225360128.6 ],
										[ "화정동", 640000000, 51000000,
												270446601.9 ] ];
								data.addColumn('string', 'DONGNAME');
								data.addColumn('number', '최대가격');
								data.addColumn('number', '최소가격');
								data.addColumn('number', '평균가');
								data.addRows(datajson);
								return (data);
							}

							// jsDrawChart
							function drawChartComboChartIDed443272950() {
								var data = gvisDataComboChartIDed443272950();
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
												.getElementById('ComboChartIDed443272950'));
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
										.push(drawChartComboChartIDed443272950);
							})();
							function displayChartComboChartIDed443272950() {
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
							src="https://www.google.com/jsapi?callback=displayChartComboChartIDed443272950"></script>

						<!-- divChart -->

						<div id="ComboChartIDed443272950"
							style="width: 500; height: 500; overflow: scroll;"></div>
						<div>
							<span>Data: data &#8226; Chart ID: <a
								href="Chart_ComboChartIDed443272950.html">ComboChartIDed443272950</a>
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

				<!-- 그래프 띄우는 div 시작 -->
				<div class="graph-con5">
					<div class="page-path">광주광역시 > 동구</div>
					<div class="graph-inner">
						<script type="text/javascript">
							// jsData 
							function gvisDataComboChartIDed474ab435b() {
								var data = new google.visualization.DataTable();
								var datajson = [
										[ "계림동", 435000000, 89000000, 255238806 ],
										[ "금남로2가", 250000000, 250000000,
												250000000 ],
										[ "금남로3가", 122000000, 122000000,
												122000000 ],
										[ "대인동", 206000000, 155000000,
												185333333.3 ],
										[ "동명동", 230000000, 210000000,
												223333333.3 ],
										[ "산수동", 315000000, 65000000,
												176697674.4 ],
										[ "소태동", 541500000, 72000000,
												151035714.3 ],
										[ "용산동", 147000000, 147000000,
												147000000 ],
										[ "운림동", 410000000, 125000000,
												228898550.7 ],
										[ "월남동", 300000000, 210000000,
												255527777.8 ],
										[ "지산동", 300000000, 85000000, 219718750 ],
										[ "충장로4가", 218000000, 107000000,
												183857142.9 ],
										[ "학동", 658000000, 105000000,
												263752136.8 ] ];
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
								callbacks
										.push(drawChartComboChartIDed474ab435b);
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
				<!-- 그래프 div 끝 -->





			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>