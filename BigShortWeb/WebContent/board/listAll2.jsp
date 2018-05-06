<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">

a:link, a:visited {text-decoration: none; color: #656565;}
 
.board_list {width:100%;border-top:2px solid #252525;border-bottom:1px solid #ccc}
.board_list thead th:first-child{background-image:none}
.board_list thead th {border-bottom:1px solid #ccc;padding:12px 0 13px 0;color:#3b3a3a;vertical-align:middle}
.board_list tbody td {border-top:1px solid #ccc;padding:10px 0;text-align:center;vertical-align:middle}
.board_list tbody tr:first-child td {border:none}
.board_list tbody td.title {text-align:left; padding-left:20px}
.board_list tbody td a {display:inline-block}
 
.board_view {width:80%;border-top:2px solid #252525;border-bottom:1px solid #ccc;border-right:1px solid #252525;border-left:1px solid #252525}
.board_view tbody th {text-align:left;background:#f7f7f7;color:#3b3a3a}
.board_view tbody th.list_tit {font-size:13px;color:#000;letter-spacing:0.1px}
.board_view tbody .no_line_b th, .board_view tbody .no_line_b td {border-bottom:none}
.board_view tbody th, .board_view tbody td {padding:15px 0 16px 16px;border-bottom:1px solid #ccc}
.board_view tbody td.view_text {border-top:1px solid #ccc; border-bottom:1px solid #ccc;padding:45px 18px 45px 18px}
.board_view tbody th.th_file {padding:0 0 0 15px; vertical-align:middle}
.gesi{font-size: 30px; color:black;}
.wdp_90 {width:90%}
.btn {border-radius:3px;padding:5px 11px;color:#fff !important; display:inline-block; background-color:#6b9ab8; border:1px solid #56819d;vertical-align:middle}
#button2{margin-left: 203px;}
</style>
</head>
<body>
    <table class="board_view" style="margin-left: auto; margin-right: auto;">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption class="gesi">게시글 상세페이지</caption>
        <tbody>
            <tr>
                <th scope="row">글 번호</th>
                <td>${map.TITLE }</td>
                <th scope="row">조회수</th>
                <td>${map.HIT_CNT }</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${map.CREA_ID }</td>
                <th scope="row">작성시간</th>
                <td>${map.CREA_DTM }</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${map.TITLE }</td>
            </tr>
            <tr>
                <td colspan="4">${map.CONTENTS }</td>
            </tr>
        </tbody>
    </table>
     
    <div id="button2">
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    </div>
    
    <!-- 답글  -->
  
     
    <%-- <%@ include file="/WEB-INF/include/include-body.jspf" %> --%>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
    </script>
</body>
</html>

