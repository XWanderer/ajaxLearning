# ajaxLearning
ajax学习

# 关键代码

## js
```javascript
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
```

## html
```html
 <input type="button" onclick="loadXMLDoc()" value="button">
```

## java,Servlet
```java

public class MyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
//        resp.setContentType("text/html");
        String name=req.getParameter("name");
        System.out.println(name);
        resp.setContentType("application/json; charset=UTF-8");
        PrintWriter out=resp.getWriter();
//        out.print("fjdkfjdk");
//        out.println("<h1>abc</h1>");
        JSONObject jsonObject=new JSONObject();
        JSONArray jsonArray=new JSONArray();
        jsonArray.put(jsonObject);
        jsonArray.put(jsonObject);
        try{
            jsonObject.put("name","mafulong");
            jsonObject.put("age",18);
        }catch (Exception e){
            e.printStackTrace();
        }
//        out.print(jsonObject.toString());
        out.print(jsonArray.toString());

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
//        PrintWriter out=resp.getWriter();
//        out.print("fjdkfjdk");
        doGet(req,resp);
    }
}
```
