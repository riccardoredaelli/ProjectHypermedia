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

function compatible(){
    console.log("Sono pronto a caricare i dispositivi compatibili");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo, dispositivo_servizioassistenza, servizioassistenza WHERE servizioassistenza.idservizioassistenza=dispositivo_servizioassistenza.id_servizioassistenza_dsa AND dispositivo.id=dispositivo_servizioassistenza.id_dispositivo_dsa ORDER BY dispositivo.id"},
        success: function(response) {
            var compatibledevice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleDevices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibledevice.length; i++){
                if (compatibledevice[i].id_servizioassistenza_dsa == myParam){
          
                var urlCategoria = "device.html?c=1?device=" +compatibledevice[i].id;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/devices/" + compatibledevice[i].immagine;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Scopri");
                nomeTemp.appendChild(nome);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-2 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
              
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(compatibledevice[i].nome));
                
              
                categoriaPanel.appendChild(imgTemp);
                categoriaPanel.appendChild(panelTitle);
                categoriaPanel.appendChild(nomeTemp);
                categoria.appendChild(categoriaPanel);
              
                row.appendChild(categoria);
                    
                }
                
                containerImg.appendChild(row);
            }
            
          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

$(document).ready(evan);
$(document).ready(compatible);