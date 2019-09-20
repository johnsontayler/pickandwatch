filterSelection("All")

const categories = document.querySelectorAll(".categories button");

function filterSelection(genre) {
  var cards, i;
  cards = document.querySelectorAll(".cards div");

  for (i = 0; i < cards.length; i++) {
    cards[i].classList.remove("hide");
    if (genre != "All" && genre != cards[i].dataset.genre) cards[i].classList.add("hide");
  }
}

function selectCategory() {
  for (var i = 0; i < categories.length; i++) {
    categories[i].classList.remove("active");
  }
  filterSelection(this.dataset.genre);
  this.classList.add("active");
}

for (var i = 0; i < categories.length; i++) {
  categories[i].addEventListener("click", selectCategory);
}

