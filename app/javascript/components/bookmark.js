const initBookmarks = () => {
  const bookmarks = document.querySelectorAll(".bookmark");

  bookmarks.forEach((bookmark) => {
    bookmark.addEventListener('click', (event) => {
      const icon = event.currentTarget.querySelector(".fa-bookmark")
      icon.classList.toggle("far");
      icon.classList.toggle("fas");
    });
  });
}

export { initBookmarks };
