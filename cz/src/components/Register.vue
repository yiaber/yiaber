<template>
  <div class="bj">
    <div class="login">
      <div class="title">
        <div>
          <h4>注册 Smartisan ID 账号 </h4>
        </div>
      </div>
      <ul class="common-from">
        <li>
          <input type="text" placeholder="用户名" v-model="uname" @blur="checkUname"/>
          <span :style="{display:unname}">用户名格式不对！</span>
          <span :style="{display:enname}" style="color:green">用户名格式正确</span>
        </li>
        <li>
          <input type="text" placeholder="手机号" v-model="phone" @blur="checkPhone"/>
          <span :style="{display:unphone}">手机号码格式不对！</span>
          <span :style="{display:enphone}" style="color:green">手机号码格式正确</span>
        </li>
        <li>
          <input type="password" placeholder="密码" />
          <span style="display:none">密码格式不正确！</span>
        </li>
        <li>
          <input type="password" placeholder="确认密码" />
          <span style="display:none">两次密码不一致！</span>
        </li>
      </ul>
      <div class="title-di">
        <div class="text">
          <input type="checkbox" class="input11" />
          <span>我已阅读并同意相关服务条款和隐私政策</span>
        </div>
        <div class="aa">
          <div>
            <router-link to="/login">返回登录页面</router-link>
          </div>
        </div>
      </div>
      <div class="btns">
        <button @click="checkForm">注册</button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
      uname:'' ,//uname将于用户名文本框实现双向绑定，实现用户名格式验证
      unname:'none',
      enname:'none',
      phone:'',//phone 将手机号码实现双向绑定，实现手机号码格式验证
      unphone:'none',
      enphone:'none'
    }
  },
  methods:{
    //点击注册之后执行验证表单
    checkUname(){
      //验证用户名 要求单词字符6~15位
      let reg=/^\w{6,15}$/;
      if(reg.test(this.uname)){//验证成功
        this.enname="inline-block";
        this.unname="none"
      }else{//验证失败
        this.unname="inline-block"
        this.enname="none"
      }
    },
    checkPhone(){
      let reg=/^\d{11}$/; 
      if(reg.test(this.phone)){
        this.enphone="inline-block",
        this.unphone="none"
      }else{
        this.unphone="inline-block",
        this.enphone="none"
      }
    }
  }
}
</script>
<style lang="scss"  scoped>
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
        font-size: 12px;
      }
      .input11 {
        border-radius: 30px;
        
      }
    }
    .aa {
      text-decoration: none;
      float: right;
      
      a {
        text-decoration: none;
        font-size: 13px;
        color:rgb(153, 153, 153);
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
        // border-left: 1px solid rgb(153, 153, 153);
        margin-right: -30px;
        padding-left: 5px;
      }
    }
  }
  li {
    margin: 0 auto;
    margin-bottom: 12px;
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
    position: relative;
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
    margin-top: 70px;
    span {
      position: absolute;
      line-height: 40px;
      right:20px;
      text-align: left;
      font-size: 12px;
      color: red;
    }
    input {
      width: 300px;
      font-weight: 700;
      font-size: 15px;
      height: 20px;
      padding: 12px 12px 12px 15px;
      border: none;
      position: relative;
      z-index: 10;
      box-sizing: border-box;
      background: rgba(255, 255, 255, 0);
      left: -20px;
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