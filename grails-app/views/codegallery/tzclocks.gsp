<html>
<head>
  <title>Simple, No Frills Timezone clock demo </title>


  <script type="text/javascript" src="/js/jquery-1.2.6.js"></script>
  <script type="text/javascript" src="/js/jquery.jclock.js"></script>

  <script type="text/javascript">
    $(function($) {
      var optionsEST = {
        utc: true,
        utc_offset: -5
      }
      $('#jclock1').jclock(optionsEST);

      var optionsPST = {
        utc: true,
        utc_offset: -8
      }
      $('#jclock2').jclock(optionsPST);
    });
  </script>
<title>Live and Simple Jquery Clock in different time zones</title>
</head>

<body style="color:white;background-color:black;">

<h2>Live and Simple Jquery Clock in different time zones</h2>


<p>Current Time in: Atlanta, Ga: <span id="jclock1"></span> EST</p>
<p>Current Time in: Mountain View, California: <span id="jclock2"></span> PST</p>

Xaymaca Studios &copy;2009
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

