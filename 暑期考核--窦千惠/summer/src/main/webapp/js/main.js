var nav = document.getElementById("nav"),
    show = document.getElementById("show"),
    show1 = document.getElementById("show1"),
    show2 = document.getElementById("show2"),
    show3 = document.getElementById("show3"),
    show4 = document.getElementById("show4"),
    show5 = document.getElementById("show5"),
    show6 = document.getElementById("show6"),
    show7 = document.getElementById("show7"),
    index = nav.getElementsByTagName("li")[0],
    index1 = nav.getElementsByTagName("li")[1],
    index2 = nav.getElementsByTagName("li")[2],
    index3 = nav.getElementsByTagName("li")[3];
    index4 = nav.getElementsByTagName("li")[4],
    index5 = nav.getElementsByTagName("li")[5],
    index6 = nav.getElementsByTagName("li")[7];
    index7 = nav.getElementsByTagName("li")[8];
index.onmouseover = show.onmouseover = change;
index1.onmouseover = show1.onmouseover = change1;
index2.onmouseover = show2.onmouseover = change2;
index3.onmouseover = show3.onmouseover = change3;
index4.onmouseover = show4.onmouseover = change4;
index5.onmouseover = show5.onmouseover = change5;
index6.onmouseover = show6.onmouseover = change6;
index7.onmouseover = show7.onmouseover = change7;
function change()
{
    show.style.display = "block";
    this.onmouseout = function()
    {
        show.style.display = "none"
    }
}
function change1()
{
    show1.style.display = "block";
    this.onmouseout = function()
    {
        show1.style.display = "none"
    }
}
function change2()
{
    show2.style.display = "block";
    this.onmouseout = function()
    {
        show2.style.display = "none"
    }
}
function change3()
{
    show3.style.display = "block";
    this.onmouseout = function()
    {
        show3.style.display = "none"
    }
}
function change4()
{
    show4.style.display = "block";
    this.onmouseout = function()
    {
        show4.style.display = "none"
    }
}
function change5()
{
    show5.style.display = "block";
    this.onmouseout = function()
    {
        show5.style.display = "none"
    }
}
function change6()
{
    show6.style.display = "block";
    this.onmouseout = function()
    {
        show6.style.display = "none"
    }
}
function change7()
{
    show7.style.display = "block";
    this.onmouseout = function()
    {
        show7.style.display = "none"
    }
}