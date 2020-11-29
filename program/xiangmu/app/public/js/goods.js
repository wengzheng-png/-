
var ids = document.querySelectorAll(".ids")
//获取所有商品
for (let i = 0; i < ids.length; i++) {
    //1.给每个商品设置点击事件就做网络请求  
    ids[i].addEventListener("click", (e) => {
        //console.log(i);
        var url = "/shopping";
        //2.获取当前商品 详情名字保存在 f_info 中  
        var f_info = ids[i].children[1].children[0].innerHTML;
        console.log(f_info);
        //3.用于后端连接数据库时当做查询字段
        var data = new FormData()
        console.log(data);
        data.append("f_info", f_info)
        // console.log(data);
        //post传字段
        axios.post(url, data)
            .then((res) => {
                //请求网络成功后跳转页面到购物车
                window.location.href = "./car.html"
            })
            .catch((err) => {
                console.log(err);
            })
    })

}