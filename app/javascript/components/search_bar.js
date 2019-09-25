const searchBar = () => {
  const results_users = document.querySelector("#users-results");
  const results_movies = document.querySelector("#movies-results");
  const searchQuery = document.getElementById("search_query");
  const usersTitle = document.getElementById("users-results-title");
  const moviesTitle = document.getElementById("movies-results-title");
  const results = document.querySelector("#results");

  if (searchQuery) {
    // user
    searchQuery.addEventListener("keyup", event => {
      if(event.currentTarget.value == ""){
        results_users.innerHTML = "";
        usersTitle.classList.add("hide");
        results.classList.add("hide");
      } else {
      usersTitle.classList.remove("hide");
      fetch(`/users.json?utf8=✓&query=${event.currentTarget.value}&button=`)
      .then(response => response.json())
      .then((data) => {
        // Faire apparaitre #results
        results.classList.remove("hide");
        results_users.innerHTML = ""
        data.forEach((result) => {
          const user = `<li class="list-inline-item">
            <a class="nostyle" href="/users/${result.id}">
              <img src="${result.photo}" alt="" class="avatar">
              ${result.first_name} ${result.last_name}
            </a>
          </li> <br>`;
          // L'insérer dans le sous-container de #results
          results_users.insertAdjacentHTML("beforeend", user);
        });
      });
      }
    });

    // // movies
    searchQuery.addEventListener("keyup", event => {
       if(event.currentTarget.value == ""){
          results_movies.innerHTML = ""
          moviesTitle.classList.add("hide");
          results.classList.add("hide");
       } else {
        moviesTitle.classList.remove("hide");
       fetch(`/movies.json?utf8=✓&query=${event.currentTarget.value}&button=`)
       .then(response => response.json())
       .then((data) => {
          results.classList.remove("hide");
         results_movies.innerHTML = ""
         data.forEach((result) => {
           const movie = `<li class="list-inline-item">
             <a class="nostyle" href="/movies/${result.id}">
               <img src="${result.photo}" alt="" class="poster-result">
               ${result.title} ${result.year}
             </a>
           </li> <br>`;
           results_movies.insertAdjacentHTML("beforeend", movie);
         });
       });
       }
     });
  }
}

export { searchBar };
