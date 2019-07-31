window.onload = function() {
	function addzero(num) {
		if(num >= 10) {
			return "" + num;
		} else {
			return "0" + num;
		}
	}

	function times() {
		var date = new Date();
		var aTime = document.getElementById('aTime');
		var str = addzero(date.getHours()) + ":" + addzero(date.getMinutes()) + ":" + addzero(date.getSeconds());
		aTime.innerHTML = str;
	}
	setInterval(times, 1000);
	times();

	function Adate() {
		var date = new Date();
		var aDate = document.getElementById("aDate");
		var week = document.getElementById('week');
		var weekList = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
		var str = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
		aDate.innerHTML = str;
		var westr = weekList[date.getDay()];
		week.innerHTML = westr;
	}
	Adate();

}
var allX = document.getElementsByClassName("x1");
for(var i = 0; i < allX.length; i++) {
	allX[i].onclick = function() {
		var ts = this.parentNode.parentNode;
		if(this.value == "修改") {
			this.value = "保存";
			ts.contentEditable = "true";
		} else {
			this.value = "修改";
			ts.contentEditable = "false";
		}
	}
}
//人员信息修改
function Change(a, b, c) {
	a.onclick = function() {
		if(a.innerHTML == "修改") {
			a.innerHTML = "保存";
			b.type = "text";
			b.className = "form-control";
			b.style.border = "";
			b.style.fontSize = "15px";
		} else {
			a.innerHTML = "修改";
			b.type = "button";
			b.className = "names";
			b.style.border = "none";
			b.style.fontSize = c + "px";
		}
	}
}
Change(change1, name1, 20);
Change(change2, name2, 15);
Change(change3, name3, 15);