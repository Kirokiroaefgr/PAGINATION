$(function(){
  // ここにプログラムを記述
	console.log("こんばんは");
	$(".bnl").on('click',function(){
		console.log("あｓｆ");
		var id = $(this).attr("id");
		console.log(id);
		return false;
	});
});
