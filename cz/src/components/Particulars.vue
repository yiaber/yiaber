<template>
  <div class="part">
    <mydetails></mydetails>
    <div class="part-tanbar">
      <div class="part-text">
        <ul>
          <li><a href="">概览</a></li>
          <li><a href="">设计</a></li>
          <li><a href="">功能</a></li>
          <li><a href="">相机</a></li>
          <li><a href="">操作系统</a></li>
          <li><a href="">技术规格</a></li>
        </ul>
        <a href="">优先购买码</a>
      </div>
    </div>
    <div class="part-info">
      <div class="part-info-left">
        <img src="../assets/11.webp" alt="" />
      </div>
      <div class="part-info-right">
        <div class="part-info-title">
          <h1>坚果 R2</h1>
          <h2>是下一代手机，更是下一代电脑</h2>
        </div>
        <!-- 颜色选择 -->
        <div class="part-info-clear">
          <span>颜色选择</span>
          <ul>
            <li><div>浅墨色</div></li>
            <li><div>松绿色</div></li>
            <li><div>纯白色光阴特别版</div></li>
          </ul>
        </div>
        <!-- 规格选择 -->
        <div class="part-info-spec">
          <span>容量选择</span>
          <ul>
            <li><div>8G+128G</div></li>
            <li><div>8G+256G</div></li>
            <li><div>12G+256G</div></li>
            <li><div>16G+512G</div></li>
          </ul>
        </div>
        <!-- 服务说明 -->
        <div class="part-info-tips">
          <div>服务说明</div>
          <p>满 88 元包邮</p>
        </div>
        <!-- 保修服务 -->
        <div class="part-info-wrapper">
          <span>保修服务</span>
          <ul>
            <li></li>
            <li></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import mydetails from "./Details.vue";
export default {
  components: { mydetails },
};
</script>
<style lang="scss" scoped>
body {
  background: #fff !important;
}
.part {
  background-color: #fff;
  //子导航栏
  .part-tanbar {
    width: 100%;
    height: 38px;
    background-color: rgb(247, 247, 247);
    border-bottom: 1px solid rgba(0, 0, 0, 0.14);
    .part-text {
      width: 1220px;
      height: 37px;
      margin: 0 auto;
      position: relative;
      ul {
        position: absolute;
        width: 372px;
        height: 38px;
        li {
          float: left;
          display: block;
          line-height: 38px;
          a {
            padding: 0 15px;
            font-size: 12px;
            color: rgba(0, 0, 0, 0.5);
            transition: all 0.15s ease-out;
          }
          a:hover {
            font-weight: 700;
          }
        }
      }
      a {
        display: block;
        float: right;
        padding: 0px 15px;
        font-size: 12px;
        color: rgba(0, 0, 0, 0.5);
        transition: all 0.15s ease-out;
        line-height: 38px;
      }
      a:hover {
        font-weight: 900;
        color: #000;
      }
    }
  }
  //手机图片详情规格...
  .part-info {
    margin: 0 auto;
    // background-color: red;
    width: 1220px;
    height: 910px;
    padding-top: 50px;
    .part-info-left {
      position: absolute;
      width: 610px;
      height: 500px;
      float: left;
      img {
        width: 500px;
      }
    }
    .part-info-right {
      text-align: left;
      width: 610px;
      height: 910px;
      margin-left: 610px;
      // background-color: aqua;
      float: left;
      .part-info-title {
        padding-bottom: 30px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.08);
        h1 {
          font-size: 30px;
          color: #000;
          text-align: left;
        }
        h2 {
          color: #999;
          font-size: 14px;
          text-align: left;
          padding-top: 20px;
          line-height: 25px;
        }
      }
      // 颜色选择
      .part-info-clear {
        width: 100%;
        height: 89px;
        // background-color: red;
        margin-top: 30px;
        span {
          width: 85px;
          height: 45px;
          line-height: 45px;
          font-size: 14px;
          color: #666;
          display: inline-block;
        }
        ul {
          width: 525px;
          height: 84px;
          display: inline-block;
          border-bottom: 1px dashed rgba(0, 0, 0, 0.08);
        }
        ul > li {
          position: relative;
          display: inline-block;
          border: 1px solid #999;
          border-radius: 7px;
          cursor: pointer;
          transition: box-shadow 0.15s linear;
          margin-right: 10px;
          margin-bottom: 10px;
          div {
            display: block;
            line-height: 1.4;
            text-align: left;
            padding: 13px;
            color: #323232;
            font-size: 18px;
          }
        }
      }
      // 规格选择
      .part-info-spec {
        width: 100%;
        height: 151px;
        // background-color: red;
        margin-top: 30px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.08);
        position: relative;
        padding-bottom: 20px;
        span {
          position: absolute;
          width: 85px;
          height: 45px;
          line-height: 45px;
          font-size: 14px;
          color: #666;
          display: inline-block;
        }
        ul {
          width: 525px;
          height: 146px;
          display: inline-block;
          margin-left: 85px;
        }
        ul > li {
          position: relative;
          display: inline-block;
          border: 1px solid #999;
          border-radius: 7px;
          cursor: pointer;
          transition: box-shadow 0.15s linear;
          margin-right: 10px;
          margin-bottom: 10px;
          div {
            display: block;
            line-height: 1.4;
            text-align: left;
            padding: 13px;
            color: #323232;
            font-size: 18px;
            margin-right: 10px;
            margin-bottom: 10px;
          }
        }
      }
      // 服务说明
      .part-info-tips {
        padding: 25px 0;
        padding-bottom: 40px;
        border-bottom: 1px solid rgba(0, 0, 0, 0.08);
        div {
          width: 85px;
          color: #666;
          font-size: 14px;
          float: left;
        }
        p::before {
          content: "*";
          top: 2px;
          margin: auto;
          position: absolute;
          left: 0;
          font-size: 14px;
        }
        p {
          float: left;
          position: relative;
          line-height: 1.5;
          padding-left: 10px;
          color: #999;
          font-size: 12px;
        }
      }
      // 保修服务
      .part-info-wrapper {
        width: 610px;
        height: 435px;
        padding: 30px 0;
        // background-color: red;
        span {
          width: 85px;
          height: 70px;
          line-height: 70px;
          color: #666;
          font-size: 14px;
          float: left;
          box-sizing: border-box;
        }
      }
    }
  }
}
</style>