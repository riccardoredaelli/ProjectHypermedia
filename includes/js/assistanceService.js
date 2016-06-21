function evan(){
    console.log("Sono pronto a caricare il servizio");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getAssistanceService.php", //Relative or absolute path to file.php file
        data: {assistanceservice:iddispositivo},
        success: function(response) {
            var assistanceservice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            
            var containerName = document.getElementById("serviceName");
            var phoneName = document.createElement("h2");
            var phoneNameText = document.createTextNode(assistanceservice[myParam-1].nomeservizioassistenza);
            phoneName.appendChild(phoneNameText);
            containerName.appendChild(phoneName);
            
            var containerDescription = document.getElementById("serviceDescription");
            var description = document.createElement("h4");
            description.setAttribute("class", "margin-top");
            var descriptionText =document.createTextNode(assistanceservice[myParam-1].descrizioneservizioassistenza);
            description.appendChild(descriptionText);
            containerDescription.appendChild(description);
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

$(document).ready(evan);