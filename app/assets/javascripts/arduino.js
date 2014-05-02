
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
function toggleState(image2){
		if(image2.idName == "on"){
			image2.src = 'images/off_button_2.svg';
			image2.idName="off";	
			  $.get('/off');
			
		} 
		else {
			image2.src = 'images/on_button_2.svg';	
			image2.idName="on";
			$.get('/on');	
					
		}
	};
function toggleState(image3){
		if(image3.idName == "on"){
			image3.src = 'images/off_button_3.svg';
			image3.idName="off";	
			  $.get('/off');
			
		} 
		else {
			image3.src = 'images/on_button_3.svg';	
			image3.idName="on";
			$.get('/on');	
					
		}
	};
function toggleState(image4){
		if(image4.idName == "on"){
			image4.src = 'images/off_button_3.svg';
			image4.idName="off";	
			  $.get('/off');
			
		} 
		else {
			image4.src = 'images/on_button_3.svg';	
			image4.idName="on";
			$.get('/on');	
					
		}
	};