const results = document.querySelector("#results");
const searchQuery = document.getElementById("search_query")

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
        <img src="${result.photo}" alt="" class="avatar">
        ${result.first_name} ${result.last_name}
      </li> <br>`;
      results.insertAdjacentHTML("beforeend", user);
    });
  });
  }
});
