const results = document.querySelector('#results');
const hiddenTaste = document.querySelector('.hide-movie-taste');
const moviePoster = document.querySelector('.movie-poster-review');

const getClosest = (elem, selector) => {
  for ( ; elem && elem !== document; elem = elem.parentNode ) {
    if ( elem.matches( selector ) ) return elem;
  }
  return null;
};

const insertMovies = (data) => {
  data.Search.forEach((movie) => {
    var indexOfMovie = data.Search.indexOf(movie);
    if (indexOfMovie > 4)
      return;
    const movieLine = document.createElement('LI');
    movieLine.classList.add("result");
    movieLine.innerHTML =
    `<div class = "notification" style="border: none">
      <img class ="avatar" src="${movie.Poster}" alt="" />
      <div class="notification-content">
        <p><strong>${movie.Title}</strong></p>
        <p><small>(${movie.Year})</small></p>
      </div>
     </div>`
    movieLine.dataset.imdbId = movie.imdbID;


    results.insertAdjacentElement('beforeend', movieLine);

    movieLine.addEventListener('click', (event) =>{
      const imdb = document.getElementById('taste_imdb_id');
      imdb.value = getClosest(event.target, '.result').dataset.imdbId;
      moviePoster.innerHTML = `<img class ="movie-show-poster" src="${movie.Poster}" alt="" /> <br><br>`;

      document.getElementById('search').value = movie.Title;
      hiddenTaste.classList.remove("hide-movie-taste");

      // divvide.innerHTML = movieLine.innerHTML;
      results.innerHTML = '';
    })
  });
};

const handleData = (data) => {
  if (data.Search)
    insertMovies(data)
  else
    return ;
}

const fetchMovies = (event) => {
  results.innerHTML = '';
  if (event.target.value.length < 4)
    return ;

  fetch(`http://www.omdbapi.com/?s=${event.target.value}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then(data => handleData(data))
  };

// const thumbUp = querySelector('#taste_rating_true');
// const thumbDown = querySelector('#taste_rating_false');

// const requireRating = () => {
//   if (thumbUp) {
//     thumbUp.addEventListener('click', (event) => {
//     thumbDown.required = false;
//     })
//   }
//   if (thumbDown) {
//     thumbDown.addEventListener('click', (event) => {
//     thumbUp.required = false;
//     })
//   }
// };
export { fetchMovies };
