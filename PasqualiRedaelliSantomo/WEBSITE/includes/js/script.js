/*
Author:  Marco Santomo
Updated: June 2016
*/

$(function() {
	
	$('#alertMe').click(function(e) {
		
		e.preventDefault();
		
		$('#successAlert').slideDown();
		
	});
	
	$('a.pop').click(function(e) {
		e.preventDefault();
	});
	
	$('a.pop').popover();
	
	$('[rel="tooltip"]').tooltip();
	
	
});

function sendMail() {    
    var yourMessage = document.getElementById("inputMessage").value
    var subject = document.getElementById("inputObject").value
    var mail="mailto:indirizzodellatim@timhypermedia2016.it?subject="+subject+"&body="+yourMessage;
    window.location.href = mail;
}

$(document).bind("mobileinit", function () { 
$.support.cors = true; 
$.mobile.allowCrossDomainPages = true; });