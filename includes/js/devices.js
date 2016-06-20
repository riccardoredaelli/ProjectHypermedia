function ready(){
    console.log("Sono pronto a caricare tutte le categorie");
    var idcategoria=1;
    
    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "includes/php/getDevices.php", //percorso file.php
        data: {categoriadispositivo:idcategoria},
        success: function(response) {
        var categoriadispositivo=JSON.parse(response);
        var i=0;  

            
          var container = document.getElementById("devices");  
            
          for(i=0;i<categoriadispositivo.length;i++){
                console.log("sono nel for");
                var urlCategoria = "devices_by_category.html?category=" +categoriadispositivo[i].idcategoria;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/" + categoriadispositivo[i].immaginecategoria;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Esplora tutta la categoria");
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                var descr = document.createTextNode(categoriadispositivo[i].descrizione);
                descrTemp.appendChild(descr);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-12 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
              
              
              
                var panelHeading = document.createElement("div");
                panelHeading.setAttribute("class", "panel-heading");
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(categoriadispositivo[i].nomecategoria));
                panelHeading.appendChild(panelTitle);
              
                var categoryRow = document.createElement("div");
                categoryRow.setAttribute("class", "row");
              
                var categoryInfoColumn = document.createElement("div");
                categoryInfoColumn.setAttribute("class", "col-sm-4 feature");
              
                var categoriyInfoPanel = document.createElement("div");
                categoriyInfoPanel.setAttribute("class", "panel text-center");
               
                categoriaPanel.appendChild(panelHeading);
                categoriyInfoPanel.appendChild(imgTemp);
                categoriyInfoPanel.appendChild(descrTemp);
                categoriyInfoPanel.appendChild(nomeTemp);
                categoryInfoColumn.appendChild(categoriyInfoPanel);
                categoryRow.appendChild(categoryInfoColumn);
                categoriaPanel.appendChild(categoryRow);
                categoria.appendChild(categoriaPanel);
              
                container.appendChild(categoria);
               
        }
            
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}
$(document).ready(ready);