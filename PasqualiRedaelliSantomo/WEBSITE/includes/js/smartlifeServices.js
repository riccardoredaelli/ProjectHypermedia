function ready(){
    console.log("Sono pronto a caricare tutti gli smartlife services");
    var idcategoria=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //percorso file.php
        data: {query : "SELECT * FROM categoriasmartlifeservice ORDER BY idsmartlife ASC"},
        success: function(response) {
        var smartlifeservices=JSON.parse(response);
        var i=0;  

            
          var container = document.getElementById("smartlifeServices");  
            
          for(i=0;i<smartlifeservices.length;i++){
                console.log("sono nel for");
                var urlCategoria = "smartlife_services_by_category.html?c=2?category=" +smartlifeservices[i].idsmartlife;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/smartlife/" + smartlifeservices[i].immaginesmartlife;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Esplora i servizi della categoria");
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                var descr = document.createTextNode(smartlifeservices[i].descrizionesmartlife);
                descrTemp.appendChild(descr);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-6 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
              
                var panelHeading = document.createElement("div");
                panelHeading.setAttribute("class", "panel-heading");
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(smartlifeservices[i].nomesmartlife));
                panelHeading.appendChild(panelTitle);
              
                categoriaPanel.appendChild(panelHeading);
                categoriaPanel.appendChild(imgTemp);
                categoriaPanel.appendChild(descrTemp);
                categoriaPanel.appendChild(nomeTemp);
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