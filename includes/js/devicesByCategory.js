//$(document).ready(setName);
function ready(){
    console.log("I'm ready!");
    var idprodotti=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //percorso del file php
        data: {query : "SELECT * FROM `dispositivo`,`categoriadispositivo` WHERE dispositivo.categoria=categoriadispositivo.idcategoriadispositivo ORDER BY dispositivo.categoria ASC"},
        success: function(response) {
            var dispositivo=JSON.parse(response);
            var i=0;   
            
            var myParam = location.search.split('category=')[1];
            
            var container = document.getElementById("searchresults");
            var orientation = document.getElementById("nomecategoria");
            
            var panelHeading = document.createElement("div");
            panelHeading.setAttribute("class", "panel-heading");
            var panelTitle = document.createElement("h4");
           
           
            for (i=0; i<dispositivo.length; i++){
                if (dispositivo[i].categoria==myParam){
                    panelTitle.appendChild(document.createTextNode(dispositivo[i].nomecategoriadispositivo));
                    var nome= document.createTextNode(dispositivo[i].nomecategoriadispositivo);
                    orientation.appendChild(nome);
                    break;
                }
                if (myParam==5 && dispositivo[i].promozione == 1){
                    panelTitle.appendChild(document.createTextNode("Promozione"));
                    
                    break;
                }
            }
            
            panelHeading.appendChild(panelTitle);
            container.appendChild(panelHeading);
            
            if (myParam == 5){
                for (i=0; i<dispositivo.length-1;i++){
                    if (dispositivo[i].promozione == 1){
                        var urlProdotto = "device.html?c=1?device=" +dispositivo[i].id;
                    
                    var img = document.createElement("img");  
                    var urlImmagine = "images/devices/" + dispositivo[i].immagine;
                    img.setAttribute('src', urlImmagine);
                    img.setAttribute('class', 'img-responsive');
                    
                    var name = document.createElement("h4");
                    var nameTemp = document.createTextNode(dispositivo[i].nome);
                    name.appendChild(nameTemp);
                   
                    var button = document.createElement("a");
                    button.setAttribute('class', 'btn btn-smsll btn-default');
                    button.setAttribute("href", urlProdotto);
                    var buttonLabel = document.createTextNode("Scopri");
                    button.appendChild(buttonLabel);
                   
                    
                    var price = document.createElement("h4");
                    var priceTemp = document.createTextNode(dispositivo[i].prezzo+ "\u20AC");
                    price.appendChild(priceTemp);
                    
                    var showedDevice = document.createElement("div");
                    showedDevice.setAttribute("class", "col-sm-4 feature");
                    
                    var showedDevicePanel = document.createElement("div");
                    showedDevicePanel.setAttribute("class", "panel text-center");
                    
                    var showedButton = document.createElement("div");
                    showedButton.setAttribute("class", "row");
                    showedButton.appendChild(button);
                    
                    
                    showedDevicePanel.appendChild(img);
                    showedDevicePanel.appendChild(name);
                    showedDevicePanel.appendChild(price);
                    showedDevicePanel.appendChild(showedButton);
                    
                    showedDevice.appendChild(showedDevicePanel);

                    container.appendChild(showedDevice);
                    }
                }
            }
            
            
            for(i=0;i<dispositivo.length;i++) {
                
                if(dispositivo[i].categoria == myParam){ 
                       
                    var urlProdotto = "device.html?c=1?device=" +dispositivo[i].id;
                    
                    var img = document.createElement("img");  
                    var urlImmagine = "images/devices/" + dispositivo[i].immagine;
                    img.setAttribute('src', urlImmagine);
                    img.setAttribute('class', 'img-responsive');
                    
                    var name = document.createElement("h4");
                    var nameTemp = document.createTextNode(dispositivo[i].nome);
                    name.appendChild(nameTemp);
                   
                    var button = document.createElement("a");
                    button.setAttribute('class', 'btn btn-smsll btn-default');
                    button.setAttribute("href", urlProdotto);
                    var buttonLabel = document.createTextNode("Scopri");
                    button.appendChild(buttonLabel);
                   
                    
                    var price = document.createElement("h4");
                    var priceTemp = document.createTextNode(dispositivo[i].prezzo+ "\u20AC");
                    price.appendChild(priceTemp);
                    
                    var showedDevice = document.createElement("div");
                    showedDevice.setAttribute("class", "col-sm-4 feature");
                    
                    var showedDevicePanel = document.createElement("div");
                    showedDevicePanel.setAttribute("class", "panel text-center");
                    
                    var showedButton = document.createElement("div");
                    showedButton.setAttribute("class", "row");
                    showedButton.appendChild(button);
                    
                    
                    showedDevicePanel.appendChild(img);
                    showedDevicePanel.appendChild(name);
                    showedDevicePanel.appendChild(price);
                    showedDevicePanel.appendChild(showedButton);
                    
                    showedDevice.appendChild(showedDevicePanel);
                    showedDevice.setAttribute('system', dispositivo[i].os);
                    showedDevice.setAttribute('price', dispositivo[i].prezzo);
                    container.appendChild(showedDevice);  
                }
            }   
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}
$(document).ready(ready);