const getSalary = () => {
  const selectElement = document.querySelector('#selectjob');
  if (selectElement) {
    const salary = document.getElementById('salary');
    const submit = document.querySelector('.btn-career');

    submit.addEventListener('click', (event) => {
      const jobIndex = selectElement.options[selectElement.selectedIndex].index;
      const jobSalary = JSON.parse(salary.dataset.salaries)[jobIndex];
      salary.innerHTML = "€" + jobSalary
    })


  }
}

export { getSalary }
