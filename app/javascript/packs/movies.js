const results = document.querySelector('#results');

const getClosest = (elem, selector) => {
  for ( ; elem && elem !== document; elem = elem.parentNode ) {
    if ( elem.matches( selector ) ) return elem;
  }
  return null;
};

const insertMovies = (data) => {
  data.Search.forEach((movie) => {
    var indexOfMovie = data.Search.indexOf(movie)
    if (indexOfMovie > 4)
      return;
    const movieLine = document.createElement('LI');
    movieLine.classList.add("result");
    movieLine.innerHTML = `<img class ="avatar" src="${movie.Poster}" alt="" />
    <span>${movie.Title} (${movie.Year})</span>`
    movieLine.dataset.imdbId = movie.imdbID;

    results.insertAdjacentElement('beforeend', movieLine);

    movieLine.addEventListener('click', (event) =>{
      const imdb = document.getElementById('taste_imdb_id');
      imdb.value = getClosest(event.target, '.result').dataset.imdbId;

      document.getElementById('search').value = '';

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

export { fetchMovies };
