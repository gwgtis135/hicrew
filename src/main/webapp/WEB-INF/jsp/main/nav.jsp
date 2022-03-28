<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
	$(document).ready(function() {
		$.ajax({
			url : 'loadNav.do',
			data : {
				level : 0
			},
			dataType : 'json' ,
			success : function(datas) {
				console.log(datas);
				var nav = $('.head-nav');
				var flag=true;
				for(data of datas.navlist){
					console.log(data);
					var a = document.createElement("a");
					var li = document.createElement("li");
					console.log(data.lcalsName);
					a.dataset.navSection = data.lcalsName;
					a.text=data.lcalsName;
					if(flag){
						li.classList.add("active");
					}
					li.append(a);
					nav.append(li);
					flag=false;
				}
			},
			error : function(reject) {
				console.log(reject);
			}
		})
	})
</script>
<nav class="gtco-nav" role="navigation">
	<div class="gtco-container">
		<div class="row">
			<div class="col-sm-2 col-xs-12">
				<div id="gtco-logo">
					<img src="images/logo.png" alt="(주)하이크루" />
				</div>
			</div>
			<div class="col-xs-10 text-right menu-1 main-nav">
				<ul class="head-nav">
				</ul>
			</div>
		</div>

	</div>
</nav>