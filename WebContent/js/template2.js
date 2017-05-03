$(function(){
  // ここにプログラムを記述
	console.log("こんばんは");
	$('#02').on('click',function(){
		var aa=$(this).affr('id');
		console.log(aa);
		console.log("あｓｆ");
		 var str = $("#hoge").val();
		 console.log(str);
		$("#hoge").val("hogehoge");
		console.log($("#hoge").val());
		return false;
	});
});
