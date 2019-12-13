const btnOption = () => {
  if (document.querySelectorAll(".btn-option")) {
    const btn_options = document.querySelectorAll(".btn-option")
    btn_options.forEach((btn) => {
      btn.addEventListener('click', (event) =>{
        event.currentTarget.classList.toggle('active');
      })
    });
  }
}
export { btnOption }
