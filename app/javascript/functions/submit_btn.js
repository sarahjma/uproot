const submit = () => {
  const labels = document.querySelectorAll(".query")
  const btn_next = document.querySelector(".btn-next")
  if (document.querySelector('.query')){
    btn_next.disabled = true
    labels.forEach((label) => {
      label.addEventListener("click", (event) =>{
        btn_next.value = "Submit";
        btn_next.disabled = false
      })
    })
  }
}

export { submit }
