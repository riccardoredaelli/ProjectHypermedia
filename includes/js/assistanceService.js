function evan(){
    console.log("Sono pronto a caricare il servizio");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM servizioassistenza, categoriaservizioassistenza WHERE servizioassistenza.categoriaservizioassistenza=categoriaservizioassistenza.idservizio ORDER BY servizioassistenza.idservizioassistenza"},
        success: function(response) {
            var assistanceservice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            
            var containerName = document.getElementById("serviceName");
            var nomecategoria=document.getElementById("nomecategoria");
            var nomeservizio=document.getElementById("nomeservizio");            
            
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
            
            //orientationinfo
            var categoria=document.createElement("a");
            var nomecat=document.createTextNode(assistanceservice[myParam-1].nomeservizio);
            categoria.setAttribute("href", "assistance_services_by_category.html?c=3?category="+assistanceservice[myParam-1].idservizio);
            categoria.appendChild(nomecat);
            nomecategoria.appendChild(categoria);
            
            nomeservizio.appendChild(document.createTextNode(assistanceservice[myParam-1].nomeservizioassistenza));
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

$(document).ready(evan);