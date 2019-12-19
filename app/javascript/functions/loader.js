const loader = () => {
  console.log("PRELOADER");
  const preloader = document.getElementById("preloader")
  const showLoadedResults = document.getElementById("show-loaded-results")
  const preloaderText = document.getElementById("preloader-text")

  if(preloader) {
    window.onload = () => {
      setTimeout(() => {
          preloaderText.innerHTML = '...magic happening now...';
        }, 2 * 1000
      );
      setTimeout(() => {
          preloaderText.innerHTML = '...are you ready?!!!!'
        }, 4 * 1000
      );
      setTimeout(() => {
          preloader.classList.remove('preloader-wrapper');
          preloader.classList.add('d-none');
          showLoadedResults.classList.add('d-flex');
          showLoadedResults.classList.remove('d-none');
        }, 6 * 1000
      );
    }
  };
}

export { loader }
