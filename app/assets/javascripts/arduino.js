
function toggleState(item){
		if(item.idName == "on"){
			item.idName="off";
			item.value="OFF";
			  $.get('/off');
		} 
		else {
			item.idName="on";
			item.value="ON";
			$.get('/on');		
		}
	};