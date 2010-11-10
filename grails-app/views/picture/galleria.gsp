<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <title>Main Gallery</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="imagetoolbar" content="false">
    <meta name="description" content="">
    <meta name="keywords" content="">
	<link href="/css/galleria.css" rel="stylesheet" type="text/css" media="screen">
   <g:javascript library="jquery"/>
  <jq:plugin name="galleria"/>

	<script type="text/javascript">


 

	jQuery(function($) {

		$('.gallery_demo_unstyled').addClass('gallery_demo'); // adds new class name to maintain degradability

		$('ul.gallery_demo').galleria({
			history   : true, // activates the history object for bookmarking, back-button etc.
			clickNext : true, // helper for making the image clickable
			insert    : '#main_image', // the containing selector for our main image
			onImage   : function(image,caption,thumb) { // let's add some image effects for demonstration purposes

				// fade in the image & caption
				if(! ($.browser.mozilla && navigator.appVersion.indexOf("Win")!=-1) ) { // FF/Win fades large images terribly slow
					image.css('display','none').fadeIn(1000);
				}
				caption.css('display','none').fadeIn(1000);

				// fetch the thumbnail container
				var _li = thumb.parents('li');

				// fade out inactive thumbnail
				_li.siblings().children('img.selected').fadeTo(500,0.3);

				// fade in active thumbnail
				thumb.fadeTo('fast',1).addClass('selected');

				// add a title for the clickable image
				image.attr('title','Next image >>');
			},
			onThumb : function(thumb) { // thumbnail effects goes here

				// fetch the thumbnail container
				var _li = thumb.parents('li');

				// if thumbnail is active, fade all the way.
				var _fadeTo = _li.is('.active') ? '1' : '0.3';

				// fade in the thumbnail when finnished loading
				thumb.css({display:'none',opacity:_fadeTo}).fadeIn(1500);

				// hover effects
				thumb.hover(
					function() { thumb.fadeTo('fast',1); },
					function() { _li.not('.active').children('img').fadeTo('fast',0.3); } // don't fade out if the parent is active
				)
			}
		});
	});


	</script>
	<style media="screen,projection" type="text/css">

	/* BEGIN DEMO STYLE */
	*{margin:0;padding:0}
	body{padding:20px;background:white;text-align:center;background:black;color:#bba;font:80%/140% georgia,serif;}
	h1,h2{font:bold 80% 'helvetica neue',sans-serif;letter-spacing:3px;text-transform:uppercase;}
	a{color:#348;text-decoration:none;outline:none;}
	a:hover{color:#67a;}
	.caption{font-style:italic;color:#887;}
	.demo{position:relative;margin-top:2em;}
	.gallery_demo{width:702px;margin:0 auto;}
	.gallery_demo li{width:68px;height:50px;border:3px double #111;margin: 0 2px;background:#000;}
	.gallery_demo li div{left:240px}
	.gallery_demo li div .caption{font:italic 0.7em/1.4 georgia,serif;}

	#main_image{margin:0 auto 60px auto;height:438px;width:700px;background:black;}
	#main_image img{margin-bottom:10px;}

	.nav{padding-top:15px;clear:both;font:80% 'helvetica neue',sans-serif;letter-spacing:3px;text-transform:uppercase;}

	.info{text-align:left;width:700px;margin:30px auto;border-top:1px dotted #221;padding-top:30px;}
	.info p{margin-top:1.6em;}

    </style>

</head>
<body>
<h1>Main Gallery</h1>
<div class="demo">
<div id="main_image"></div>
<ul class="gallery_demo_unstyled">
    <li  class="active"><img src="/images/nv/2/TheCycleofLife_BostonLanternFestival20076.jpg" alt="The Cycle of Life Boston Lantern Festival" title="The Cycle of Life Boston Lantern Festival"></li>
    <li><img src="/images/nv/2/longing14.jpg" alt="Longing" title="Longing"></li>
    <li><img src="/images/nv/2/texture18.jpg" alt="Flowing Rock" title="Texture"></li>
    <li><img src="/images/nv/2/caught_NV19.jpg" alt="Ladybug" title="Caught"></li>
    <li><img src="/images/nv/2/final6_NadegeVolcy2.jpg" alt="Nadege Volcy" title="Nadege Volcy"></li>
    <li><img src="/images/nv/2/ambassador.jpg" alt="Lotus" title="Mr Ambassador"></li>
    <li><img src="/images/nv/2/Joliesbig0-3bday15911.jpg" alt="Jolies" title="Jolies."></li>
    <li><img src="/images/nv/2/primavera17.jpg" alt="Primavera" title="Primavera."></li>
    <li><img src="/images/nv/2/Julian0023.jpg" alt="Julian" title="Julian"></li>


</ul>
<p class="nav"><a href="#" onclick="$.galleria.prev(); return false;">&laquo; previous</a> | <a href="#" onclick="$.galleria.next(); return false;">next &raquo;</a></p>
</div>
</body>
</html>