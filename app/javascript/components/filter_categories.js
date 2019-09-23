const categories = document.querySelectorAll(".categories button");

const filterSelection = (genre) => {
  var cards, i;
  cards = document.querySelectorAll(".cards > div");

  for (i = 0; i < cards.length; i++) {
    cards[i].classList.remove("hide");
    if (genre != "All" && genre != cards[i].dataset.genre) cards[i].classList.add("hide");
  }
}

const selectCategory = (event) => {
  for (var i = 0; i < categories.length; i++) {
    categories[i].classList.remove("active");
  }
  filterSelection(event.target.dataset.genre);
  event.target.classList.add("active");
}

const filterCategories = () => {

  filterSelection("All");

  // SELECT CATEGORY
  for (var i = 0; i < categories.length; i++) {
    categories[i].addEventListener("click", selectCategory);
  }
}

export { filterCategories };

