function ready(){
    console.log("Sono pronto a caricare tutti gli smartlife services");
    var idcategoria=1;
    
    $.ajax({
        method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/getAssistanceServicesByCategory.php", //percorso file.php
        data: {assistanceservices:idcategoria},
        success: function(response) {
        var assistanceservices=JSON.parse(response);
        var i=0;  
            
        var myParam = location.search.split('category=')[1];
            
        var container = document.getElementById("assistanceServicesByCategory"); 
        var listGroup = document.createElement("div");
        listGroup.setAttribute("class", "list-group");  
        
        if (myParam == 4){
            for (i=0;i<assistanceservices.length;i++){
                if (assistanceservices[i].highlightservizioassistenza == 1){
                    var urlCategoria = "assistance_service.html?service=" +assistanceservices[i].idservizioassistenza;
                
            
                var listGroupItem = document.createElement("div");
                listGroupItem.setAttribute("class", "list-group-item");
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'list-group-item-heading btn btn-large btn-link');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode(assistanceservices[i].nomeservizioassistenza);
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                descrTemp.setAttribute("class", "list-group-item-text");
                var descr = document.createTextNode(assistanceservices[i].descrizioneservizioassistenza);
                descrTemp.appendChild(descr);
                listGroupItem.appendChild(nomeTemp);
                listGroupItem.appendChild(descrTemp);
                
                
              
                listGroup.appendChild(listGroupItem);
                }
            }
        }
            
          for(i=0;i<assistanceservices.length;i++){
                console.log("sono nel for");
              if(assistanceservices[i].categoriaservizioassistenza==myParam){
                var urlCategoria = "assistance_service.html?category=" +assistanceservices[i].idservizioassistenza;
                
            
                var listGroupItem = document.createElement("div");
                listGroupItem.setAttribute("class", "list-group-item");
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'list-group-item-heading btn btn-large btn-link');
                nomeTemp.setAttribute("href", urlCategoria);
                var nome = document.createTextNode(assistanceservices[i].nomeservizioassistenza);
                nomeTemp.appendChild(nome);
                
                var descrTemp = document.createElement("p");
                descrTemp.setAttribute("class", "list-group-item-text");
                var descr = document.createTextNode(assistanceservices[i].descrizioneservizioassistenza);
                descrTemp.appendChild(descr);
                listGroupItem.appendChild(nomeTemp);
                listGroupItem.appendChild(descrTemp);
                
                
              
                listGroup.appendChild(listGroupItem);
              }
               
        }
        var panel = document.createElement("div");
        panel.setAttribute("class", "panel");
            
        var panelHeading = document.createElement("div");
        panelHeading.setAttribute("class", "panel-heading");
        var panelTitle = document.createElement("h4");
            
            
        for (i=0; i<assistanceservices.length; i++){
                if (assistanceservices[i].categoriaservizioassistenza==myParam){
                    panelTitle.appendChild(document.createTextNode(assistanceservices[i].nomeservizio));
                    
                    break;
                }
                if (myParam==4){
                    panelTitle.appendChild(document.createTextNode("Highlights"));
                    
                    break;
                }
            }    
            
        
        panelHeading.appendChild(panelTitle);    
        panel.appendChild(panelHeading);
        panel.appendChild(listGroup);
            
        container.appendChild(panel);
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
}
$(document).ready(ready);