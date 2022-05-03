<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>jOrgChart - A jQuery OrgChart Plugin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/orgcht/jquery.jOrgChart.css"/>

    <!-- jQuery includes -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/orgcht/jquery.jOrgChart.js"></script>

    <script>
    jQuery(document).ready(function() {
        $("#org").jOrgChart({
            chartElement : '#chart',
            dragAndDrop  : true
        });
    });
    </script>
    <style type="text/css">
    body, html, div, p, span, a, h1, h2, h3, h4, h5{
	margin 				: 0;
	padding 			: 0;
}

body, html{	
	width 				: 100%;
}

body{
	background 			: url('../images/bkgd.png') repeat top left;
	color 				: white;
	font-family 		: tahoma;
	font-weight 		: lighter;
	padding-top 		: 40px;
}

	body p{
		font-size 		: 14px;
	}
	
		body p a{
			font-size	: 16px;
		}

h1 {
	color 				: #E05E00;	
	font-style 			: italic;
}

a{
	color 				: #E05E00;	
	text-decoration		: none;
}

a:hover{
	text-decoration		: underline;
}

/* general */
.clear {
	clear: both;
}

/* Header */
.brand{
	color 				: #E05E00 !important;	
	font-family 		: georgia;
	font-style 			: italic;
}

/* list stuff */
#org{
	background-color 	: white;
	margin 				: 10px;
	padding 			: 10px;
}

#show-list{
	cursor 				: pointer;
}

/* bootstrap overrides */
.alert-message{
	margin: 2px 0;
}

.topbar{
	position 			: absolute;
}

/* Custom chart styling */
.jOrgChart {
  margin                : 10px;
  padding               : 20px;
}

/* Custom node styling */
.jOrgChart .node {
	font-size 			: 14px;
	background-color 	: #35363B;
	border-radius 		: 8px;
	border 				: 5px solid white;
	color 				: #F38630;
	-moz-border-radius 	: 8px;
}
	.node p{
		font-family 	: tahoma;
		font-size 		: 10px;
		line-height 	: 11px;
		padding 		: 2px;
	}
    </style>
  </head>

  <body>

	<div style="padding:20px;text-align:center;">
	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<!-- source.uhoon.co.kr -->
	<ins class="adsbygoogle"
		 style="display:inline-block;width:468px;height:60px"
		 data-ad-client="ca-pub-4169082997566429"
		 data-ad-slot="5725636632"></ins>
	<script>
	(adsbygoogle = window.adsbygoogle || []).push({});
	</script>
	</div>
    <ul id="org" style="display:none">
    <li>
       	나이스 사업부서
       <ul>
         <li>Open API
           <ul>
             <li>Jquery API</li>
             <li>Google API</li>
             <li>Daum API</li>
             <li>Naver API</li>
             <li>단일 기능 API</li>
             <li>Javascript API</li>
           </ul>
         </li>
         <li>DataBase
           <ul>
             <li>MS-SQL</li>
             <li>MY-SQL</li>
           </ul>
         </li>
       </ul>
     </li>
      <li>
      	대구 사업부서
      </li>
   </ul>
     <ul id="org" style="display:none">
    <li>
       	나이스 사업부서
       <ul>
         <li>Open API
           <ul>
             <li>Jquery API</li>
             <li>Google API</li>
             <li>Daum API</li>
             <li>Naver API</li>
             <li>단일 기능 API</li>
             <li>Javascript API</li>
           </ul>
         </li>
         <li>DataBase
           <ul>
             <li>MS-SQL</li>
             <li>MY-SQL</li>
           </ul>
         </li>
       </ul>
     </li>
      <li>
      	대구 사업부서
      </li>
   </ul>
    <div id="chart" class="orgChart"></div>
</body>
</html>