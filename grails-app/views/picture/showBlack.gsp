<%--
  Created by IntelliJ IDEA.
  User: xaymaca
  Date: May 12, 2009
  Time: 1:09:08 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Xaymaca Studios' View On Black</title></head>
<style type=text/css>
   a img {
     border-width:0px;
   }
</style>
  <body style="background-color:black;color:white;text-decoration:none;">
  <div style="text-align:center"><a href="${createLinkTo(dir:'',file:'/')}"><img src="${createLinkTo(dir:'images',file:'xstudioslogo2.jpg')}"/></a></div>
  <div style="text-align:center;">
  <a href="${createLinkTo(dir:'gallery',file:'random')}"><img border="0" src="${flickrLink}" /></a>
    <br/>
    Return to the <a href="${photopage}">Flickr</a> page.
  </div>


 <script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-277417-26");
pageTracker._initData();
pageTracker._trackPageview();
</script>
  </body>
</html>