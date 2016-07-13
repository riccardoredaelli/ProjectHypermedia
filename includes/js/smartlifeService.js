function evan(){
    console.log("Sono pronto a caricare il servizio");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getSmartlifeService.php", //Relative or absolute path to file.php file
        data: {smartlifeservice:iddispositivo},
        success: function(response) {
            var smartlifeservice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            
            var containerImg = document.getElementById("serviceImage"); 
            var nomecategoria = document.getElementById("nomecategoria"); 
            var nomeservizio = document.getElementById("nomeservizio"); 
            
            var img = document.createElement("img");
            var urlImg = "images/smartlife/"+smartlifeservice[myParam-1].immaginesmartlifeservices;
            img.setAttribute('src', urlImg);
            img.setAttribute("class", "img-circle");
            containerImg.appendChild(img);
            
            var containerName = document.getElementById("serviceName");
            var phoneName = document.createElement("h2");
            var phoneNameText = document.createTextNode(smartlifeservice[myParam-1].nomesmartlifeservices);
            phoneName.appendChild(phoneNameText);
            containerName.appendChild(phoneName);
            
            var containerDescription = document.getElementById("serviceDescription");
            var description = document.createElement("h4");
            description.setAttribute("class", "margin-top");
            var descriptionText =document.createTextNode(smartlifeservice[myParam-1].descrizionesmartlifeservices);
            description.appendChild(descriptionText);
            containerDescription.appendChild(description);
            
            var containerFeatures = document.getElementById("serviceActivationRules");
            var features = document.createElement("h4");
            var featuresText =document.createTextNode(smartlifeservice[myParam-1].attivazionesmartlifeservices);
            features.appendChild(featuresText);
            containerFeatures.appendChild(features);

            var containerFeatures = document.getElementById("serviceFaq");
            var features = document.createElement("h4");
            var featuresText =document.createTextNode(smartlifeservice[myParam-1].faqsmartlifeservices);
            features.appendChild(featuresText);
            containerFeatures.appendChild(features);
            
            //Orientation info
            var link=document.createElement("a");
            var nomecat = document.createTextNode(smartlifeservice[myParam-1].nomesmartlife);
            var orientation1= document.getElementById("nomecategoria");
            link.setAttribute("href", "smartlife_services_by_category.html?category="+smartlifeservice[myParam-1].idsmartlife);
            link.appendChild(nomecat);
            orientation1.appendChild(link);
            
            nomeservizio.appendChild(document.createTextNode(smartlifeservice[myParam-1].nomesmartlifeservices));
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
        url: "includes/php/getSmartlifeServiceCompatibleDevices.php", //Relative or absolute path to file.php file
        data: {compatibledevice:iddispositivo},
        success: function(response) {
            var compatibledevice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleDevices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibledevice.length; i++){
                if (compatibledevice[i].id_smartlifeservice_dss == myParam){
          
                var urlCategoria = "device.html?device=" +compatibledevice[i].id;
                
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
                categoria.setAttribute("class", "col-sm-3 feature");
              
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