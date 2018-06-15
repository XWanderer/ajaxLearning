<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2018/6/15
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script>
      function loadXMLDoc() {
          console.log("loadXMLDOC")
          var xmlhttp=new XMLHttpRequest();
          // xmlhttp.open("GET","/myservlet?name=mafulong",true);
          xmlhttp.open("POST","/myservlet",true);
          xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
          xmlhttp.send("name=mafulong&age=14");

          xmlhttp.onreadystatechange=function()
          {
              if (xmlhttp.readyState==4 && xmlhttp.status==200)
              {
                  // document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
                  alert("success ");
                  var data=xmlhttp.responseText;
                  var djson=JSON.parse(data);
                  var str="";
                  for(var i=0;i<djson.length;i++){
                      str+=djson[i].name+"<br>";
                      str+=djson[i].age+"<br>";
                  }
                  document.getElementById("myDiv").innerHTML=str;
              }
          }
      }
    </script>
  </head>
  <body>
  $END$
  <br>
  <a href="http://localhost:8080//myservlet">MyServlet</a>
  <br>

  <input type="button" onclick="loadXMLDoc()" value="button">

  <%--<form id="form" action="" method="post">--%>
    <%--<input type="text" id="username"> <br>--%>
    <%--<input type="password" id="password"> <br>--%>
    <%--<input type="button" id="btn" value="登录">--%>
  <%--</form>--%>
 <script>

 </script>
  <div id="myDiv">
    ee
  </div>
  </body>
</html>
