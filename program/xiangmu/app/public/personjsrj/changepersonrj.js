
function fn(){

    console.log(999);
    let headpic = document.querySelector(".headpic");
    let touxiang = document.querySelector(".touxiang").files[0];
    let username = document.querySelector(".username").value;
    let man = document.querySelector(".man");
    let nv = document.querySelector(".nv");
    let birthday = document.querySelector(".birthday").value;
    let usertxt = document.querySelector(".usertxt").value;
    //touxiang,username,birthday,usertxt
    let url = "/changeperson"
    let data = new FormData();
    data.append("touxiang",touxiang)
    data.append("username",username);
    data.append("birthday",birthday);
    data.append("usertxt",usertxt);
    axios.post(url,data)
    .then((res)=>{
        if(res.data.code == 2006){
            alert("修改成功")
            headpic.innerHTML = res.data.img;
        }
        //let headpic = document.querySelector(".headpic");
        //headpic.innerHTML =  res.data.touxiang;
    })

}