<template>
  <div>
    <div class="banner">
      <!-- 整个图片的区域 -->
      <div class="banner-box">
        <!-- 放图片的 -->
        <ul>
          <li><img src="../assets/carousel/img13.webp" alt="" /></li>
        </ul>
        <!-- 左右箭头 -->
        <a href="" class="carousel-next">
          <img src="../assets/lunbo/zuo.png" alt="" />
        </a>
        <a href="" class="carousel-prev">
          <img src="../assets/lunbo/you.png" alt="" />
        </a>
        <!-- 切换的按钮 -->
        <div class="banner-tab">
          <a href="#" class="active1"></a>
          <a href="#"></a>
          <a href="#"></a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style lang="scss" scoped>
.banner {
  width: 1220px;
  margin: 0 auto;
  border-radius: 8px;
  border: 1px solid rgba(0, 0, 0, 0.14);
  height: 554px;
  .banner-box {
    position: relative;
    width: 100%;
    height: 554px;
    overflow: hidden;
      li {
        img{
          overflow: hidden;
        }
      }
    .banner-tab {
      display: block;
      position: absolute;
      left: 50%;
      transform: translateX(-50%);
      top: 520px;
      // background-color: red;
      a {
        width: 30px;
        height: 5px;
        background-color: #888;
        display: inline-block;
        margin: 0 10px;
      }
      .active1 {
        background-color: #67737e !important;
      }
    }
   .carousel-next{
     img{
       width: 40px;
       height: 60px;
     }
     position: absolute;
    left: 20px;
    bottom: 50%;
   }
   .carousel-prev{
      img{
       width: 40px;
       height: 60px;
     }
      position: absolute;
     right: 20px;
     bottom: 50%;
   }
  }
}
</style>