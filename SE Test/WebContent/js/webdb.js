var express = require('express');
var app = express(); //express 는 함수 
app.use(express.static('public')); //public 이라는 정적 폴더를 서비스하기 위한 미들웨어 //app를 끄집어 내서 3개의 미들웨어를 설치 //app 는 객체 
app.use(express.bodyParser());
app.use(app.router);
//member list 전체 목록을 받는다. 
app.all('/list',function(request,response){ 
	// console.log('예약내용 출력');
	// client.query('reservation'); //reservation이라는 databse를 사용하겠다. 
	var sql = 'select * from reservation';
	client.query(sql,function(error,result){
	// console.log(result); //정상적으로 결과가 나왔으면 result 출력 
		response.send(result)    //list를 요청하면 result를 데이타로 뿌린다.  //json방식으로 넘겨준다. 
	});
});
//멤버 추가
app.all('/add',function(request,response){
	// console.log('예약 완료');
	var name = request.param('name'); //데이터타입:문자
	var pnum1 = request.param('pnum1');
	var pnum2 = request.param('pnum2');
	var pnum3 = request.param('pnum3');
	var year = request.param('year');
	var month = request.param('month');
	var date = request.param('date');
	var message = request.param('message');
	// console.log(name+","+pnum1+","+pnum2+","+pnum3+","+year+","+month+","+date+","+message); //id값이 넘어왔는지 확인
	var sql = "insert into reservation(name,pnum1,pnum2,pnum3,year,month,date,message)values(?,?,?,?,?,?,?,?)";
	client.query(sql,
		[name,pnum1,pnum2,pnum3,year,month,date,message], //query에 입력된 값이 있으면 두번째 매개변수가 필요하다.
		function(error,result){    
		response.send(pnum3);
	});
});
//멤버 삭제
app.all('/remove',function(request,response){
	// console.log('멤버 삭제');
	var res = request.param('res'); //데이터타입:배열
	// console.log(res);
	for(var i=0; i<res.length; i++){  //배열의 개수만큼 삭제문이 돌아가야함 
		var sql = 'delete from member where id=?';
		client.query(sql,[res[i]],function(){});
	} 
	response.send(res);
});
//멤버 수정
app.all('/modifyById',function(request,response){
	// console.log('멤버한명 수정');
	var name = request.param('name'); //데이터타입:문자
	var pnum1 = request.param('pnum1');
	var pnum2 = request.param('pnum2');
	var pnum3 = request.param('pnum3');
	var year = request.param('year');
	var month = request.param('month');
	var date = request.param('date');
	var message = request.param('message');
	var sql = "update member set name=?,pnum1=?,pnum2=?,year=?,month=?,date=?,message=? where pnum3=?";
	client.query(sql,
		[name,pnum1,pnum2,pnum3,year,month,date,message],  //물음표 순서대로 
	function(error,result){
		response.send(pnum3);
	});
});
http.createServer(app).listen(80,function(){  //http.createServer(app)의 결과물은 객체  //80번 포트를 열어서 쓰겠다.(80번을 허락받아야되니까 기다려야하기떄문에 start가 아닌 listen) 허락하면 ->이벤트 : 콜백함수 => 매개변수자리에 온다. 
	console.log('Server Running at http://127.0.0.1');
});
