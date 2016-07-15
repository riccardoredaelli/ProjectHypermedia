function device(){
    console.log("sono pronto a caricare il device");

$.ajax({
   method: "POST",
        crossDomain: true, //localhost purposes
        url: "includes/php/query.php", //Relative or absolute path to file.php file
        data: {query : "SELECT * FROM dispositivo ORDER BY dispositivo.id"},
        success: function(response) {
            var dispositivo=JSON.parse(response);
            var myParam=location.search.split('device=')[1];
            var i=0;
console.log("i inizializzata a 0");
console.log("my param="+ myParam);
            for (i=0; i<dispositivo.length; i++){
console.log("entro nel for con i ="+ i );
                if (dispositivo[i].id == myParam){
            var immagine= "images/devices/"+ dispositivo[i].immagine;
            var prezzo = dispositivo[i].prezzo +"€";
            var nome= dispositivo[i].nome;
            
            var container= document.getElementById("device-image");
            
            var imgTemp = document.createElement("img");
            imgTemp.setAttribute("src", immagine);
            imgTemp.setAttribute("class", "img-responsive");
            
            var nomet = document.createTextNode(nome);
            nomeTemp= document.createElement("h2");
            nomeTemp.setAttribute("class", "features");
            nomeTemp.appendChild(nomet);
            
            var prezzot = document.createTextNode(prezzo);
            prezzoTemp= document.createElement("h2");
            prezzoTemp.appendChild(prezzot);
            
            container.appendChild(imgTemp);
            container.appendChild(nomeTemp);
             container.appendChild(prezzoTemp);
            
            
            document.getElementById("annulla").setAttribute("href", "device.html?c=1?device="+ parseInt(myParam));
                }
            }
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
})    
}
$(document).ready(device);