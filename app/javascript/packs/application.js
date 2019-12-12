import "bootstrap";
import { initSortable } from '../plugins/init_sortable'; // <-- add this


const thumb_options = document.querySelectorAll(".thumb-option")
thumb_options.forEach((thumb) => {
  thumb.addEventListener('click', (event) =>{
    event.currentTarget.classList.toggle('active');
  })
});

const btn_options = document.querySelectorAll(".btn-option")
btn_options.forEach((btn) => {
  btn.addEventListener('click', (event) =>{
    event.currentTarget.classList.toggle('active');
  })
});

const slider = document.querySelector(".slider")
const value = document.getElementById("value")
value.innerHTML = slider.value + "€"
slider.oninput=function(){
  value.innerHTML=this.value + "€";
}

initSortable();
