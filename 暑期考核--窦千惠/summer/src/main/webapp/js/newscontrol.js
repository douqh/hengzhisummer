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
//删除
function del(obj){
	var oParentnode = obj.parentNode.parentNode;
	var olistTable = document.getElementById('listTable');
	olistTable.removeChild(oParentnode);
}
//修改
function modify(obj){
	var oNum = document.getElementById('num');
	var oUser = document.getElementById('username');
	var oTime = document.getElementById('time');
	var oTr = obj.parentNode.parentNode;
	var aTd = oTr.getElementsByTagName('td');
	rowIndex = obj.parentNode.parentNode.rowIndex;  
	oNum.value = aTd[0].innerHTML;
	oUser.value = aTd[1].innerHTML;
	oTime.value = aTd[2].innerHTML;
}
//增加
function addList(){
    var oNum = document.getElementById('num').value;
    var oUser = document.getElementById('username').value;
    var oTime = document.getElementById('time').value;
    var oTr = document.createElement('tr');
    var oTd1 = document.createElement('td');
    
    var oTd2 = document.createElement('td');
    oTd2.innerHTML = oNum;
    
    var oTd3 = document.createElement('td');
    oTd3.innerHTML = oUser;
    
    var oTd4 = document.createElement('td');
    oTd4.innerHTML = oTime;
    
    var oTd7 = document.createElement('td');
    
    var oInput2 = document.createElement('input');
    var oInput3 = document.createElement('input');
    oTd7.className = 'do'
    oInput2.setAttribute('type','button');
    oInput2.setAttribute('value','删除');
    oInput2.className = 'btn-danger';
    oInput2.setAttribute('onclick','del(this)');
    oInput3.setAttribute('type','button');
    oInput3.setAttribute('value','修改');
    oInput3.setAttribute('onclick','modify(this)');
    oInput3.className = 'btn-info';
    oTd7.appendChild(oInput2);
    oTd7.appendChild(oInput3);
    oTr.appendChild(oTd2);
    oTr.appendChild(oTd3);
    oTr.appendChild(oTd4);
    oTr.appendChild(oTd7);
    var olistTable = document.getElementById('listTable');
    olistTable.appendChild(oTr);
}
//更新
function update(){
    var oNum = document.getElementById('num');
    var oUser = document.getElementById('username');
    var oTime = document.getElementById('time');
    var news = document.getElementById('news');
    news.rows[rowIndex].cells[0].innerHTML = oNum.value;
    news.rows[rowIndex].cells[1].innerHTML = oUser.value;
    news.rows[rowIndex].cells[2].innerHTML = oTime.value;
}
//查找
function Search() {
  // 声明变量
  var input, filter, table, tr, td, i;
  input = document.getElementById("search");
  filter = input.value.toUpperCase();
  table = document.getElementById("students");
  tr = table.getElementsByTagName("tr");
 
  // 循环表格每一行，查找匹配项
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}

function show6() {
	var fabu = document.getElementById("fabu");
	var fb = document.getElementById("fb");
	fb.style.visibility = "visible";
}
