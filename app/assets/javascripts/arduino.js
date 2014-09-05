
function toggleState_one(image){
		if(image.idName == "one_on"){
			image.src = 'images/off_button_1.svg';
			image.idName="one_off";	
			  $.get('/one_off');  	
		} 
		else {
			image.src = 'images/on_button_1.svg';	
			image.idName="one_on";
			$.get('/one_on');			
		}
 	};
function toggleState_two(image2){
		if(image2.idName == "two_on"){
			image2.src = 'images/off_button_2.svg';
			image2.idName="two_off";	
			  $.get('/two_off');
		} 
		else {
			image2.src = 'images/on_button_2.svg';	
			image2.idName="two_on";
			$.get('/two_on');	
		}
	};

function toggleState_three(image3){
		if(image3.idName == "three_on"){
			image3.src = 'images/off_button_3.svg';
			image3.idName="three_off";
			  $.get('/three_off');
		} 
		else {
			image3.src = 'images/on_button_3.svg';	
			image3.idName="three_on";
			$.get('/three_on');	
		}
	};

function toggleState_four(image4){
		if(image4.idName == "four_on"){
			image4.src = 'images/off_button_4.svg';
			image4.idName="four_off";
			  $.get('/four_off');
			
		} 
		else {
			image4.src = 'images/on_button_4.svg';	
			image4.idName="four_on";
			$.get('/four_on');	
					
		}
	};



