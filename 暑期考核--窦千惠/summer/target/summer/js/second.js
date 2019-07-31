function show1(){	
	document.getElementById('advice').style.display='none';	
	var d = document.getElementById("news");
   	d.style.display="block";
}
function show2(){	
	document.getElementById('news').style.display='none';
	var d = document.getElementById("advice");
   	d.style.display="block";
}
document.getElementById("go").onclick = function () {
    //根据id获取超链接,设置href属性
    var to = document.getElementById("to");
    var text = document.getElementById("text").value;
    if(text==2){
    	to.href = "Second web.html";
    }	
    //根据id获取超链接,设置文字内容
    else{
    	to.href = "First web.html";
    }	
 };