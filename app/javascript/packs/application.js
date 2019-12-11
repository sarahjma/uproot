import "bootstrap";

const thumb_options = document.querySelectorAll(".thumb-option")
thumb_options.forEach((thumb) => {
  thumb.addEventListener('click', (event) =>{
    event.currentTarget.classList.toggle('active');
  })
});

