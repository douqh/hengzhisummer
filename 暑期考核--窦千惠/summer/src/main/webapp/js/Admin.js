window.onload=function(){
    function addzero(num){
        if(num>=10)
        {
            return ""+num;
        }
        else
        {
            return "0"+num;
        }
    }
    
    function times(){
        var date=new Date();
        var aTime=document.getElementById('aTime');
        var str= addzero(date.getHours())+":"+ addzero(date.getMinutes())+":"+ addzero(date.getSeconds());
        aTime.innerHTML=str;
    }
    setInterval(times,1000);
    times();
	function Adate(){
        var date=new Date();
        var aDate=document.getElementById("aDate");
        var week=document.getElementById('week');
        var weekList=["星期天","星期一","星期二","星期三","星期四","星期五","星期六"];
        var str= date.getFullYear()+"-"+(date.getMonth()+1)+"-"+ date.getDate();
        aDate.innerHTML=str;
        var westr=weekList[date.getDay()];
        week.innerHTML=westr;
    }
    Adate();
    
}
// //删除
// function del(obj){
// 	var oParentnode = obj.parentNode.parentNode;
// 	var olistTable = document.getElementById('listTable');
// 	olistTable.removeChild(oParentnode);
// }
// function del1(obj){
// 	var oParentnode = obj.parentNode.parentNode;
// 	var olistTable1 = document.getElementById('listTable1');
// 	olistTable1.removeChild(oParentnode);
// }
// function del2(obj){
// 	var oParentnode = obj.parentNode.parentNode;
// 	var olistTable2 = document.getElementById('listTable2');
// 	olistTable2.removeChild(oParentnode);
// }
// //修改
// function modify(obj){
// 	var oNum = document.getElementById('num');
// 	var oUser = document.getElementById('username');
// 	var oTr = obj.parentNode.parentNode;
// 	var aTd = oTr.getElementsByTagName('td');
// 	rowIndex = obj.parentNode.parentNode.rowIndex;
// 	oNum.value = aTd[0].innerHTML;
// 	oUser.value = aTd[1].innerHTML;
// }
// function modify1(obj){
// 	var oNum1 = document.getElementById('num1');
// 	var oUser1 = document.getElementById('username1');
// 	var oTr = obj.parentNode.parentNode;
// 	var aTd = oTr.getElementsByTagName('td');
// 	rowIndex = obj.parentNode.parentNode.rowIndex;
// 	oNum1.value = aTd[0].innerHTML;
// 	oUser1.value = aTd[1].innerHTML;
// }
// var allX= document.getElementsByClassName("x1");
// 	for(var i=0;i < allX.length ; i++){
// 		allX[i].onclick = function(){
// 		var ts = this.parentNode.parentNode;
// 		if(this.value == "修改")
// 			{
// 				this.value = "保存";
// 		   		ts.contentEditable="true";
// 		   	}
// 		else
// 			{
// 				this.value = "修改";
// 				ts.contentEditable="false";
// 			}
// 		}
// 	}
// //增加
// function addList(){
//     var oNum = document.getElementById('num').value;
//     var oUser = document.getElementById('username').value;
//     var oTr = document.createElement('tr');
//     var oTd1 = document.createElement('td');
//
//     var oTd2 = document.createElement('td');
//     oTd2.innerHTML = oNum;
//
//     var oTd3 = document.createElement('td');
//     oTd3.innerHTML = oUser;
//
//     var oTd7 = document.createElement('td');
//
//     var oInput2 = document.createElement('input');
//     var oInput3 = document.createElement('input');
//     oTd7.className = 'do'
//     oInput2.setAttribute('type','button');
//     oInput2.setAttribute('value','删除');
//     oInput2.className = 'btn-danger';
//     oInput2.setAttribute('onclick','del(this)');
//     oInput3.setAttribute('type','button');
//     oInput3.setAttribute('value','修改');
//     oInput3.setAttribute('onclick','modify(this)');
//     oInput3.className = 'btn-info';
//     oTd7.appendChild(oInput2);
//     oTd7.appendChild(oInput3);
//     oTr.appendChild(oTd2);
//     oTr.appendChild(oTd3);
//     oTr.appendChild(oTd7);
//     var olistTable = document.getElementById('listTable');
//     olistTable.appendChild(oTr);
// }
// function addList1(){
//     var oNum1 = document.getElementById('num1').value;
//     var oUser1 = document.getElementById('username1').value;
//     var oTr = document.createElement('tr');
//     var oTd1 = document.createElement('td');
//
//     var oTd2 = document.createElement('td');
//     oTd2.innerHTML = oNum1;
//
//     var oTd3 = document.createElement('td');
//     oTd3.innerHTML = oUser1;
//
//     var oTd7 = document.createElement('td');
//
//     var oInput2 = document.createElement('input');
//     var oInput3 = document.createElement('input');
//     oTd7.className = 'do1'
//     oInput2.setAttribute('type','button');
//     oInput2.setAttribute('value','删除');
//     oInput2.className = 'btn-danger';
//     oInput2.setAttribute('onclick','del1(this)');
//     oInput3.setAttribute('type','button');
//     oInput3.setAttribute('value','修改');
//     oInput3.setAttribute('onclick','modify1(this)');
//     oInput3.className = 'btn-info';
//     oTd7.appendChild(oInput2);
//     oTd7.appendChild(oInput3);
//     oTr.appendChild(oTd2);
//     oTr.appendChild(oTd3);
//     oTr.appendChild(oTd7);
//     var olistTable1 = document.getElementById('listTable1');
//     olistTable1.appendChild(oTr);
// }
// function update(){
//     var oNum = document.getElementById('num');
//     var oUser = document.getElementById('username');
//     var oStudents = document.getElementById('students');
// //  oStudents.rows[rowIndex].cells[0].innerHTML = oNum.value;
//     oStudents.rows[rowIndex].cells[1].innerHTML = oUser.value;
// }
// function update1(){
//     var oNum1 = document.getElementById('num1');
//     var oUser1 = document.getElementById('username1');
//     var oWarn = document.getElementById('warn');
// //  oStudents.rows[rowIndex].cells[0].innerHTML = oNum.value;
//     oWarn.rows[rowIndex].cells[1].innerHTML = oUser1.value;
// }
// //查找
// function Search() {
//   // 声明变量
//   var input, filter, table, tr, td, i;
//   input = document.getElementById("search");
//   filter = input.value.toUpperCase();
//   table = document.getElementById("students");
//   tr = table.getElementsByTagName("tr");
//
//   // 循环表格每一行，查找匹配项
//   for (i = 1; i < tr.length; i++) {
//     td = tr[i].getElementsByTagName("td")[0];
//     if (td) {
//       if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
//         tr[i].style.display = "";
//       } else {
//         tr[i].style.display = "none";
//       }
//     }
//   }
// }
// function Search1() {
//   // 声明变量
//   var input, filter, table, tr, td, i;
//   input = document.getElementById("search1");
//   filter = input.value.toUpperCase();
//   table = document.getElementById("warn");
//   tr = table.getElementsByTagName("tr");
//
//   // 循环表格每一行，查找匹配项
//   for (i = 1; i < tr.length; i++) {
//     td = tr[i].getElementsByTagName("td")[0];
//     if (td) {
//       if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
//         tr[i].style.display = "";
//       } else {
//         tr[i].style.display = "none";
//       }
//     }
//   }
// }
// function Search2() {
//   // 声明变量
//   var input, filter, table, tr, td, i;
//   input = document.getElementById("search2");
//   filter = input.value.toUpperCase();
//   table = document.getElementById("every");
//   tr = table.getElementsByTagName("tr");
//
//   // 循环表格每一行，查找匹配项
//   for (i = 1; i < tr.length; i++) {
//     td = tr[i].getElementsByTagName("td")[0];
//     if (td) {
//       if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
//         tr[i].style.display = "";
//       } else {
//         tr[i].style.display = "none";
//       }
//     }
//   }
// }
// function show1(){
// 	document.getElementById('allperson').style.display='none';
// 	document.getElementById('advicecontrol').style.display='none';
// 	document.getElementById('leadcontrol').style.display='none';
// 	document.getElementById('personcontrol').style.display='none';
// 	var d = document.getElementById("newscontrol");
//    	d.style.display="block";
// }
// function show2(){
// 	document.getElementById('advicecontrol').style.visibility='visible';
// 	document.getElementById('allperson').style.display='none';
// 	document.getElementById('newscontrol').style.display='none';
// 	document.getElementById('leadcontrol').style.display='none';
// 	document.getElementById('personcontrol').style.display='none';
// 	var d = document.getElementById("advicecontrol");
//    	d.style.display="block";
// }
// function show3(){
// 	document.getElementById('advicecontrol').style.visibility='visible';
// 	document.getElementById('allperson').style.display='none';
// 	document.getElementById('advicecontrol').style.display='none';
// 	document.getElementById('newscontrol').style.display='none';
// 	document.getElementById('personcontrol').style.display='none';
// 	var d = document.getElementById("leadcontrol");
//    	d.style.display="block";
// }
// function show4(){
// 	document.getElementById('allperson').style.display='none';
// 	document.getElementById('advicecontrol').style.display='none';
// 	document.getElementById('leadcontrol').style.display='none';
// 	document.getElementById('newscontrol').style.display='none';
// 	document.getElementById('number').style.visibility='visible';
// 	var d = document.getElementById("personcontrol");
//    	d.style.display="block";
// }
// function show5(){
// 	document.getElementById('allperson').style.display='none';
// 	document.getElementById('advicecontrol').style.display='none';
// 	document.getElementById('leadcontrol').style.display='none';
// 	document.getElementById('newscontrol').style.display='none';
// 	document.getElementById('number').style.visibility='hidden';
// 	document.getElementById('allperson').style.visibility='visible';
// 	var d = document.getElementById("allperson");
//    	d.style.display="block";
// }
// //人员信息修改
// function Change(a,b,c){
// 	a.onclick = function(){
// 	if(a.innerHTML=="修改")
// 		{
// 			a.innerHTML="保存";
// 			b.type="text";
// 			b.className="form-control";
// 			b.style.border="";
// 			b.style.fontSize="15px";
// 		}
// 	else{
// 			a.innerHTML="修改";
// 			b.type="button";
// 			b.className="names";
// 			b.style.border="none";
// 			b.style.fontSize=c+"px";
// 		}
// 	}
// }
// Change(change1,name1,20);
// Change(change2,name2,15);
// Change(change3,name3,15);
