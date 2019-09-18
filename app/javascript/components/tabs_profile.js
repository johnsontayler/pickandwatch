const showTabContentOnClick = () => {
  const watchedTab = document.getElementById('watched-tab');
  const wishlistTab = document.getElementById('wishlist-tab');
  const watchedContent = document.getElementById('watched');
  const wishlistContent = document.getElementById('wishlist');
  let lavaLamp = document.getElementById("myTab");

  console.log(lavaLamp);

  watchedTab.addEventListener('click', () => {
    wishlistTab.classList.remove('active');
    wishlistContent.classList.remove('active', 'show');
    watchedTab.classList.add('active');
    watchedContent.classList.add('active', 'show');
    lavaLamp.firstChildElement = `<div class="lavalamp-object ease"
    style="transition-duration: 0.2s; width: 128.141px;
    height: 40px; transform: translate(0px, 0px);"></div>`;
  });

  wishlistTab.addEventListener('click', () => {
    watchedTab.classList.remove('active');
    watchedContent.classList.remove('active', 'show');
    wishlistTab.classList.add('active');
    wishlistContent.classList.add('active', 'show');
    lavaLamp.firstChildElement = `<div class="lavalamp-object ease"
    style="transition-duration: 0.2s; width: 139.656px;
    height: 40px; transform: translate(148.141px, 0px);"></div>`;
  });
};

export { showTabContentOnClick };
