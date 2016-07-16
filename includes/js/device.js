function evan(){
    console.log("Sono pronto a caricare il dispositivo");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo, categoriadispositivo WHERE dispositivo.categoria=categoriadispositivo.idcategoriadispositivo ORDER BY categoriadispositivo.idcategoriadispositivo"},
        success: function(response) {
            var dispositivo=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            var i=0;
            for (i=0; i<dispositivo.length; i++){
                if (dispositivo[i].id == myParam){
            
            var containerImg = document.getElementById("deviceImg"); 
            var img = document.createElement("img");
            var urlImg = "images/devices/"+dispositivo[i].immagine;
            img.setAttribute('src', urlImg);
            img.setAttribute("class", "img-responsive");
            containerImg.appendChild(img);
            
            var containerName = document.getElementById("deviceName");
            var phoneName = document.createElement("h2");
            var phoneNameText = document.createTextNode(dispositivo[i].nome);
            phoneName.appendChild(phoneNameText);
            containerName.appendChild(phoneName);
            
            var containerDescription = document.getElementById("deviceDescription");
            var description = document.createElement("h5");
            var descriptionText =document.createTextNode(dispositivo[i].descrizione);
            description.appendChild(descriptionText);
            containerDescription.appendChild(description);
            
            //inizio caratteristiche tecniche
            var listGroup = document.createElement("div");
            listGroup.setAttribute("class", "list-group");
            //memoria item
            var listGroupMemoria = document.createElement("div");
            listGroupMemoria.setAttribute("class", "list-group-item");
            var memoriaString = document.createElement("h4");
            memoriaString.setAttribute('class', 'list-group-item-heading');
            var memoriaTemp = document.createTextNode("Memoria: "+dispositivo[i].memoria+" GB");
            memoriaString.appendChild(memoriaTemp);
            listGroupMemoria.appendChild(memoriaString);
            listGroup.appendChild(listGroupMemoria);
            //os item
            var listGroupOs = document.createElement("div");
            listGroupOs.setAttribute("class", "list-group-item");
            var osString = document.createElement("h4");
            osString.setAttribute('class', 'list-group-item-heading');
            var osTemp = document.createTextNode("Sistema Operativo: "+dispositivo[i].os);
            osString.appendChild(osTemp);
            listGroupOs.appendChild(osString);
            listGroup.appendChild(listGroupOs);
            //schermo item
            var listGroupSchermo = document.createElement("div");
            listGroupSchermo.setAttribute("class", "list-group-item");
            var schermoString = document.createElement("h4");
            schermoString.setAttribute('class', 'list-group-item-heading');
            var schermoTemp = document.createTextNode("Schermo: "+dispositivo[i].schermo);
            schermoString.appendChild(schermoTemp);
            listGroupSchermo.appendChild(schermoString);
            listGroup.appendChild(listGroupSchermo);
            //processore item
            var listGroupProcessore = document.createElement("div");
            listGroupProcessore.setAttribute("class", "list-group-item");
            var processoreString = document.createElement("h4");
            processoreString.setAttribute('class', 'list-group-item-heading');
            var processoreTemp = document.createTextNode("Processore: "+dispositivo[i].processore);
            processoreString.appendChild(processoreTemp);
            listGroupProcessore.appendChild(processoreString);
            listGroup.appendChild(listGroupProcessore);
            //ram item
            var listGroupRam = document.createElement("div");
            listGroupRam.setAttribute("class", "list-group-item");
            var ramString = document.createElement("h4");
            ramString.setAttribute('class', 'list-group-item-heading');
            var ramTemp = document.createTextNode("Memoria Ram: "+dispositivo[i].ram+" GB");
            ramString.appendChild(ramTemp);
            listGroupRam.appendChild(ramString);
            listGroup.appendChild(listGroupRam);
            //dimensioni item
            var listGroupDimensioni = document.createElement("div");
            listGroupDimensioni.setAttribute("class", "list-group-item");
            var dimensioniString = document.createElement("h4");
            dimensioniString.setAttribute('class', 'list-group-item-heading');
            var dimensioniTemp = document.createTextNode("Dimensioni: "+dispositivo[i].dimensioni);
            dimensioniString.appendChild(dimensioniTemp);
            listGroupDimensioni.appendChild(dimensioniString);
            listGroup.appendChild(listGroupDimensioni);
            //peso item
            var listGroupPeso = document.createElement("div");
            listGroupPeso.setAttribute("class", "list-group-item");
            var pesoString = document.createElement("h4");
            pesoString.setAttribute('class', 'list-group-item-heading');
            var pesoTemp = document.createTextNode("peso: "+dispositivo[i].peso+" g");
            pesoString.appendChild(pesoTemp);
            listGroupPeso.appendChild(pesoString);
            listGroup.appendChild(listGroupPeso);
            //fine items
            
            //Orientation info
            var link=document.createElement("a");
            var nomecat = document.createTextNode(dispositivo[i].nomecategoriadispositivo);
            var orientation1= document.getElementById("nomecategoria");
            link.setAttribute("href", "devices_by_category.html?c=1?category="+dispositivo[i].idcategoriadispositivo);
            link.appendChild(nomecat);
            orientation1.appendChild(link);
            
            var nomedisp = document.createTextNode(dispositivo[i].nome);
            var orientation1= document.getElementById("nomedispositivo");
            orientation1.appendChild(nomedisp);

           
            var containerFeatures = document.getElementById("deviceFeatures");
           
            containerFeatures.appendChild(listGroup);
            //prezzo
            var containerPrice = document.getElementById("devicePrice");
            var bottone=document.getElementById("buyButton");
            bottone.setAttribute("href", "compra.html?c=1?device="+dispositivo[i].id);
            
            if (dispositivo[i].promozione == 1){
                //sbarro il prezzo iniziale
                var price = document.createElement("h1");
                price.setAttribute('class', 'deleted-price');
                var priceValue = document.createTextNode(dispositivo[i].prezzo+"\u20AC");
                price.appendChild(priceValue);
                containerPrice.appendChild(price);
                
                
                //sconto
                var sconto = dispositivo[i].prezzo-(dispositivo[i].prezzo*
                                                          (dispositivo[i].sconto/100));
                var prezzoScontato = document.createTextNode(sconto);
                var newPrice = document.createElement("h1");
                newPrice.setAttribute('class', 'sale-price');
                newPrice.appendChild(prezzoScontato);
                containerPrice.appendChild(newPrice);
                
            }        
            else {
                var price = document.createElement("h1");
                var priceValue = document.createTextNode(dispositivo[i].prezzo+"\u20AC");
                price.appendChild(priceValue);
                containerPrice.appendChild(price);
            }
            }
            }
            
            
          
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
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo,dispositivo_smartlifeservice,smartlifeservice WHERE dispositivo.id=dispositivo_smartlifeservice.id_dispositivo_dss AND smartlifeservice.idsmartlifeservices=dispositivo_smartlifeservice.id_smartlifeservice_dss ORDER BY dispositivo.id"},
        success: function(response) {
            var compatibleservice=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleSmartlifeServices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibleservice.length; i++){
                if (compatibleservice[i].id_dispositivo_dss == myParam){
          
                var urlCategoria = "smartlife_service.html?c=2?category=" +compatibleservice[i].idsmartlifeservices;
                
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
                categoria.setAttribute("class", "col-sm-4 feature");
              
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
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo,dispositivo_servizioassistenza,servizioassistenza WHERE dispositivo.id=dispositivo_servizioassistenza.id_dispositivo_dsa AND servizioassistenza.idservizioassistenza=dispositivo_servizioassistenza.id_servizioassistenza_dsa ORDER BY dispositivo.id"},
        success: function(response) {
            var compatibleassistant=JSON.parse(response);
            var myParam = location.search.split('device=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleAssistantServices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibleassistant.length; i++){
                if (compatibleassistant[i].id_dispositivo_dsa == myParam){
          
                var urlCategoria = "assistance_service.html?c=3?category=" +compatibleassistant[i].idservizioassistenza;
                
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-large btn-link');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode(compatibleassistant[i].nomeservizioassistenza);
                nomeTemp.appendChild(nome);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-12 feature");
              
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