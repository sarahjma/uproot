import { initSortable } from '../plugins/init_sortable'; // <-- add this

const startSortable = () => {
  if (document.querySelector("#sortable-list")) {
    initSortable();
  }
}

export { startSortable }
