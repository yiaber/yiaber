// 加载Express模块
const express = require('express');

// 加载MySQL模块
const mysql = require('mysql');

// 加载bodyParser模块
const bodyParser = require('body-parser');



// 创建MySQL连接池
const pool = mysql.createPool({
  host: '127.0.0.1',   //MySQL服务器地址
  port: 3306,          //MySQL服务器端口号
  user: 'root',        //数据库用户的用户名
  password: '',        //数据库用户密码
  database: 'cz',    //数据库名称
  connectionLimit: 20, //最大连接数
  charset: 'utf8'      //数据库服务器的编码方式
});

// 创建服务器对象
const app = express();

app.use(bodyParser.urlencoded({
  extended: false
}));

app.use( express.static('./public') );
// 加载CORS模块
const cors = require('cors');

// 使用CORS中间件
app.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));

// 用户登录接口
app.post('/login', (req, res) => {
  //获取用户名和密码信息
  let uname = req.body.uname;
  let upwd = req.body.upwd;
  // SQL语句
  let sql = 'SELECT uid,uname,email,phone,username,gender,portrait FROM cz_user WHERE uname=? AND upwd=?';
  pool.query(sql, [uname, upwd], (error, results) => {
    if (error) throw error;
    if(results.length == 0){ //登录失败
      res.send({message:'login failed',code:201});
    } else {                 //登录成功
      res.send({message:'ok',code:200,result:results[0]});
    }
  });
});


//用户注册接口
app.post('/register',(req,res)=>{
  let uname=req.body.uname;
  let upwd=req.body.upwd;
  let phone=req.body.phone;
  //以uname为条件查询，保证用户名的唯一性
  let sql='select count(uid) AS count from cz_user where uname=?';
  pool.query(sql,[uname],(errer,result)=>{
    if (errer) throw errer;
    let count =result[0].count;
    if(count==0){
      //将用户的相关信息插入到数据表
      sql='insert cz_user(uname,upwd,phone) values(?,?,?)';
      pool.query(sql,[uname,upwd,phone],(errer,result)=>{
        if (errer) throw errer;
        res.send({msg:'ok',code:200});
      })
    }else{
      res.send({msg:'user exists',code:201});
    }
  });
});


//轮播图
app.get('/carousel',(req,res)=>{
  let sql='select*from cz_index_carousel';
  pool.query(sql,(error,results)=>{
    if (error) throw error;
    res.send({message:'ok',code:200,resules:results})
  })
});


//轮播图下面四张图
app.get('/home/index1',(req,res)=>{
  let sql='select*from cz_index_11';
  pool.query(sql,(error,result)=>{
    if (error)throw error;
    res.send({message:'ok',code:200,results:result})
  })
});


//查询热门商品
app.get('/home/index2',(req,res)=>{
  let sql='select*from cz_article where fid=1 or fid=8 or fid=9 or fid=14';
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    res.send({msg:'ok',res:result})
  })
})

//查询坚果R2及配件

app.get('/home/index/3',(req,res)=>{
  let sql='select*from cz_index';
  pool.query(sql,(errer,result)=>{
    if(errer) throw errer;
    res.send({msg:'ok',result:result})
  })
})
//坚果R2及配件
app.get('/home/index/31',(req,res)=>{
  let sql='select*from cz_article where fid=1 or fid=4 or fid=6 or fid=17 or fid=19 or fid=21';
  pool.query(sql,(errer,result)=>{
    if(errer) throw errer;
    res.send({msg:'ok',result:result})
  })
})
//Smartisan TNT
app.get('/home/index/32',(req,res)=>{
  let sql='select*from cz_article where fid=14 or fid=23 or fid=13 or fid=22 or fid=16 or fid=12';
  pool.query(sql,(errer,result)=>{
    if (errer) throw errer;
    res.send({msg:'ok',result:result})
  })
})
//官方精选配件
app.get('/home/index/33',(req,res)=>{
  let sql='select*from cz_article where fid=8 or fid=15 or fid=24 or fid=10 or fid=25 or fid=7';
  pool.query(sql,(errer,result)=>{
    if (errer) throw errer;
    res.send({msg:'ok',result:result})
  })
})
//足迹系列保护壳
app.get('/home/index/34',(req,res)=>{
  let sql='select*from cz_article where fid=17 or fid=26 or fid=27 or fid=28 or fid=29 or fid=30';
  pool.query(sql,(errer,result)=>{
    if (errer) throw errer;
    res.send({msg:'ok',result:result})
  })
})

//商品详情
app.get('/details',(req,res)=>{
  //获取地址栏的id参数
  let fid=req.query.fid;
  let sql="select *from cz_article where fid=?";
  pool.query(sql,[fid],(errer,result)=>{
    if (errer) throw errer;
    console.log(result[0])
    let fname=result[0].fname
    let sql="select*from cz_article where fname=?";
    pool.query(sql,[fname],(errer,result)=>{
      if(errer) throw errer;
      console.log(result);
    })
    res.send({msg:'ok',code:200,result:result[0]})
  })
})


// 指定服务器对象监听的端口号
app.listen(3000, () => {
  console.log('server is running...');
});