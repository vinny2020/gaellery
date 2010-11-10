<%--
  Created by IntelliJ IDEA.
  User: xaymaca
  Date: Jun 12, 2009
  Time: 10:38:55 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>


<html>
  <head><title>Simple GSP page</title>
  <style type="text/css">

    body{
      color:wheat;
    }
    #columnLeft {
      float:left;
      width:67%;
      background:#fff;
      margin-top:0;
      margin-right: 1.6em;
      border-right:1px solid black;
      padding-top:0;
      padding-right: 1em;
      padding-bottom:20px;
    }

      #columnRight {
        padding-left: 2em;
        margin-top:0;
        padding-top:0;
      }
    h1{
        margin-top:0;
        padding-top:0;
    }

    #footer {
      clear:both;
      padding-bottom:1em;
      border-top: 1px solid #333;
      text-align: center;
    }


  </style>

  </head>
  <body>

  <div id="columnLeft">

   <div class="logo"><img src="${createLinkTo(dir:'images',file:'wafflehousereflect.jpg')}" alt="Grails" /></div>

  </div>
  <div id="columnRight">
    right
  </div>
  <div id="footer">
    copyright

  </div>


  </body>
</html>