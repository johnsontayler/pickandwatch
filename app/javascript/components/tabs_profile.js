const showTabContentOnClick = () => {
  const watchedTab = document.getElementById('watched-tab');
  const wishlistTab = document.getElementById('wishlist-tab');
  const watched = document.getElementById('watched');
  const wishlist = document.getElementById('wishlist');

  watchedTab.addEventListener('click', () => {
    watched.classList.remove('tab-pane fade');
    watched.classList.add('tab-pane fade active show');
  });

  wishlistTab.addEventListener('click', () => {
    wishlist.classList.remove('tab-pane fade');
    wishlist.classList.add('tab-pane fade active show');
  });
};

export { showTabContentOnClick };
