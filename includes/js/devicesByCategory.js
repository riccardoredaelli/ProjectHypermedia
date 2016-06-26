//$(document).ready(setName);
function ready(){
    console.log("I'm ready!");
    var idprodotti=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "includes/php/getDevicesByCategory.php", //percorso del file php
        data: {dispositivo:idprodotti},
        success: function(response) {
            var dispositivo=JSON.parse(response);
            var i=0;   
            
            var myParam = location.search.split('category=')[1];
            
            var container = document.getElementById("searchresults");
            
            var panel = document.createElement("div");
            panel.setAttribute("class", "panel");
            var panelHeading = document.createElement("div");
            panelHeading.setAttribute("class", "panel-heading");
            var panelTitle = document.createElement("h4");
            var panelContenent = document.createElement("div");
            panelContenent.setAttribute("class", "col-sm-12 feature");
           
            for (i=0; i<dispositivo.length; i++){
                if (dispositivo[i].categoria==myParam){
                    panelTitle.appendChild(document.createTextNode(dispositivo[i].nomecategoriadispositivo));
                    
                    break;
                }
                if (myParam==5 && dispositivo[i].promozione == 1){
                    panelTitle.appendChild(document.createTextNode("Promozione"));
                    
                    break;
                }
            }
            
            panelHeading.appendChild(panelTitle);
            panel.appendChild(panelHeading);
            
            var row = document.createElement("div");
            row.setAttribute("class", "row");
            
            if (myParam == 5){
                for (i=0; i<dispositivo.length;i++){
                    if (dispositivo[i].promozione == 1){
                        var urlProdotto = "device.html?device=" +dispositivo[i].id;
                    
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

                    panelContenent.appendChild(showedDevice);
                    }
                    row.appendChild(panelContenent);
                    panel.appendChild(row);
                    container.appendChild(panel);
                }
            }
            
            
            for(i=0;i<dispositivo.length;i++) {
                
                if(dispositivo[i].categoria == myParam){ 
                       
                    var urlProdotto = "device.html?device=" +dispositivo[i].id;
                    
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

                    panelContenent.appendChild(showedDevice);  
                }
                
                row.appendChild(panelContenent);
                panel.appendChild(row);
                container.appendChild(panel);
            }   
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}
$(document).ready(ready);