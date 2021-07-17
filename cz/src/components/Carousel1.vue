<template>
    <div>
        <div :style="{width:innerwidth+'px'}" class="carousel">
            <div class="carous" :style="ulStyle" :class="ulClass">
                <div v-for="(p,i) of cospic" :key="i" :style="{width:innerwidth+'px','background-image':`url(${p.c_pic})`,'background-size':'138% 100%','background-position':'-350px'}" class="carous-item">
                </div>
                <div :style="{width:innerwidth+'px','background-image':`url(${cospic[0].c_pic})`,'background-size':'138% 100%','background-position':'-350px'}">
                </div>   
                <ul class="carous-indi">
                    <li v-for="(img,index) of cospic" :key="index" :class="index==i?'active':''"  @click="moveTo(index)"></li>
                </ul>   
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
      return{
        i:0,
        innerwidth:window.innerWidth,
        // cospic:[{c_pic:""}],
        cospic:[{img:''}],
        ulClass:{
            hastrans:true
        },
        timer:null,
        clickOk:true
      }
    },
    created(){
        window.addEventListener("resize",()=>{
             this.innerwidth=window.innerWidth<1660?1660:window.innerWidth          
        })
        this.start()
    },
    mounted(){
      this.axios.get("/carousel").then(result=>{
        this.cospic=result.data.results
        console.log(this.cospic[1].img)
      })
    },
    computed:{
        ulStyle(){
            var width=`${this.innerwidth*(this.cospic.length+1)}px`;
            var marginLeft=-this.i*this.innerwidth+"px";
            return {width,marginLeft}
        }
    },
    methods:{
        move(){
             this.i++;
             this.ulClass.hastrans=true;
             if(this.i>4){
                 this.ulClass.hastrans=false;
                 this.i=0
             }
        },
        moveTo(i){
            if(this.clickOk) {
                this.i=i;
                this.clickOk=false;
                };
            setTimeout(() => {
                this.clickOk=true;
            }, 500);

        },
        start(){
            this.timer=setInterval(()=>{
                this.move();
            },4000)
        }
    }
}
</script>

<style  scoped>
.carousel{
    overflow: hidden;
    height: 610px;
    position: relative;
    top: 120px;
    }
 .carous{
    display: flex;
    height: 100%;}
.carousel>.carous.hastrans{
    transition: margin-left .9s linear;
}
.carous-item{
    overflow: hidden;
    height: 100%;
 }
 .carous-indi{
     position: absolute;
     overflow: hidden;
     bottom: 18px;
     left: 50%;
     margin-left: -96px;
     display: flex;
 }
.carous-indi> li{
    width: 9px;
    height: 9px;
    background-color: #c2c2c2;
    border-radius: 50%;
    margin: 0 20px;
}
.carous-indi > .active{
    background-color: #fff;
}
</style>