
const submit = () => {
  const labels = document.querySelectorAll(".query")
  const btn_next = document.querySelector(".btn-next")
  if (document.querySelector('.query')){
    btn_next.hidden = true
    labels.forEach((label) => {
      label.addEventListener("click", (event) =>{
        btn_next.hidden = false
      })
    })
  }
}

export { submit}
