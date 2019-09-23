const searchBar = () => {
  const results = document.querySelector("#results");
  const searchQuery = document.getElementById("search_query")

  if (searchQuery) {
    searchQuery.addEventListener("keyup", event => {
      if(event.currentTarget.value == ""){
        results.innerHTML = ""
      } else {
      fetch(`/users.json?utf8=✓&query=${event.currentTarget.value}&button=`)
      .then(response => response.json())
      .then((data) => {
        results.innerHTML = ""
        data.forEach((result) => {
          const user = `<li class="list-inline-item">
            <a class="nostyle" href="/users/${result.id}">
              <img src="${result.photo}" alt="" class="avatar">
              ${result.first_name} ${result.last_name}
            </a>
          </li> <br>`;
          results.insertAdjacentHTML("beforeend", user);
        });
      });
      }
    });
  }
}

export { searchBar };
