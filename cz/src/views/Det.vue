<template>
  <div>
    <div class="head">
      <!-- 左边锤子log -->
      <div class="log">
        <img src="../assets/下载.png" alt="" />
      </div>
      <!-- 中间导航栏 -->
    

      <!-- 右边用户和购物车 -->
      <div class="right">
        <div class="touxiang1">
          <div class="touxiang"> </div>
          <div class="user">
            <div class="portrait">
              <div></div>
              <p>用户名</p>
            </div>
            <ul class="title">
              <li>
                <img src="../assets/imgages/logs/order.png" alt="" />
                <span>我的订单</span>
              </li>
              <li>
                <img src="../assets/imgages/logs/collect.png" alt="" />
                <span>售后服务</span>
              </li>
              <li>
                <img src="../assets/imgages/logs/coupon.png" alt="" />
                <span>我的优惠</span>
              </li>
              <li>
                <img src="../assets/imgages/logs/personalcenter.png" alt="" />
                <span>账户资料</span>
              </li>
              <li>
                <img src="../assets/imgages/logs/edit.png" alt="" />
                <span>收货地址</span>
              </li>
              <li>
                <img src="../assets/imgages/logs/close.png" alt="" />
                <span>退出登录</span>
              </li>
            </ul>
          </div>
        </div>

        <div class="gouwuche">
          <div></div>
        </div>
      </div>
    </div>
      <div class="center clearfix">
        <div class="container">
          <ul>
            <a href="">
              <li class="active">在线商城</li>
            </a>
            <a href="">
              <li>坚果R2</li>
            </a>
            <a href="">
              <li>Smartisan TNT go</li>
            </a>
            <a href="">
              <li>坚果 TNT 工作站</li>
            </a>
            <a href="">
              <li>Smartisan OS</li>
            </a>
            <a href="">
              <li>欢喜云</li>
            </a>
            <a href="">
              <li>应用</li>
            </a>
            <a href="">
              <li>论坛</li>
            </a>
            <a href="">
              <li>开发者支持</li>
            </a>
            <a href="">
              <li>荣誉与奖项</li>
            </a>
            <a href="">
              <li>加入我们</li>
            </a>
            <a href="">
              <li>下载APP</li>
            </a>
          </ul>
        </div>
      </div>
  </div>
</template>
<style lang="scss">

  // 中间导航栏样式
  .center {
    background-color: royalblue;
    width: 1143px !important;
    position: relative;
    margin-top: -30px;
    .active {
      color: #e5e5e5;
      font-weight: 700;
    }
  }
  .center ul li {
    float: left;
    color: hsla(0, 0%, 100%, 0.7);
    // cursor: pointer;
    font-size: 12px;
    margin: 0 20px;
    padding-top: 2px;
  }



// 导航栏
.head {
  // position: relative;
  width: 100%;
  height: 45px;
  background-image: linear-gradient(127deg, #222325, #3b3c3f, #222325);
  line-height: 45px;
  // 左边log样式
  .log {
    width: 20px;
    float: left;
    margin-left: 20px;
    background: red;
    img {
      margin-top: -6px;
    }
  }

  // 右边用户和购物车样式
  .right {
    position: absolute;
    top: 12px;
    right: 5px;
    margin-top: 20px;
    background-color: lawngreen;
    .touxiang1 {
      width: 170px;
      height: 380px;
      

      // background-color: red;
    }
    .touxiang {
      position: absolute;
      background-image: url(../assets/头像.png);
      background-size: 40px;
      width: 20px;
      height: 20px;
      right: 80px;
    }
    .touxiang1:hover .user {
      display: block;
    }
    .gouwuche {
      position: absolute;
      background-image: url(../assets/头像.png);
      background-size: 40px;
      background-position-x: 40px;
      background-position-y: 60px;
      width: 20px;
      height: 20px;
      right: 35px;
    }
    .user {
      border: 1px solid rgb(230, 221, 221);
      border-radius: 5px;
      display: none;
      position: absolute;
      width: 170px;
      height: 400px;
      right: -40px;
      margin-top: 34px;
      padding-top: 20px;
      font-size: 13px;
      color: #666666;
      .title img {
        width: 18px;
        margin-right: 15px;
      }
      .title span {
        margin-right: 30px;
      }
      .portrait div {
        margin: 0 auto;
        width: 48px;
        height: 48px;
        border-radius: 50%;
        background-size: 50px;
        background-image: url(../assets/imgages/logs/touxiang.png);
      }
    }
  }
}
</style>