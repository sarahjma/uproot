import { initSortable } from '../plugins/init_sortable'; // <-- add this

const startSortable = () => {
  const container = document.querySelector("#sortable-list")
  if (container) {
    initSortable();
    const listItems = container.querySelectorAll("li")
    listItems.forEach(listItem => {
      listItem.addEventListener(('touchstart'), () => {
        listItem.classList.add('drag')
      })
      listItem.addEventListener(('touchmove'), () => {
        listItem.classList.add('chosen')
      })
      listItem.addEventListener(('touchend'), () => {
        setTimeout(function(){
          listItem.classList.remove('drag')
        }, 300)
      })
      listItem.addEventListener(('touchend'), () => {
          listItem.classList.remove('chosen')
      })
    })
  }
}

export { startSortable }
