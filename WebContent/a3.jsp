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
    		//url: "https://api.asilu.com/geo/",
            url: "http://cloud-demo-eureka-user-poc-java-demo.apps.ocp4.yilipoc.com/xxx?vlaue=9999999999",
            type : "GET",
			contentType: 'application/json; charset=utf-8',
			//jsonpCallback:"success_jsonpCallback",
            dataType : "jsonp", // 返回的数据类型，设置为JSONP方式
            //jsonp : "callback", //指定一个查询参数名称来覆盖默认的 jsonp 回调参数名 callback
            success: function(callback){
                alert(JSON.stringify(callback));
            }
        });
	}
    //function callback(data) { 
    //	JSON.stringify(data); 
	//} 
	        
</script>
</html>