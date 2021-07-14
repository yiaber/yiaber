<template>
  <div id="demo" class="carousel" :style="{width:innerWidth+'px'}">
      <!--1.轮播图片-->
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div v-for="(img,i) of imgs" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="img.to" :title="img.title">
          <img :src="img.src" :style="{width:innerWidth+'px'}"/>
        </router-link>
        <router-link :to="img.to" v-text="img.title"></router-link>
      </div>
      <div class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="imgs[0].to" :title="imgs[0].title">
          <img :src="imgs[0].src" :style="{width:innerWidth+'px'}"/>
        </router-link>
        <router-link :to="imgs[0].to" v-text="imgs[0].title"></router-link>
      </div>
    </div>
    <!--2.左右箭头-->
    <a href="javascript:;" @click="move(1)" class="carousel-control-next">
        <span class="carousel-control-next-icon"></span>
    </a>
    <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <!--3.轮播指示符-->
    <ul class="carousel-indicators">
        <li v-for="(img,idx) of imgs" :key="idx" :class="idx==i?'active':''" @click="moveTo(idx)">
        </li>
    </ul>
    <!-- <img src="../assets/lunbo/1.jpg" alt=""> -->
  </div>
</template>
<script>
export default {
  data(){
    return {
      innerWidth:window.innerWidth,
      ulClass:{ hasTrans:true },
      i:0,
      imgs:[
        {
          src:"../assets/lunbo/1.jpg",
          title:"《Ghost Mane》| STARR J与恶魔一起住在Dark Castle",
          to:"javascript:;"
        }
        // { 
        //   src:"/images/carousel_item/carousel-2.jpg",
        //   title:"赐我们一首比“情歌而已”更值得唱的歌 声音碎片第三支预热单曲《送流水》首发",
        //   to:"javascript:;"
        // },
        // { 
        //   src:"/images/carousel_item/carousel-3.jpg",
        //   title:"我眼里只有一个3号他永远昂着头 | 黄旭全新单曲《低位》致敬韦德",
        //   to:"javascript:;"
        // },
        // { 
        //   src:"/images/carousel_item/carousel-4.jpg",
        //   title:"彭坦春晓携女率性玩音乐 Modern Sky Kids厂牌汇聚亲子市场新能量",
        //   to:"javascript:;"
        // },
        /*{ 
          src:"/images/carousel_item/carousel-5.jpg",
          title:"曾轶可另类创作再出击 全新单曲《Truly》真心上线",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-6.jpg",
          title:"16层新专辑先行单曲上线，精巧器乐铺排搭建诡异《失落园》",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-7.jpg",
          title:"标题如歌” | OBi《爱你》温柔上线",
          to:"javascript:;"
        },
        { 
          src:"/images/carousel_item/carousel-8.jpg",
          title:"李大奔的硬核浪漫：如果不是你，随便谁都一样",
          to:"javascript:;"
        }*/
      ],
      canClick:true
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
  },
  methods:{
    move(i){
      if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){//如果向右移动，且正在显示第1张图片，就要骗
          this.ulClass.hasTrans=false;//去掉父级div上的transition样式类
          setTimeout(()=>{//等50ms后，再进行后续操作
            this.i=this.imgs.length; //悄悄的将父级div移动到最左边
            setTimeout(()=>{//等50ms后，再进行后续操作
              this.ulClass.hasTrans=true;//打开父级div上的transition效果
              this.i+=i;//正式向右移动一次
              setTimeout(()=>{//200s后，才允许单击
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.imgs.length-1){
          //如果向左移动，且现在已经显示最后一张了
          this.i+=i;//可以先带transition效果，左移一次
          setTimeout(()=>{//等左移完，再去掉transition效果，骗用户
            this.ulClass.hasTrans=false;
            setTimeout(()=>{//等50ms后，瞬间将父级div移动到显示第一张图片
              this.i=0;
              setTimeout(()=>{//等50ms后，再次启用transition，为下次提供动画
                this.ulClass.hasTrans=true;
                setTimeout(()=>{//稍等片刻之后允许单击
                  this.canClick=true;
                })
              },50)
            },50)
          },200)
        }else{//如果不是两端的情况，则保持原来的逻辑
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
    },
    moveTo(i){
      if(this.canClick){
        this.i=i;
        this.canClick=false;
        setTimeout(()=>{
          this.canClick=true;
        },300)
      }
    }
  },
  computed:{
    ulStyle(){
      var width=this.innerWidth*(this.imgs.length+1)+"px";
      var marginLeft=-this.i*this.innerWidth+"px";  
      return { width, marginLeft }
    }
  }
}
</script>


