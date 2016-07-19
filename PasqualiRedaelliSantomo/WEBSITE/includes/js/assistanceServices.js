function ready(){
    console.log("Sono pronto a caricare tutti gli assistance services");
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "http://hyp2016.altervista.org/includes/php/query.php", //percorso file.php
        data: {query : "SELECT * FROM categoriaservizioassistenza ORDER BY idservizio ASC"},
        success: function(response) {
    
        var assistanceservice=JSON.parse(response);
        var i=0;  

            
          var container = document.getElementById("assistanceServices");  
            
          for(i=0;i<assistanceservice.length;i++){
                console.log("sono nel for");
                var urlCategoria = "assistance_services_by_category.html?c=3?category=" +assistanceservice[i].idservizio;
                
                var imgTemp = document.createElement("img");
                
                var urlImmagine = "images/assistance/" + assistanceservice[i].immagineservizio;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-smsll btn-block btn-default');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode("Esplora i servizi della categoria");
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                var descr = document.createTextNode(assistanceservice[i].descrizioneservizio);
                descrTemp.appendChild(descr);
                
                
                var categoria = document.createElement("div");
                categoria.setAttribute("class", "col-sm-6 feature");
              
                var categoriaPanel = document.createElement("div");
                categoriaPanel.setAttribute("class", "panel");
              
                var panelHeading = document.createElement("div");
                panelHeading.setAttribute("class", "panel-heading");
                var panelTitle = document.createElement("h4");
                panelTitle.appendChild(document.createTextNode(assistanceservice[i].nomeservizio));
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