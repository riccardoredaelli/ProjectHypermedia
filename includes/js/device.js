function evan(){
    console.log("Sono pronto a caricare il dispositivo");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getDevice.php", //Relative or absolute path to file.php file
        data: {dispositivo:iddispositivo},
        success: function(response) {
            var dispositivo=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            
            var containerImg = document.getElementById("deviceImg"); 
            var img = document.createElement("img");
            var urlImg = "images/devices/"+dispositivo[myParam-1].immagine;
            img.setAttribute('src', urlImg);
            img.setAttribute("class", "img-responsive");
            containerImg.appendChild(img);
            
            var containerName = document.getElementById("deviceName");
            var phoneName = document.createElement("h2");
            var phoneNameText = document.createTextNode(dispositivo[myParam-1].nome);
            phoneName.appendChild(phoneNameText);
            containerName.appendChild(phoneName);
            
            var containerDescription = document.getElementById("deviceDescription");
            var description = document.createElement("h4");
            description.setAttribute("class", "margin-top");
            var descriptionText =document.createTextNode(dispositivo[myParam-1].descrizione);
            description.appendChild(descriptionText);
            containerDescription.appendChild(description);
            
            //inizio caratteristiche tecniche
            var listGroup = document.createElement("div");
            listGroup.setAttribute("class", "list-group margin-top");
            //memoria item
            var listGroupMemoria = document.createElement("div");
            listGroupMemoria.setAttribute("class", "list-group-item");
            var memoriaString = document.createElement("h4");
            memoriaString.setAttribute('class', 'list-group-item-heading');
            var memoriaTemp = document.createTextNode("Memoria: "+dispositivo[myParam-1].memoria+" GB");
            memoriaString.appendChild(memoriaTemp);
            listGroupMemoria.appendChild(memoriaString);
            listGroup.appendChild(listGroupMemoria);
            //os item
            var listGroupOs = document.createElement("div");
            listGroupOs.setAttribute("class", "list-group-item");
            var osString = document.createElement("h4");
            osString.setAttribute('class', 'list-group-item-heading');
            var osTemp = document.createTextNode("Sistema Operativo: "+dispositivo[myParam-1].os);
            osString.appendChild(osTemp);
            listGroupOs.appendChild(osString);
            listGroup.appendChild(listGroupOs);
            //schermo item
            var listGroupSchermo = document.createElement("div");
            listGroupSchermo.setAttribute("class", "list-group-item");
            var schermoString = document.createElement("h4");
            schermoString.setAttribute('class', 'list-group-item-heading');
            var schermoTemp = document.createTextNode("Schermo: "+dispositivo[myParam-1].schermo);
            schermoString.appendChild(schermoTemp);
            listGroupSchermo.appendChild(schermoString);
            listGroup.appendChild(listGroupSchermo);
            //processore item
            var listGroupProcessore = document.createElement("div");
            listGroupProcessore.setAttribute("class", "list-group-item");
            var processoreString = document.createElement("h4");
            processoreString.setAttribute('class', 'list-group-item-heading');
            var processoreTemp = document.createTextNode("Processore: "+dispositivo[myParam-1].processore);
            processoreString.appendChild(processoreTemp);
            listGroupProcessore.appendChild(processoreString);
            listGroup.appendChild(listGroupProcessore);
            //ram item
            var listGroupRam = document.createElement("div");
            listGroupRam.setAttribute("class", "list-group-item");
            var ramString = document.createElement("h4");
            ramString.setAttribute('class', 'list-group-item-heading');
            var ramTemp = document.createTextNode("Memoria Ram: "+dispositivo[myParam-1].ram+" GB");
            ramString.appendChild(ramTemp);
            listGroupRam.appendChild(ramString);
            listGroup.appendChild(listGroupRam);
            //dimensioni item
            var listGroupDimensioni = document.createElement("div");
            listGroupDimensioni.setAttribute("class", "list-group-item");
            var dimensioniString = document.createElement("h4");
            dimensioniString.setAttribute('class', 'list-group-item-heading');
            var dimensioniTemp = document.createTextNode("Dimensioni: "+dispositivo[myParam-1].dimensioni);
            dimensioniString.appendChild(dimensioniTemp);
            listGroupDimensioni.appendChild(dimensioniString);
            listGroup.appendChild(listGroupDimensioni);
            //peso item
            var listGroupPeso = document.createElement("div");
            listGroupPeso.setAttribute("class", "list-group-item");
            var pesoString = document.createElement("h4");
            pesoString.setAttribute('class', 'list-group-item-heading');
            var pesoTemp = document.createTextNode("peso: "+dispositivo[myParam-1].peso+" g");
            pesoString.appendChild(pesoTemp);
            listGroupPeso.appendChild(pesoString);
            listGroup.appendChild(listGroupPeso);
            //fine items
            
            //Orientation info
            var link=document.createElement("a");
            var nomecat = document.createTextNode(dispositivo[myParam-1].nomecategoriadispositivo);
            var orientation1= document.getElementById("nomecategoria");
            link.setAttribute("href", "devices_by_category.html?category="+dispositivo[myParam-1].idcategoriadispositivo);
            link.appendChild(nomecat);
            orientation1.appendChild(link);
            
            var nomedisp = document.createTextNode(dispositivo[myParam-1].nome);
            var orientation1= document.getElementById("nomedispositivo");
            orientation1.appendChild(nomedisp);

           
            var containerFeatures = document.getElementById("deviceFeatures");
           
            containerFeatures.appendChild(listGroup);
            
            var containerPrice = document.getElementById("devicePrice");
            var price = document.createElement("h1");
            var priceValue = document.createTextNode(dispositivo[myParam-1].prezzo+"\u20AC");
            price.appendChild(priceValue);
            containerPrice.appendChild(price);
            
            
          
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}

function compatibleServices(){
    console.log("Sono pronto a caricare i servizi compatibili");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getSmartlifeServiceCompatibleDevices.php", //Relative or absolute path to file.php file
        data: {compatibleservice:iddispositivo},
        success: function(response) {
            var compatibleservice=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleSmartlifeServices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibleservice.length; i++){
                if (compatibleservice[i].id_dispositivo_dss == myParam){
          
                var urlCategoria = "smartlife_service.html?category=" +compatibleservice[i].idsmartlifeservices;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/smartlife/" + compatibleservice[i].immaginesmartlifeservices;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-circle img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Scopri");
                nomeTemp.appendChild(nome);

                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-6 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
              
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(compatibleservice[i].nomesmartlifeservices));
                
              
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


function compatibleAssistant(){
    console.log("Sono pronto a caricare i servizi assistenza compatibili");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getDeviceCompatibleAssistant.php", //Relative or absolute path to file.php file
        data: {compatibleassistant:iddispositivo},
        success: function(response) {
            var compatibleassistant=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleAssistantServices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibleassistant.length; i++){
                if (compatibleassistant[i].id_dispositivo_dsa == myParam){
          
                var urlCategoria = "assistance_service.html?category=" +compatibleassistant[i].idservizioassistenza;
                
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-large btn-link');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode(compatibleassistant[i].nomeservizioassistenza);
                nomeTemp.appendChild(nome);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-6 feature");
              
                categoria.appendChild(nomeTemp);
              
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
$(document).ready(compatibleServices);
$(document).ready(compatibleAssistant);