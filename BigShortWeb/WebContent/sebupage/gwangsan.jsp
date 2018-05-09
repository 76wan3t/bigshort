<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>가방</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="../css/gwangsan.css?var=2">
</head>




<body>

	<div class="wrap">
		<div id="container">
			<!-- 지도 시작 -->

			<div id="map" style="width: 521px; height: 357px; margin: 0 auto; margin-bottom: 80px;">
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1df542d8250b058df1db844f8b16bc3a"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center : new daum.maps.LatLng(35.1816537, 126.8276679),
						level : 8
					};

					var map = new daum.maps.Map(container, options);
				</script>



				<div
					style="position: absolute; z-index: 1; width: 100%; height: 0px;">
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 307px; top: 160px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=운남동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">운남동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=운남동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(276)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 323px; top: 130px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신가동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">신가동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신가동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(234)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 270px; top: 126px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=흑석동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">흑석동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=흑석동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(48)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 279px; top: 176px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=월곡동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">월곡동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=월곡동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(206)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 265px; top: 204px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=우산동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">우산동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=우산동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(206)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 286px; top: 87px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=장덕동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">장덕동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=장덕동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(336)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 244px; top: 137px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=하남동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">하남동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=하남동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(20)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -36px; left: 318px; top: 76px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=수완동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">수완동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=수완동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(180)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -35px; left: 230px; top: 168px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=산정동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">산정동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=산정동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(121)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -37px; left: 384px; top: 108px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신창동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">신창동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신창동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(255)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -36px; left: 387px; top: 53px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=산월동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">산월동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=산월동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(177)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -31px; left: 165px; top: 176px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=운수동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">운수동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=운수동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(8)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -36px; left: 347px; top: 15px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=월계동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">월계동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=월계동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(461)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 314px; top: -11px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=비아동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">비아동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=비아동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(47)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 382px; top: 0px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=쌍암동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">쌍암동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=쌍암동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(27)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 172px; top: 250px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=선암동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">선암동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=선암동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(64)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -33px; left: 280px; top: 271px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신촌동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">신촌동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=신촌동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(21)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -36px; left: 241px; top: 271px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=송정동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">송정동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=송정동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(146)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -36px; left: 228px; top: 230px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=소촌동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">소촌동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=소촌동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(152)</a>
						</div>
					</div>
					<div
						style="position: absolute; z-index: 0; white-space: nowrap; margin: -11px 0px 0px -34px; left: 301px; top: 19px;">
						<div
							style="text-align: center; background: #FFF; border: 1px solid #BBB; border-radius: 5px 5px 5px 5px;">
							<b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=도천동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">도천동</a></b><a
								href="?menu=apt&amp;submenu=&amp;code_area1=1&amp;code_area2=15&amp;dong=도천동&amp;search_code_new_detail=&amp;map_mode=&amp;mapcount=2"
								style="color: #000;">(36)</a>
						</div>
					</div>
				</div>


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















		</div>
	</div>






</body>
</html>
<%@ include file="../footer.jsp"%>