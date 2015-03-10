/**
 * 投入到下一轮比赛
 */
var switchtonextround = function(userid, raceid, jointype) {
	$
			.ajax({
				async : false,
				cache : false,
				type : 'POST',
				dataType : "json",
				data : {
					joinuserid : userid,
					raceid : raceid,
					jointype : jointype
				},
				url : 'switchDocToNextRound.do',// 请求的action路径
				error : function() {// 请求失败处理函数
					MessageWindow
							.showMess('    ');
				},
				success : function(data) {
					if (data.mess == '0') {
						$("#joinracediv").dialog("close");
						MessageWindow.showMess('   ');
						window.location.href = 'raceindex.do';
					} else if (data.mess == '3') {
						MessageWindow
								.showMess('     ');
					} else if (data.mess == '4') {
						MessageWindow
								.showMess('  '
										+ raceModelJson.raceModel.round
										+ '     <br/>    <br/>    ');
					} else if (data.mess == '5') {
						MessageWindow
								.showMess('       ');
					} else if (data.mess == '6') {
						MessageWindow.showMess('    ');
					} else if (data.mess == '7') {
						MessageWindow.showMess('   ');
					} else if (data.mess == '8') {
						MessageWindow.showMess(' '
								+ (raceModelJson.raceModel.round + 1)
								+ '      ');
					}
				}
			});
};
//$(document).ready(function() {
//	alert($("#box3_list")[0].scrollHeight);
//	$("#box3_title").css({
//		height : $("#box3_list")[0].scrollHeight
//	});
//});