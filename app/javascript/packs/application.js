// import "bootstrap";


// $(document).ready(function(){
//   $(".thumb").click(function(){
//     $(this).toggleClass("active");
//   });
// });

// thumb = document.querySelector(".thumb")
// // console.log(thumbs)
//   thumb.addEventListener('click', (event) =>{
//     console.log(thumb)
//     event.currentTarget.classList.toggle('active');
//   });

thumbs = document.querySelectorAll(".thumb")
// console.log(thumbs)
thumbs.forEach((thumb) => {
  thumb.addEventListener('click', (event) =>{
    // console.log(thumb)
    event.currentTarget.classList.toggle('active');
  })
});
