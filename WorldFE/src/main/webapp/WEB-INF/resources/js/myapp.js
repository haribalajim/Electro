$(function(){
//solving active problem
	switch(menu)
	{
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Home':
		$('#home').addClass('active');
		break;
		default:
			$('#home').addClass('active');
		break;
	}
});