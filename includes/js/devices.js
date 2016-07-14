function ready(){
    console.log("Sono pronto a caricare tutte le categorie");
    var idcategoria=1;
    var container = document.getElementById("devices");  
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getDevices.php", //percorso file.php
        data: {categoriadispositivo:idcategoria},
        success: function(response) {
        var categoriadispositivo=JSON.parse(response);
        var i=0;  

        var categoriaProva = '';
          for(i=0;i<categoriadispositivo.length;i++){
                console.log("sono nel for");
              if (categoriaProva !== categoriadispositivo[i].nomecategoriadispositivo || categoriadispositivo[i].idcategoriadispositivo==5){
                  console.log(categoriadispositivo[i].nomecategoriadispositivo);

                categoriaProva = categoriadispositivo[i].nomecategoriadispositivo;
              
                var urlCategoria = "devices_by_category.html?category=" +categoriadispositivo[i].idcategoriadispositivo;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/" + categoriadispositivo[i].immaginecategoriadispositivo;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "category-img img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Esplora tutta la categoria");
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                var descr = document.createTextNode(categoriadispositivo[i].descrizionecategoriadispositivo);
                descrTemp.appendChild(descr);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-12 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
         
                var panelHeading = document.createElement("div");
                panelHeading.setAttribute("class", "panel-heading");
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(categoriadispositivo[i].nomecategoriadispositivo));
                panelHeading.appendChild(panelTitle);

                var categoryRow = document.createElement("div");
                categoryRow.setAttribute("class", "row");
              
                var categoryInfoColumn = document.createElement("div");
                categoryInfoColumn.setAttribute("class", "col-sm-3 feature text-center");
              
                var categoriyInfoPanel = document.createElement("div");
                categoriyInfoPanel.setAttribute("class", "panel");
              
                categoriaPanel.appendChild(panelHeading);
                categoriyInfoPanel.appendChild(imgTemp);
                categoriyInfoPanel.appendChild(descrTemp);
                categoriyInfoPanel.appendChild(nomeTemp);
                categoryInfoColumn.appendChild(categoriyInfoPanel);
                categoryRow.appendChild(categoryInfoColumn);
                  
                  
                // start device preview
                console.log(categoriadispositivo[i].nome);
                if (categoriadispositivo[i].idcategoriadispositivo!=5){
                var j = 0;
                
                for (j=0; j<3; j++){
                  
                    if (categoriadispositivo[i].categoria == categoriadispositivo[i+j].categoria) {
                    var devicePreviewImg = document.createElement("img");
                    var urlPreviewImg = "images/devices/" + categoriadispositivo[i+j].immagine;
                    devicePreviewImg.setAttribute('src', urlPreviewImg);
                    devicePreviewImg.setAttribute("class", "img-responsive");
                    var devicePreviewName = document.createElement("h4");
                    devicePreviewName.appendChild(document.createTextNode(categoriadispositivo[i+j].nome));  
                    
                    var devicePreviewButton = document.createElement("a");
                    devicePreviewButton.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                    var deviceUrl = "device.html?device=" +categoriadispositivo[i+j].id;
                    devicePreviewButton.setAttribute("href", deviceUrl);
                    var buttonName = document.createTextNode("Scopri");
                    devicePreviewButton.appendChild(buttonName);
                    
                    
                    var previewColumn = document.createElement("div");
                    previewColumn.setAttribute("class", "col-sm-3 feature text-center hidden-sm");
              
                    var previewColumnPanel = document.createElement("div");
                    previewColumnPanel.setAttribute("class", "panel");
                    
                    previewColumnPanel.appendChild(devicePreviewImg);
                    previewColumnPanel.appendChild(devicePreviewName);
                    previewColumnPanel.appendChild(devicePreviewButton);
                    
                    previewColumn.appendChild(previewColumnPanel);
                    
                    categoryRow.appendChild(previewColumn);
                }
                }
                }
                if (categoriadispositivo[i].idcategoriadispositivo==5){
                    
                    var z = 0;
                    var k = 0;
                    for (z=0; z<categoriadispositivo.length; z++){
                    if (categoriadispositivo[z].promozione==1 && k<3) {
                    var devicePreviewImg = document.createElement("img");
                    var urlPreviewImg = "images/devices/" + categoriadispositivo[z].immagine;
                    devicePreviewImg.setAttribute('src', urlPreviewImg);
                    devicePreviewImg.setAttribute("class", "img-responsive");
                    var devicePreviewName = document.createElement("h4");
                    devicePreviewName.appendChild(document.createTextNode(categoriadispositivo[z].nome));  
                    
                    var devicePreviewButton = document.createElement("a");
                    devicePreviewButton.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                    var deviceUrl = "device.html?device=" +categoriadispositivo[z].id;
                    devicePreviewButton.setAttribute("href", deviceUrl);
                    var buttonName = document.createTextNode("Scopri");
                    devicePreviewButton.appendChild(buttonName);
                    
                    
                    var previewColumn = document.createElement("div");
                    previewColumn.setAttribute("class", "col-sm-3 feature text-center hidden-sm");
              
                    var previewColumnPanel = document.createElement("div");
                    previewColumnPanel.setAttribute("class", "panel");
                    
                    previewColumnPanel.appendChild(devicePreviewImg);
                    previewColumnPanel.appendChild(devicePreviewName);
                    previewColumnPanel.appendChild(devicePreviewButton);
                    
                    previewColumn.appendChild(previewColumnPanel);
                    
                    categoryRow.appendChild(previewColumn);
                        
                        k++;
                  }
                }
                }
                  
                
                //end device preview
                categoriaPanel.appendChild(categoryRow);
                categoria.appendChild(categoriaPanel);
              
                container.appendChild(categoria);
              
                  
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