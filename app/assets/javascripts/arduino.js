
function toggleState(image){
		if(image.idName == "on"){
			image.src = 'images/off_button_1.svg';
			image.idName="off";
			image.value="OFF";
			  $.get('/off');
			
		} 
		else {
			image.src = 'images/on_button_1.svg';	
			image.idName="on";
			image.value="ON";
			$.get('/on');	
					
		}
	};