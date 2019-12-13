import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.getElementById('sortable-list');
  Sortable.create(list);
};

// const updateOrder = (event) => {
//   console.log('im updated for this item: ', event.item)
// }

export { initSortable };
