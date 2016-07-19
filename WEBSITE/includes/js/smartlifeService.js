function evan(){
    console.log("Sono pronto a caricare il servizio");
    var iddispositivo=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query:"SELECT * FROM smartlifeservice, categoriasmartlifeservice WHERE smartlifeservice.categoriasmartlifeservices=categoriasmartlifeservice.idsmartlife ORDER BY smartlifeservice.idsmartlifeservices"},
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
            var containerDescriptionM = document.getElementById("serviceDescriptionM");
            var description = document.createElement("h5");
            var descriptionText =document.createTextNode(smartlifeservice[myParam-1].descrizionesmartlifeservices);
            description.appendChild(descriptionText);
            containerDescription.appendChild(description);
            containerDescriptionM.appendChild(description.cloneNode(true));
            
            var containerFeatures = document.getElementById("serviceActivationRules");
             var containerFeaturesM = document.getElementById("serviceActivationRulesM");
            var features = document.createElement("h5");
            var featuresText =document.createTextNode(smartlifeservice[myParam-1].attivazionesmartlifeservices);
            features.appendChild(featuresText);
            containerFeatures.appendChild(features);
            containerFeaturesM.appendChild(features.cloneNode(true));
            //FAQ
            var containerFeatures = document.getElementById("serviceFaq");
            var containerFeaturesM = document.getElementById("serviceFaqM");
            
            
            var faqArray =smartlifeservice[myParam-1].faqsmartlifeservices.split("&");
            
            
            for (var i = 0; i<faqArray.length; i++){
                var q = document.createElement("b");
                var r = document.createElement("h5");
                
                if (i%2==0){
                    var question = document.createTextNode(faqArray[i]);
                    q.appendChild(question);
                    containerFeatures.appendChild(q);
                    containerFeaturesM.appendChild(q.cloneNode(true));
                }
                else {
                    var reply = document.createTextNode(faqArray[i]);
                    r.appendChild(reply);
                    containerFeatures.appendChild(r);
                    containerFeaturesM.appendChild(r.cloneNode(true));
                }
            }
            
            
            
            //Orientation info
            var link=document.createElement("a");
            var nomecat = document.createTextNode(smartlifeservice[myParam-1].nomesmartlife);
            var orientation1= document.getElementById("nomecategoria");
            link.setAttribute("href", "smartlife_services_by_category.html?c=2?category="+smartlifeservice[myParam-1].idsmartlife);
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
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo,dispositivo_smartlifeservice,smartlifeservice WHERE dispositivo.id=dispositivo_smartlifeservice.id_dispositivo_dss AND smartlifeservice.idsmartlifeservices=dispositivo_smartlifeservice.id_smartlifeservice_dss ORDER BY dispositivo.id"},
        success: function(response) {
            var compatibledevice=JSON.parse(response);
            var myParam = location.search.split('category=')[1];
            var i = 0;
            
            var containerImg = document.getElementById("compatibleDevices");
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            for (i = 0; i<compatibledevice.length; i++){
                if (compatibledevice[i].id_smartlifeservice_dss == myParam){
          
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