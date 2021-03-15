function getUser() {
    var userId = document.getElementById("userId").value;
    var password = document.getElementById("password").value;
    testing(userId, password);
}
function testing(username, key) {
    password = 1234;
    var tmp = username && key;
    if (tmp == "") {
        alert("请填写完整信息");
        return 0;
    }
    if (password != key)
    {
           alert('密码不正确，请重新输入');
    }
    else{
           alert("登陆成功!");
           window.location.href='../UserManagement.html';
       }
    }
