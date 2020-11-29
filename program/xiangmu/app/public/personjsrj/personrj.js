    let username = document.querySelector(".username");
    let headpic = document.querySelector(".headpic");
    let usertxt = document.querySelector(".usertxt");
    let url = "/person";
    axios.post(url)
    .then((res)=>{
        if(res.data.code == 2005){
        
        /* let bigbox = document.querySelector(".bigbox");
        let usertxt = document.createElement("span");
        usertxt.className = "usertxt";
        usertxt.innerHTML = res.data.data[0].usertxt;
        bigbox.appendChild(usertxt);

        let headpic = document.createElement("div");
        usertxt.className = "headpic";
        headpic.innerHTML =  res.data.data[0].headpic;
        bigbox.appendChild(headpic);

        let username = document.createElement("span");
        username.className = "res.data.data[0].username";
        username.innerHTML = res.data.data[0].username; */
        usertxt.innerHTML = res.data.data[0].usertxt;
        headpic.innerHTML = res.data.data[0].headpic;
        username.innerHTML = res.data.data[0].username;
    }
   else if(res.data.code == 4005){
        alert("请先登录!!!");
        window.onload.href = "/public/login.html"//登陆页面
    }
    })
