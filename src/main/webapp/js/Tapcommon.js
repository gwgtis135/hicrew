window.onload = function(){
	console.log('common.js 실행')
	var url = location.href;
	console.log(url)
	
	var submenulist = document.querySelectorAll(".sub_menu_lst > li");
	console.log(submenulist)
	for(i in submenulist){
		console.log(submenulist[i])
		var hreflink = submenulist[i].children[0].getAttribute("href");
		console.log(hreflink);
		if (url.indexOf(hreflink) != -1) {
			submenulist[i].classList.add("on");
		}
	}
};
		