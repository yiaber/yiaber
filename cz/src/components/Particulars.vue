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
    <!-- 商品颜色、容量规格、保修服务说明 -->
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
            <li>
              <div class="part-info-wrapper-li">
                <div class="part-info-wrapper-left">
                  <h1>坚果 R2 意外碎屏保修服务</h1>
                  <p>“屏幕意外摔碎，可以免费更换 ? ”</p>
                </div>
                <div class="part-info-wrapper-right">
                  <div class="part-info-money">
                    <span>249</span><span>&nbsp;&nbsp;元/1年</span>
                  </div>
                  <div class="part-info-text">
                    <font>折算后仅需</font><font>0.69</font><font>元/1天</font>
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="part-info-wrapper-li">
                <div class="part-info-wrapper-left">
                  <h1>坚果 R2 延长保修服务</h1>
                  <p>将额外多获得 1 年 保修服务</p>
                </div>
                <div class="part-info-wrapper-right">
                  <div class="part-info-money">
                    <span>149</span><span>&nbsp;&nbsp;元/1年</span>
                  </div>
                  <div class="part-info-text">
                    <font>折算后仅需</font><font>0.41</font><font>元/1天</font>
                  </div>
                </div>
              </div>
            </li>
          </ul>
          <!-- 长文字服务保修说明 -->
          <div class="part-info-lang">
            <div class="part-info-lang-left">
              <i>* 保修服务</i>
            </div>
            <div class="part-info-lang-right">
              <p>
                在您购买“坚果手机意外碎屏保修服务”后的有效期内，在非蓄意破坏的前提下，由于意外坠落、意外挤压或意外碰撞导致手机屏幕碎裂的，可以免费更换一次原装屏幕组件。您可在手机初次联网激活时或收货起
                （以在先时间为准）3 日内访问<a href="">bx.smartisan.com</a
                >网站购买，或在本机 设置 > 关于本机 > 保修服务
                中购买服务。服务细则参见
                <a href="">坚果手机意外碎屏保修服务条款</a> 。
              </p>
              <p>
                如您购买延长保修服务，在产品正常“三包”期结束后，将额外获得 1
                年保修服务。服务细则参见<a href=""
                  >《坚果手机延长保修服务条款》</a
                >
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 相关推荐 -->
    <div class="part-info-det">
      <div class="part-info-detail">
        <h1>相关推荐</h1>
      </div>
      <ul class="part-info-ietms">
        <li>
          <div>
            <img src="../assets/101.webp" alt="" />
            <h4>Smartisan 智能手写笔</h4>
            <h6>尽情挥洒创造力</h6>
            <p class="money">￥199.00</p>
          </div>
        </li>
      </ul>
    </div>
    <mybottom></mybottom>
  </div>
</template>
<script>
import mydetails from "./Details.vue";
import mybottom from "./Bottom.vue";
export default {
  components: { mydetails, mybottom },
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
      height: 930px;
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
            // margin-bottom: 10px;
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
        ul {
          float: left;
          width: 525px;
          height: 164px;
          li {
            width: 525px;
            // height: 72px;
            margin-bottom: 20px;
            // background-color: red;
            .part-info-wrapper-li {
              height: 70px;
              border: 1px solid #e5e5e5;
              border-radius: 7px;
              .part-info-wrapper-left {
                float: left;
                color: #333;
                margin-left: 20px;
                // background-color: red;
                h1 {
                  font-size: 18px;
                  font-weight: 400;
                  margin-top: 13px;
                }
                p {
                  font-size: 14px;
                  margin-top: 11px;
                  color: #999;
                }
              }
              .part-info-wrapper-right {
                height: 56px;
                position: relative;
                float: right;
                color: #d44d44;
                margin-right: 20px;
                .part-info-money {
                  width: 136.92px;
                  font-size: 14px;
                  margin-top: 9px;
                  span {
                    font-weight: 600;
                    color: #d44d44;
                    width: 50px;
                    height: 24px;
                    line-height: 36px;
                  }
                  span:first-child {
                    line-height: 36px;
                    height: 24px;
                    width: 36px;
                    font-size: 21px;
                  }
                }
                .part-info-text {
                  font-weight: 600;
                  position: absolute;
                  width: 150px;
                  height: 24px;
                  font-size: 13px;
                  top: 50px;
                  display: block;
                  font {
                    // line-height: 36px;
                    height: 24px;
                    font-size: 14px;
                    width: none;
                  }
                }
              }
            }
          }
        }
      }
      // 长文字服务保修说明
      .part-info-lang {
        width: 525px;
        height: 210px;
        padding-top: 30px;
        margin-left: 85px;
        font-size: 0;
        overflow: auto;
        // background-color: red;
        .part-info-lang-left {
          width: 72px;
          height: 20px;
          float: left;
          i {
            position: relative;
            line-height: 18px;
            font-size: 12px;
            color: #666;
            font-weight: 700;
          }
        }
        .part-info-lang-right {
          position: relative;
          width: 450px;
          float: left;
          line-height: 18px;
          font-size: 12px;
          color: #7a7a7a;
          margin-top: -3px;
          p {
            margin-bottom: 15px;
            line-height: 24px;
            text-align: justify;
            a {
              color: #5079d9;
              cursor: pointer;
              transition: all 0.15s ease-out;
              text-decoration: none;
            }
          }
        }
      }
    }
  }
  // 相关推荐
  .part-info-det {
    position: relative;
    padding-bottom: 50px;
    font-size: 0;
    width: 1220px;
    margin: 0 auto;
    .part-info-detail {
      width: 1220px;
      margin: 0 auto;
      font-size: 24px;
      font-weight: 700;
      color: #333;
      padding: 60px 0;
      h1 {
        text-align: left;
      }
    }
    .part-info-ietms {
      width: 1220px;
      height: 439px;
      li {
        position: relative;
        float: left;
        margin-right: 10px;
        margin-bottom: 10px;
        div {
          position: relative;
          width: 297px;
          height: 429px;
          box-sizing: border-box;
          border: 1px solid #e5e5e5;
          border-radius: 4px;
          // transition: box-shadow 0.15s ease-out;
          cursor: pointer;
          // background: transparent;
          img {
            padding: 45px 0 20px;
          }
          h4 {
            line-height: 1.2;
            font-size: 14px;
            color: #333;
            font-weight: 700;
            margin: 0 24px;
          }
          h6 {
            overflow: hidden;
            padding: 15px 24px 0;
            font-size: 12px;
            line-height: 1.2;
            // white-space: nowrap;
            // text-overflow: ellipsis;
            color: #999;
            margin-bottom: 50px;
          }
          .money {
            color: #d44d44 !important;
            font-size:18px;
            font-weight: 700;
            height: 30px;
            width: 100px;
            color: black;
            margin: 0 auto;
          }
        }
      }
    }
  }
}
</style>