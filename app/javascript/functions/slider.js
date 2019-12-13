const slider = () => {
  if (document.querySelector(".slider")) {
    const slider = document.querySelector(".slider");
    const value = document.getElementById("value");
    value.innerHTML = slider.value + "€";
    slider.oninput=function(){
      value.innerHTML=this.value + "€";
    }
  }
}

export { slider }
