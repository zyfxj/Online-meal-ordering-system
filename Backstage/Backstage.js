/*
 * 版权所有(C)，郑翊风，2020，所有权利保留。
 *
 * 项目名： Myjava_1
 * 文件名： Backstage.js
 * 模块说明：
 * 修改历史:
 * 2020-7-25 - 郑翊风 - 创建。
 */

function openNav() {
    document.getElementById("mySidenav").style.width = "200px";
    document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}

function add_shoppingcar(btn){
    var tr=btn.parentNode;
    var name=tr.querySelector(".zyf_1").value;
    var price=tr.querySelector(".zyf_2").value;
    if(name === '' || price === ''){
        alert('请输入内容');
        return;
    }
    var tbody=document.getElementById("goods");
    var row=tbody.insertRow();//insertRow表格开头插入新行
    row.innerHTML="<td>"+name+"</td>"+
        "<td>"+price+"</td>"+
        "<td align='center'>"+
        "<input type='button' value='X' onclick='del(this)'/>"+
        "</td>"+
        "</tr>"
}

function del(i){
    var tr=i.parentNode.parentNode;
    tr.parentNode.removeChild(tr);
    //tr.remove(tr);
}