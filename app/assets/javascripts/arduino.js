
function toggleState(image){
		if(image.idName == "on"){
			image.src = 'images/off_button_1.svg';
			image.idName="off";	
			  $.get('/off');
			
		} 
		else {
			image.src = 'images/on_button_1.svg';	
			image.idName="on";
			$.get('/on');	
					
		}
	};