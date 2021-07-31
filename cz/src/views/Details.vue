<template>
  <div>
    <div class="head">
      <img class="logo" src="../assets/下载.png" alt="" />
      <div class="nav clearfix">
        <ul>
          <li>
            <router-link to="/">在线商城</router-link>
          </li>
          <li>
            <a href="">坚果 R2</a>
          </li>
          <li>
            <a href="">Smartisan TNT go</a>
          </li>
          <li>
            <a href="">坚果 TNT 工作站</a>
          </li>
          <li>
            <a href="">Smartisan OS</a>
          </li>
          <li>
            <a href="">欢喜云</a>
          </li>
          <li>
            <a href="">应用</a>
          </li>
          <li>
            <a href="">论坛</a>
          </li>
          <li>
            <a href="">开发者支持</a>
          </li>
          <li>
            <a href="">荣誉与奖项</a>
          </li>
          <li>
            <a href="">加入我们</a>
          </li>
          <li>
            <a href="">下载APP</a>
          </li>
        </ul>
      </div>
      <div class="touxiang">
        <router-link to="/login">
          <div></div>
        </router-link>
      </div>
      <div class="gouwuche">
        <a href=""><div></div></a>
      </div>
    </div>
  </div>
</template>
<style lang="scss" scoped>
.head {
  position: relative;
  width: 100%;
  background-image: linear-gradient(127deg, #222325, #3b3c3f, #222325);
  line-height: 45px;
  height: 45px;
  .logo {
    float: left;
    margin-top: 12px;
    margin-left: 20px;
  }
  .nav {
    width: 75%;
    margin: 0 auto;
    justify-content: center;
    ul {
      li {
        float: left;
        display: block;
        height: 100%;
        margin-right: 40px;
        a {
          font-size: 12px;
          color: hsla(0, 0%, 100%, 0.7);
          text-decoration: none;
        }
      }
    }
  }
  .touxiang a >div {
      position: absolute;
      background-image: url(../assets/头像.png);
      background-size: 40px;
      width: 20px;
      height: 20px;
      right: 60px;
      top: 15px;  
  }
  .gouwuche a>div {
      position: absolute;
      background-image: url(../assets/头像.png);
      background-size: 40px;
      background-position-x: 40px;
      background-position-y: 60px;
      width: 20px;
      height: 20px;
      right: 25px;
      top: 15px;
    }
}
</style>
