const form = document.querySelector(".city-form")
const inputSearch = document.querySelector(".search")

const fillSearchValue = () => {
  document.querySelectorAll(".autocomplete-value").forEach((li) =>
    li.addEventListener("click", (event) => {
      inputSearch.value = event.currentTarget.innerText
      form.submit();
      results.innerHTML = ""
    })
  )
}

const autocomplete = () => {
 if (document.querySelector(".city-form")){
  const cityList = document.getElementById("city-list").attributes["data-cities"].value
  const cities = cityList.replace(/"+/g,'', "").replace(/[\[\]']+/g,'').split(", ")
  const results = document.getElementById("results")
  form.addEventListener('keyup', (event) => {
    // console.log(event);
    const searchValue = inputSearch.value
    event.preventDefault();

    results.innerHTML = ""
    const matchingCities = []
    const matchingRegex = new RegExp(`^${inputSearch.value}`);
    cities.forEach((city) =>{
      if (!!city.toLowerCase().match(matchingRegex)){
        matchingCities.push(city)
      }
    })
    if(matchingCities.length > 0){
      // const words = data.words.slice(0, 5);
      matchingCities.slice(0, 5).forEach((matchingCity) => {
        results.insertAdjacentHTML('beforeend', `<li class="autocomplete-value list-unstyled">${matchingCity}</li>`);
      });
      fillSearchValue()
      };
    });
  };
}

export { autocomplete }
