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
          <input type="text" placeholder="用户名" v-model="uname" @blur="checkUname"/>
          <span :style="{display:enname}">用户名格式不正确</span>
        </li>
        <li>
          <input type="password" placeholder="密码" v-model="upwd"/>
          <span :style="{display:enupwd}" style="color:red;fontSize:13px">密码错误</span>
        </li>
      </ul>
      <div class="title-di">
        <div class="text">
          <label>
            <input type="checkbox" class="input11" />
          <span>自动登录</span>
          </label>
        </div>
        <div class="aa">
          <div><a href="">短信验证码登录</a></div>
          <div><a href="">忘记密码？</a></div>
        </div>
      </div>
      <div class="btns">
        <button @click="checkForm">登录</button>
      </div>
      <div class="register">
        <span>
          还没有账号？快来 <router-link to="/register">注册</router-link>一个吧
        </span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      upwd:'',//密码
      uname:'',//用户名
      enname:'none',
      enupwd:'none'
    }
  },
  methods:{
    checkUname(){
      let reg=/^\w{6,15}$/;
      if(reg.test(this.uname)){
        this.enname='none'
         return true;
      }else{
       this.enname="inline-block";
        return false;
      }
    },
    checkForm(){
      if(this.checkUname()){
        this.axios.post("/login",`uname=${this.uname}&upwd=${this.upwd}`).then((result)=>{
          if(result.data.code==200){
            alert(`登录成功`);
            this.$router.push('/')
          }else if(result.data.code==201){
            this.enupwd="inline-block";
          }
        })
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
  .common-from li span{
    color:red;
    font-size:13px
  }
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
  .register{
    width: 100%;
    height: 30px;
    line-height: 30px;
    text-align: right;
    color:  rgb(153, 153, 153);;
    span{
      margin-right: 20px;
      a{
        color: rgba(29,161,243);
      }
    }
  }
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
    position: relative;
    margin-top: 70px;
    span {
      line-height: 40px;
      position: absolute;
      right: 20px;
      top: 5px;
      text-align: left;
    }
    input {
      width: 300px;
      font-weight: 700;
      font-size: 15px;
      height: 20px;
      padding: 12px 12px 12px 15px;
      border: none;
      position: absolute;
      z-index: 10;
      box-sizing: border-box;
      background: rgba(255, 255, 255, 0);
      left: 25px;
      top: 12px;
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