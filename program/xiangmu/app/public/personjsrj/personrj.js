function fn(){
    let username = document.querySelector(".username");
    let headpic = document.querySelector(".headpic");
    let usertxt = document.querySelector(".usertxt");
    let url = "/person";
    axios(url)
    .then((res)=>{
        if(res.data.code == 2005){
        
        usertxt.innerHTML = res.data.data[0].usertxt;
        headpic.url = res.data.data[0].headpic;
        username.innerHTML = res.data.data[0].username;
    }
   else if(res.data.code == 4005){
        alert("请先登录!!!");
        window.onload.href = ""//登陆页面
    }
    })
}