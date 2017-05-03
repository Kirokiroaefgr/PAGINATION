$(function(){

	$(".selectPage").on('click',function(){
		var num = $(this).text();
		$("#selectNum").val(num);
//		console.log($("#selectNum").val());
		$('#mainPage').submit();
		return false;
	});

});
