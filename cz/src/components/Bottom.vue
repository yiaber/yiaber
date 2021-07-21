<template>
    <div>
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
<style lang="scss" scoped>
    // 底部导航
.dibutitle {
 
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