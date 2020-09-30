<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.11.0.js"></script>
</head>
	<body>
		<h3>jsonp接口测试</h3>
	 <button id="btn" onclick="BtnJsonp()">模拟jsonp请求123</button>
	</body>
    <script>
    function BtnJsonp(){
		
		$.ajax({
            type: "get",
            async:true,
            //url: "https://api.asilu.com/geo/",
            url: "http://eureka-user-poc-java-2.apps.ocp4.yilipoc.com/yyy",
            contentType: 'application/json; charset=utf-8',
            //url:'http://localhost:8080/swj_salary/userInfo/jsonp.do',
            dataType: "jsonp",
            jsonpCallback:"jsonpCallback",            
            success: function(data){
            	alert(data);
            var str = JSON.stringify(data); 
            console.log(str);
            alert(str);
            },
            error: function (e) {
                alert("error");
            }
        });
	}

	        
</script>
</html>