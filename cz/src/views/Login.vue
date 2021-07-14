<template>
  <div class="bj">
    <div class="login">
      <div class="title">
        <div>
          <h4>使用 Smartisan ID 登录官网</h4>
        </div>
      </div>
      <ul class="common-from">
        <li>
          <input type="text" placeholder="手机号/邮箱" />
        </li>
        <li>
          <input type="password" placeholder="密码" />
        </li>
      </ul>
      <div class="title-di">
        <div class="text">
          <input type="checkbox" class="input11" />
          <span>自动登录</span>
        </div>
        <div class="aa">
          <div><a href="">短信验证码登录</a></div>
          <div><a href="">忘记密码？</a></div>
        </div>
      </div>
      <div class="btns">
        <button>登录</button>
      </div>
    </div>
  </div>
</template>
<style lang="scss"scope>
.bj {
  overflow: auto;
  background-image: url(../assets/imgages/login/bj.png);
  background-size: auto;
  background-repeat: repeat;
  min-height: 100vh;
  min-width: 630px;
}
.login {
  width: 480px;
  height: 635px;
  margin: 0 auto;
  margin-top: 5%;
  border: 1px solid #dadada;
  font-weight: 700;
  border-radius: 12px;
  box-shadow: 0 20px 50px rgb(0 0 0 / 15%);
  background: #fff;
 .btns{
    button{
    width: 444px;
    height: 60px;
    line-height: 60px;
    box-sizing: border-box;
    background: #5c89f2;
    border: 1px solid #3d70ef;
    box-shadow: none;
    border-radius: 10px;
    overflow: hidden;
    margin: 18px;
    outline: none;
    font-size: 18px;
    color: #fff;
    text-shadow: #4f70b3 0 -1px 0;
    font-weight: 900;
  }
  button:hover{
    background: #5482F1;
  }
 }
  .title-di {
    width: 420px;
    height: 28px;
    .text {
      float: left;
      margin-left: 30px;
      span {
        margin-left: 8px;
        color: rgb(153, 153, 153);
        font-size: 15px;
      }
      .input11 {
        border-radius: 30px;
      }
    }
    .aa {
      float: right;
      a {
        text-decoration: none;
        font-size: 13px;
      }
      div {
        display: block;
      }
      div:first-child {
        float: left;
        margin-right: 5px;
      }
      div:last-child {
        float: right;
        border-left: 1px solid rgb(153, 153, 153);
        margin-right: -30px;
        padding-left: 5px;
      }
    }
  }
  li {
    margin: 20px;
    margin-top: 40px;
    width: 444px;
    height: 44px;
    background: rgba(0, 0, 0, 0.03);
    box-shadow: none;
    border-radius: 8px;
    border: 1px solid rgba(0, 0, 0, 0.08);
    font-size: 15px;
    line-height: 40px;
    position: relative;
  }
  .common-from {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
    margin-top: 70px;
    span {
      line-height: 40px;
      left: 13px;
      text-align: left;
    }
    input {
      width: 372px;
      font-weight: 700;
      font-size: 15px;
      height: 20px;
      padding: 12px 12px 12px 15px;
      border: none;
      position: relative;
      z-index: 10;
      box-sizing: border-box;
      background: rgba(255, 255, 255, 0);
    }
  }
}
.title {
  width: 480px;
  height: 209px;
  // background-color: red;
  div {
    position: relative;
    height: 209px;
    background-size: 120px auto;
    background-repeat: no-repeat;
    background-position: center 30px;
    background-image: url(../assets/imgages/login/cloud_b308865e15.png);
    margin-bottom: 60px;
    h4 {
      height: 29px;
      line-height: 29px;
      font-size: 24px;
      font-weight: 500;
      color: rgba(0, 0, 0, 0.8);
      border-bottom: none;
      position: absolute;
      bottom: 0;
      width: 100%;
    }
  }
}
</style>