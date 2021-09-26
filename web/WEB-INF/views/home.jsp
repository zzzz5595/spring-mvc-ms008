<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
</head>
<script type="text/javascript">
    $(document).ready(function() {
        $("#putBtn").on("click" , function() {
            var boardNo = $("#boardNo");
            var title = $("#title");
            var content = $("#content");
            var writer = $("#writer");

            var boardNoVal = boardNo.val();
            var titleVal = title.val();
            var contentVal = content.val();
            var writerVal = writer.val();

            var boardObject = {
                boardNo : boardNoVal,
                title : titleVal,
                content : contentVal,
                writer : writerVal
            };

            $.ajax({
                type: "put",
                url : "/board/" + boardNoVal,
                data : JSON.stringify(boardObject),
                dataType : "json",
                contentType : 'application/json',
                success : function(result) {
                    console.log("result : " + result);
                    if(result === "SUCCESS"){
                        alert("SUCCESS");
                    }
                }
            });
        });

        $("#putBtn2").on("click" , function() {
            var boardNo = $("#boardNo");
            var title = $("#title");
            var content = $("#content");
            var writer = $("#writer");

            var boardNoVal = boardNo.val();
            var titleVal = title.val();
            var contentVal = content.val();
            var writerVal = writer.val();

            var boardObject = {
                boardNo : boardNoVal,
                title : titleVal,
                content : contentVal,
                writer : writerVal
            };

            $.ajax({
                type: "put",
                url : "/board/" + boardNoVal,
                headers : {"X-HTTP-Method-Override" : "PUT"},
                data : JSON.stringify(boardObject),
                contentType : "application/json; charset=utf-8",
                success : function(result) {
                    console.log("result : " + result);
                    if(result === "SUCCESS"){
                        alert("SUCCESS");
                    }
                }
            });
        });
    });




</script>

<body>

<h1>SPRING MISSION 006 </h1>
<h2>Ajax Request</h2>

<form>
    boardNo : <input type="text" name = "boardNo" value="" id="boardNo">
    title : <input type="text" name = "title" value="" id="title">
    content : <input type="text" name = "content" value="" id="content">
    writer : <input type="text" name = "writer" value="" id="writer">
</form>

<div>
    <button id="putBtn">(put)</button>
    <button id="putBtn2">(put2)</button>
    <a href='/board/123'>board/register</a>
</div>
</body>
</html>
