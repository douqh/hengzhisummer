function show1(){
	document.getElementById('enter').style.display='none';
	var d = document.getElementById("enter1");
   	d.style.display="block";
}
function show2(){
	document.getElementById('enter1').style.display='none';
	var d = document.getElementById("enter");
   	d.style.display="block";
}
 // 时间戳 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
function changeCode() {
            document.getElementById("CodePicture").src = "${pageContext.request.contextPath}/getCode?d="+new Date().getTime();
        }
        function ChangeCode() {
            document.getElementById("code").src = "${pageContext.request.contextPath}/ArtiCode?d="+new Date().getTime();
        }