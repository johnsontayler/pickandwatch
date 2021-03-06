const shuffleMovie = (data) => {
  const shuffleCards = document.getElementById("shuffle-card");
  const topMovie = `<div class="movie-wrapper flex-column" id="movie"><div class="header ml-2"><br><br></div><div class="movie-image" style="background-image: linear-gradient(rgba(0,0,0,0), rgba(0,0,0)),  url(<%= @movies[0].photo %>);"></div><h2 class="title-movie-picker"><%= @movies[0].first.title %></h2><p class="summary-movie-picker"><%= Movie.first.duration %>min | <%= Movies.first.genre %> | <%= Movie.first.year %> </p><div class="details"><div class="movie-ratings d-flex justify-content-space-between align-items-center"><div class="flex-item ml-2 mr-5"><i class="fas fa-thumbs-up"></i> <strong> 100% </strong></div><div class="flex-item ml-5"><i class="fab fa-imdb"></i> <strong> <%= Movie.first.imdb_rating %> </strong></div></div></div><%= render 'footer_shuffle', movie: Movie.first %>`

  data.removeChild(shuffleCards);
  data.insertAdjacentHTML("afterbegin", topMovie);
};

export { shuffleMovie };
