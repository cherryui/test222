const express=require('express')
const mysql=require('mysql')
const bodyParser=require('body-parser')
const app=express()
app.use('/',express.static('public'))
app.set('view engine','ejs')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:false}))
var db=mysql.createPool({
	host:'localhost',
	port:'3306',
	user:'root',
	password:'newpass',
	database:'mov_l'
})
app.get('/',(req,res)=>{
	db.query('SELECT _id,title,poster FROM `movie_data`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			res.render(`index`,{title:'最新电影推荐',movies:data})
		}
	})
})
app.get('/detail/:id',(req,res)=>{
	let id=req.params.id
	db.query(`SELECT * FROM movie_data WHERE _id=${id}`,(err,data)=>{
		if(err){
			console.log(err)
		}else{
			res.render(`detail`,{title:'机械战警详情页',movie:data[0]})
		}
	})
})
app.get('/admin/list',(req,res)=>{
	db.query('SELECT * FROM `movie_data`',(err,data)=>{
		if(err){
			console.log(err)
		}else{
			res.render(`list`,{title:'后台列表管理页面',movies:data})
		}
	})
})
app.get('/admin/movie',(req,res)=>{
	res.render(`movie`,{
		title:'添加新电影表单',
		movie:[{
			_id:'',
			title:'',
			director:'',
			country:'',
			year:'',
			poster:'',
			language:'',
			flash:'',
			summary:''
		}]
	})
})
//接收添加数据请求
app.post('/admin/add',(req,res)=>{
	let [_title,_director,_country,_year,_poster,_language,_flash,_summary]=[req.body.title,req.body.director,req.body.country,req.body.year,req.body.poster,req.body.language,req.body.flash,req.body.summary]
	db.query(`INSERT INTO movie_data (title,director,country,year,poster,language,flash,summary) VALUES ('${_title}','${_director}','${_country}','${_year}','${_poster}','${_language}','${_flash}','${_summary}')`,(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log('添加成功：',data)
			res.json({
				status:200,
				msg:'添加成功',
				url:'/admin/list'
			})
		}
		
	})
})
//更新数据请求
app.get('/admin/update/:id',(req,res)=>{
	let id=req.params.id
	db.query(`SELECT * FROM movie_data WHERE _id=${id}`,(err,data)=>{
		if(err){
			console.log(err)
		}else{
			res.render(`movie`,{title:'修改当前信息',movie:data})
		}
	})
})
//更新请求
app.put('/admin/add',(req,res)=>{
	let id=req.body.id
	let [title,director,country,year,poster,language,flash,summary]=[req.body.title,req.body.director,req.body.country,req.body.year,req.body.poster,req.body.language,req.body.flash,req.body.summary]
	db.query(`UPDATE movie_data SET title=?,director=?,country=?,year=?,poster=?,language=?,flash=?,summary=? WHERE _id=${id}`,[title,director,country,year,poster,language,flash,summary],(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.json({
				status:200,
				msg:'update success',
				url:'/'
			})
		}
	})
})
//删除请求
app.delete('/admin/list',function(req,res){
	let id=req.body.id
	db.query(`DELETE FROM movie_data WHERE _id=${id}`,(err,data)=>{
		if(err){
			console.log(err)
		}else{
			console.log(data)
			res.json({
				status:200,
				msg:'delete success',
				url:'/'
			})
		}
	})
})
app.listen(3001)
