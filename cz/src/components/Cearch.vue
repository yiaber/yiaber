<template>
  <div class="creach">
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
          <input type="text" placeholder="请输入搜索的商品" v-model="fnames" @keyup.13="input" />
        </div>
      </div>
    </div>
    <!-- 列表框 -->
    <div class="search-tarban">
      <div class="search-tarban-none">
        <div class="search-tarban-item" v-for="(item,index) in search" :key="index">
          <img :src="'http://localhost:3000/'+item.imgage" alt="" />
          <h1>{{item.fname}}</h1>
          <h2>{{item.subtitle}}</h2>
          <span>￥{{item.price}}</span>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <mybottom></mybottom>
  </div>
</template>
<script>
import mydetails from "./Details.vue";
import mybottom from "./Bottom.vue";
export default {
  components: { mydetails, mybottom },
  props:["fname"],
  data() {
    return {
        search:[],
        fnames:'',//搜索的商品
    };
  },
  methods: {
    input(){
      this.axios.get(
        "/cearch",{params:{fname:this.fnames}}
      ).then(result=>{
        console.log(result.data);
        this.search=result.data
      })
    }
  },
  mounted(){
    //   console.log(this.fname)
      this.axios.get(
          "/cearch",{params:{fname:this.fname}}
      ).then(result=>{
          console.log(result.data)
          this.search=result.data
      })
  }
};
</script>
<style lang="scss" scoped>
.search-tarban {
  width: 100%;
  background-color: rgb(237, 237, 237);
  .search-tarban-none {
    width: 1220px;
    // height: 400px;
    // background-color: rgb(220, 128, 128);
    margin: 0 auto;
    margin-top: 20px;
    margin-bottom: 20px;
    border-radius: 8px;
    // position: relative;
    clear: both;
    .search-tarban-item {
      float: left;
      width: 305px;
      height: 429px;
      background-color: #fff;
      overflow: hidden;
      box-sizing: border-box;
      border: none;
    border-right: 1px solid #efefef;
    border-bottom: 1px solid #efefef;
    border-radius: initial;
    background: #fff;
      img {
        display: block;
        width: 216px;
        height: 216px;
        margin: 0 auto;
        padding: 45px 0 20px;
      }
      h1 {
        text-align: center;
        color: #333;
        font-size: 14px;
        font-weight: 900;
      }
      h2 {
        text-align: center;
        color: #999;
        font-size: 12px;
        padding: 15px 12px 0;
      }
      span {
        display: block;
        text-align: center;
        font-size: 18px;
        font-weight: bolder;
        color: #d44d44;
        margin: 45px 0;
      }
    }
    .search-tarban-item:hover{
        box-shadow: 0 0 13px 1px rgb(51,51,51,0.1) inset;
    }
    .clear {
      clear: both;
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
</style>