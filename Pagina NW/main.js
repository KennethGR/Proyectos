
  AOS.init();


let enlacesHeader = document.querySelectorAll(".enlaces-header")[0];
let semaforo=true;

document.querySelectorAll(".hamburguer")[0].addEventListener("click",function()
{
	if(semaforo)
	{
		document.querySelectorAll(".hamburguer")[0].style.color = "#FFF"
		semaforo = false;
	}
	else
	{

		document.querySelectorAll(".hamburguer")[0].style.color = "#000"
		semaforo = true;
	
	}
	enlacesHeader.classList.toggle("menudos")
})
