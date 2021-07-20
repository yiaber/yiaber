<template>
  <div>
    <mydetails></mydetails>
    <!-- 搜索框 -->
    <div class="search-1" style="background-color: white">
      <div class="search">
        <div class="table">
          <ul>
            <li class="active">
              <a href="">首页</a>
            </li>
            <li>
              <a href="">坚果手机</a>
            </li>
            <li>
              <a href="">TNT</a>
            </li>
            <li>
              <a href="">官方自营</a>
            </li>
            <li>
              <a href="">服务</a>
            </li>
          </ul>
        </div>
        <div class="rightSearch">
          <img src="../assets/imgages/logs/search.png" alt="" />
          <input type="text" placeholder="请输入搜索的商品" />
        </div>
      </div>
    </div>
    <!-- 热销商品 -->
    <div class="shangping">
      <div class="shangpingxiangqing">
        <div class="toutupian" v-for="(item, i) in title" :key="i">
          <router-link to="" onfocus="this.blur()">
            <img :src="'http://localhost:3000/' + item.img" alt="" />
          </router-link>
        </div>
      </div>
      <!-- 热门商品 -->
      <div class="rexiao">
        <div class="text11">
          <h5>热门商品</h5>
        </div>
        <div class="card">
          <div class="card1" v-for="(item, i) in rexiao" :key="i">
            <router-link to="">
              <img :src="'http://localhost:3000/' + item.imgage" alt="" />
              <h3>{{ item.fname }}</h3>
              <h4>{{ item.subtitle }}</h4>
              <div class="money">
                <span>￥{{ item.price.toFixed(2) }}</span>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      <!-- 坚果R2及配件 -->
      <div class="remen">
        <div class="text11">
          <h5>坚果R2及配件</h5>
        </div>
        <div class="card">
          <div class="card1">
            <router-link to="">
              <img :src="'http://localhost:3000/'+remen[0].img" >
            </router-link>
          </div>
          <div class="card1" v-for="(item, i) in jianguo" :key="i">
            <router-link to="">
              <img :src="'http://localhost:3000/' + item.imgage" alt="" />
              <h3>{{ item.fname }}</h3>
              <h4>{{ item.subtitle }}</h4>
              <div class="money">
                <span>￥{{ item.price.toFixed(2) }}</span>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      <!-- Smartisan TNT -->
      <div class="remen">
        <div class="text11">
          <h5>坚果R2及配件</h5>
        </div>
        <div class="card">
          <div class="card1">
            <router-link to="">
              <img :src="'http://localhost:3000/'+remen[1].img" >
            </router-link>
          </div>
          <div class="card1" v-for="(item, i) in TNT" :key="i">
            <router-link to="">
              <img :src="'http://localhost:3000/' + item.imgage" alt="" />
              <h3>{{ item.fname }}</h3>
              <h4>{{ item.subtitle }}</h4>
              <div class="money">
                <span>￥{{ item.price.toFixed(2) }}</span>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      <!-- 官方精选配件 -->
      <div class="remen">
        <div class="text11">
          <h5>官方精选配件</h5>
        </div>
        <div class="card">
          <div class="card1">
            <router-link to="">
              <img :src="'http://localhost:3000/'+remen[2].img" >
            </router-link>
          </div>
          <div class="card1" v-for="(item, i) in peijian" :key="i">
            <router-link to="">
              <img :src="'http://localhost:3000/' + item.imgage" alt="" />
              <h3>{{ item.fname }}</h3>
              <h4>{{ item.subtitle }}</h4>
              <div class="money">
                <span>￥{{ item.price.toFixed(2) }}</span>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      <!-- 足迹系列保护壳 -->
      <div class="remen">
        <div class="text11">
          <h5>官方精选配件</h5>
        </div>
        <div class="card">
          <div class="card1">
            <router-link to="">
              <img :src="'http://localhost:3000/'+remen[3].img" >
            </router-link>
          </div>
          <div class="card1" v-for="(item, i) in baohuke" :key="i">
            <router-link to="">
              <img :src="'http://localhost:3000/' + item.imgage" alt="" />
              <h3>{{ item.fname }}</h3>
              <h4>{{ item.subtitle }}</h4>
              <div class="money">
                <span>￥{{ item.price.toFixed(2) }}</span>
              </div>
            </router-link>
          </div>
        </div>
      </div>
      
    </div>

    <!-- 底部导航 -->
    <div class="dibutitle">
      <div class="tabbar">
        <div class="text">
          <ul>
            <li class="first">订单服务</li>
            <li>
              <a href="">购买指南</a>
            </li>
            <li>
              <a href="">送货政策</a>
            </li>
          </ul>
          <ul>
            <li class="first">服务支持</li>
            <li>
              <a href="">自助服务</a>
            </li>
            <li>
              <a href="">维修门店</a>
            </li>
          </ul>
          <ul>
            <li class="first">媒体中心</li>
            <li>
              <a href="">新闻动态</a>
            </li>
            <li>
              <a href="">官方视频</a>
            </li>
            <li>
              <a href="">图片资源</a>
            </li>
          </ul>
          <ul>
            <li class="first">关注我们</li>
            <li>
              <a href="">新浪微博</a>
            </li>
            <li>
              <a href="">官方微信</a>
            </li>
            <li>
              <a href="">荣誉奖项</a>
            </li>
          </ul>
        </div>
        <div class="rightText">
          <h1>400 - 603 - 5000</h1>
          <h2>周一到周日 9:00 - 18:00</h2>
          <h3>(仅收市话费)</h3>
          <button>
            <img src="../assets/imgages/logs/help.png" alt="" />
            <span>在线帮助</span>
          </button>
        </div>
      </div>
      <!-- ICP -->
      <div class="dibu">
        <ul>
          <li>
            <a href="">Copyright © 2020 smartisan.com 版权所有</a>
          </li>
          <li>
            <a href="">锤子商城隐私政策</a>
          </li>
          <li>
            <a href="">锤子商城用户协议</a>
          </li>
          <li>
            <a href="">资质证照</a>
          </li>
        </ul>
        <ul class="ipc">
          <li>
            <a href="">京 ICP 备 19048576 号 - 1</a>
          </li>
          <li>
            <a href="">
              <img src="../assets/imgages/logs/ipc.png" alt="" />
            </a>
            <a href="">京公网安备 11010502039854号</a>
          </li>
          <li>
            <a href="">京食药网食备 202010031</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import mydetails from "./Details.vue";
export default {
  components: { mydetails },
  data() {
    return {
      title: "",//首页轮播图下面四张图
      rexiao: "",////热门商品
      remen:[{img:''}],// 商品详情列表第一张图
      jianguo:'',//坚果R2及配件
      TNT:'',//Smartisan TNT
      peijian:'',//官方精选配件
      baohuke:'',//足迹系列保护壳
    };
  },
  mounted() {
    //首页轮播图下面四张图
    this.axios.get("/home/index1").then((results) => {
      // console.log(results.data);
      this.title = results.data.results;
      // this.cid=results.data.cid;
      // console.log(this.title[1].title)  
    });
    //热门商品
    this.axios.get("/home/index2").then((results) => {
      this.rexiao = results.data.res;
    });
    // 商品详情列表第一张图
    this.axios.get("/home/index/3").then((result)=>{
      // console.log(result.data);
      this.remen=result.data.result;
      // console.log(this.remen[1].img)
    });
    //查询坚果R2及配件
    this.axios.get("/home/index/31").then((result)=>{
      this.jianguo=result.data.result;
    });
    //Smartisan TNT
    this.axios.get("/home/index/32").then((result)=>{
      this.TNT=result.data.result;
      // console.log(result.data)
    });
    // 官方精选配件
    this.axios.get('/home/index/33').then((result)=>{
      this.peijian=result.data.result;
    })
    //足迹系列保护壳
    this.axios.get('/home/index/34').then((result)=>{
      this.baohuke=result.data.result;
    })

  },
};
</script>
<style lang="scss" scoped>
//商品样式
.shangping {
  width: 1218px;
  // height: 500px;
  // background-color: red;
  margin: 0 auto;
  //商品详情
  .shangpingxiangqing {
    width: 100%;
    height: 200px;
    border: 1px solid rgba(0, 0, 0, 0.14);
    border-radius: 8px;
    background: #fff;
    margin-top: 25px !important;
    .toutupian {
      .toutupian:hover {
        box-shadow: 0 0 5px 1px #888888 inset;
      }
      display: inline;
      a {
        text-decoration: none;
      }
      a:hover .toutupian {
        box-shadow: 10px 10px 5px #888888;
      }
    }
    img {
      width: 303.75px;
      height: 198px;
      margin: 0;
    }
  }
  //热销商品
  .rexiao {
    width: 100%;
    height: 490px;
    margin-top: 25px;
    border: 1px solid rgba(0, 0, 0, 0.14);
    border-radius: 8px;
    background: #fff;
    .text11 {
      width: 1193px;
      height: 60px;
    }
    h5 {
      width: 1193px;
      height: 60px;
      margin-left: 25px;
      font-weight: bolder;
      font-size: 18px;
      line-height: 60px;
      display: block;
      float: left;
      text-align: left;
      color: #666;
    }
    .card {
      border-top: 1px solid rgba(0, 0, 0, 0.14);
      .card1 {
        // display: flex;
        // transition: box-shadow 0.15s ease-out, -webkit-box-shadow 0.15s ease-out;
        position: relative;
        float: left;
        width: 303.5px;
        height: 429px;
        border-right: 1px solid rgba(0, 0, 0, 0.14);
        // background-color: red;
        overflow: hidden;
        img {
          display: block;
          width: 216px;
          height: 216px;
          margin: 0 auto;
          padding-top: 45px;
          padding-bottom: 20px;
        }
        h3 {
          line-height: 1.2;
          white-space: nowrap;
          text-overflow: ellipsis;
          overflow: hidden;
          font-size: 14px;
          font-weight: 700;
          margin: 0 8px;
          color: #333;
        }
        h4 {
          padding: 15px 12px 0;
          font-size: 12px;
          color: #999;
        }
        .money {
          width: 100%;
          position: absolute;
          font-family: Arial;
          font-size: 18px;
          font-weight: bolder;
          color: #d44d44;
          margin: 20px 0;
          bottom: 0px;
          span {
            margin: 0 auto;
          }
        }
      }
      .card1:hover {
        box-shadow: 0 0 13px 1px rgb(51,51,51,0.1) inset;
      }
    }
  }
  //热门列表
   .remen {
    width: 100%;
    height: 921px;
    margin-top: 25px;
    border: 1px solid rgba(0, 0, 0, 0.14);
    border-radius: 8px;
    background: #fff;
    .text11 {
      width: 1193px;
      height: 60px;
    }
    h5 {
      width: 1193px;
      height: 60px;
      margin-left: 25px;
      font-weight: bolder;
      font-size: 18px;
      line-height: 60px;
      display: block;
      float: left;
      text-align: left;
      color: #666;
    }
    .card {
      border-top: 1px solid rgba(0, 0, 0, 0.14);
       .card1:first-child{
         width: 608px;
         height: 429px;
         img{
           width: 100%;
           height: 100%;
           padding: 0;
         }
       }
      .card1 {
        // display: flex;
        // transition: box-shadow 0.15s ease-out, -webkit-box-shadow 0.15s ease-out;
        position: relative;
        float: left;
        width: 303.5px;
        height: 429px;
        border-right: 1px solid rgba(0, 0, 0, 0.14);
        border-top: 1px solid rgba(0, 0, 0, 0.14);
        // background-color: red;
        overflow: hidden;
        img {
          display: block;
          width: 216px;
          height: 216px;
          margin: 0 auto;
          padding-top: 45px;
          padding-bottom: 20px;
        }
        h3 {
          line-height: 1.2;
          white-space: nowrap;
          text-overflow: ellipsis;
          overflow: hidden;
          font-size: 14px;
          font-weight: 700;
          margin: 0 8px;
          color: #333;
        }
        h4 {
          padding: 15px 12px 0;
          font-size: 12px;
          color: #999;
        }
        .money {
          width: 100%;
          position: absolute;
          font-family: Arial;
          font-size: 18px;
          font-weight: bolder;
          color: #d44d44;
          margin: 20px 0;
          bottom: 0px;
          span {
            margin: 0 auto;
          }
        }
      }
      .card1:hover {
        box-shadow: 0 0 2px 1px rgb(226, 224, 224) inset;
      }
    }
  }
}

// 搜索框
.srearch-1 {
  width: 100%;
  height: 74px;
  // background-color: white!important;
}
.search {
  position: relative;
  // background-color: rosybrown;
  width: 1220px;
  height: 74px;
  margin: 0 auto;

  .table {
    position: absolute;
    float: left;
    display: flex;
    li {
      display: block;
      float: left;
      height: 19px;
      line-height: 74px;
      margin-right: 30px;
      a {
        color: rgba(0, 0, 0, 0.7);
        font-size: 14px;
        text-decoration: none;
      }
    }
    .active {
      font-weight: 700;
      color: #333;
    }
    a:hover {
      color: rgb(120, 152, 226);
    }
  }
  .rightSearch {
    float: right;
    width: 330px;
    height: 36px;
    //   background-color: springgreen;
    margin-top: 18px;
    border: 1px solid rgba(0, 0, 0, 0.08);
    border-radius: 20px;
    img {
      float: left;
      margin: 7px 10px;
    }
    input {
      float: left;
      width: 268px;
      height: 34px;
      border: 0;
      color: #333;
      font-size: 14px;
      font-weight: 700;
    }
  }
}

// 底部导航
.dibutitle {
  margin-top: 25px;
  width: 100%;
  background-color: #fff;
}

.tabbar {
  width: 1220px;
  height: 226px;
  padding-top: 55px;
  // padding-bottom: 55px;
  margin: 0 auto;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);

  //   background-color: lawngreen;
  .text {
    float: left;
    ul {
      float: left;
      margin-right: 90px;
    }
    .first {
      padding-bottom: 20px;
      padding-top: 0;
      color: #646464;
      font-weight: 700;
      font-size: 12px;
    }
    li {
      padding: 7px 0;
      a {
        color: #969696;
        font-size: 12px;
        text-decoration: none;
      }
    }
  }
  .rightText {
    float: right;
    width: 150px;
    height: 107px;
    // background-color: lightblue;
    h1 {
      position: relative;
      font-size: 18px;
      font-weight: 600;
      line-height: 1;
      cursor: default;
      color: #5079d9;
    }
    h2 {
      font-size: 12px;
      line-height: 1;
      color: #999;
      margin: 15px 0 0;
      padding-left: 15px;
    }
    h3 {
      font-size: 12px;
      line-height: 1;
      color: #999;
      margin-top: 5px;
      padding-left: 77px;
    }
    button {
      width: 132px;
      height: 30px;
      border: 1px solid #999;
      border-radius: 5px;
      margin: 15px 0 0 15px;
      img {
        width: 12px;
        margin-right: 5px;
      }
      span {
        font-size: 12px;
        color: #5079d9;
        line-height: 28px;
        font-weight: 600;
      }
    }
  }
}
// 底部ICP
.dibu {
  width: 1220px;
  height: 112px;
  margin: 0 auto;
  // background-color: lightcoral;
  ul {
    padding: 30px 0 60px;
  }
  ul li {
    float: left;
    font-size: 12px;
    padding-right: 10px;
    padding-left: 10px;
    border-right: 1px solid #ababab;
    a {
      text-decoration: none;
      color: #ababab;
    }
    a:hover {
      color: #5079d9;
    }
    img {
      margin-top: -5px;
      margin-right: 5px;
    }
  }
  li:last-child {
    border-right: 0;
  }
  .ipc {
    margin-top: -65px;
    color: #ababab;
  }
}
</style>
