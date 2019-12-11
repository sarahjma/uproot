import "bootstrap";
import { initSortable } from '../plugins/init_sortable'; // <-- add this

const thumbs = document.querySelectorAll(".thumb")
// console.log(thumbs)
thumbs.forEach((thumb) => {
  thumb.addEventListener('click', (event) =>{
    // console.log(thumb)
    event.currentTarget.classList.toggle('active');
  })
});


initSortable();
