// 搜索框 跳转页面  按钮点击事件 和 键盘回车事件
let search = document.querySelector(".search")
let scbtn = document.querySelector(".scbtn")
let scarrs = ["玫瑰","百合","康乃馨","白玫瑰","黄玫瑰","鲜花","绿植","白百合","花朵","鲜花网","花之物语","菊花"]
let searchthing = function(){
    console.log("跳转新的页面");
    window.location.href="Searchjump.html"
}
scbtn.onclick = function(){
    scarrs.forEach((el)=>{
        if(el==search.value){
        searchthing();
        }
    })
}
document.onkeydown = function (e) {
    if (e.keyCode === 13) {
        searchthing();
    }
}
// 轮播图部分
let index = 0;  //全局变量
let pic = document.querySelectorAll(".pic li");
let point = document.querySelectorAll(".point li")
//找到左右箭头箭头
let left = document.querySelector(".left-arrow");
let right = document.querySelector(".right-arrow");
//给箭头设置监听事件
left.onclick = function () {
    if (index <= 0) {
        index = pic.length - 1;
    } else {
        index--;
    }
    render();
}
right.onclick = function () {
    index++;
    render();
}
// 当前小圆点的下标
for (let i = 0; i < point.length; i++) {
    point[i].onclick = function () {
        index = i;   //把当前小圆点的下标赋值给index  ，调用有关index的放发就可以了     
        render();
    }
}
// 自动轮播  setInterval 定时器
setInterval(function () {
    index++;
    render();
}, 3000)
function render() {
    //排他设计法
    for (let i = 0; i < pic.length; i++) {
        //清除样式
        pic[i].style.display = "none";
        point[i].style.backgroundColor = "#fff"
    }
    pic[index % pic.length].style.display = "block";
    point[index % pic.length].style.backgroundColor = "#444";
}



/* 右侧固定 回到顶部 */
let gotop = document.querySelector(".gotop");
// 监听页面的滚动事件
window.onscroll = function (event) {
    let top = window.pageYOffset
        || document.body.scrollTop
        || document.documentElement.scrollTop;
    if (top >= 300) { //当页面滚动了300px后，显示固定的导航栏以及回到顶部按钮
        gotop.style.display = "block";
    } else { //当滚动的距离小于300px时，隐藏回到顶部的按钮，清除定位
        gotop.style.display = "none";
    }
}
// 回到顶部  给有个点击事件
gotop.addEventListener("click", function (event) {
    window.pageYOffset = 0;
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
})


// 所有分类  提示文本
let btnall = document.querySelector(".btnall");
let myul = document.querySelector(".myul");
let num = true;
// console.log(window.getComputedStyle(myul, null)["height"]);  //获取外部样式display 的值
btnall.onclick = function () {
    if (window.getComputedStyle(myul, null)["display"] == "none") {
        myul.style.display = "block";
    } else {
        myul.style.display = "none";
    }

}


