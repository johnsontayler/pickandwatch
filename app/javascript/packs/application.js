import 'bootstrap';

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// LIKE JAVASCRIPT
const like = document.querySelector('#like_button_taste');
const dislike = document.querySelector('#dislike_button_taste');


if (like) {
  like.addEventListener('click', (event) => {
    event.currentTarget.classList.remove("oranged");
    dislike.classList.add("oranged");
  });
}

if (dislike) {
dislike.addEventListener('click', (event) => {
  event.currentTarget.classList.remove("oranged");
  like.classList.add("oranged");
});
}
// END

$(window).on('load',function(){
  if(window.location.search.includes('newshuffle'))
    $('#shuffleModal').modal('show');
});

import { showTabContentOnClick } from '../components/tabs_profile';
import { shuffleMovie } from '../components/movie_shuffle';
import { fetchMovies } from './movies';
import { filterCategories } from '../components/filter_categories';
import { searchBar } from '../components/search_bar';
import { initBookmarks } from '../components/bookmark';
import { requireRating } from './movies';
import { searchBarShuffle } from './shuffle_with_friend';
// import { shuffleFormButtons } from './shuffle_with_friend';
// import { followButton } from '../components/follow_button_profile';

const input = document.querySelector('#search');
if (input) input.addEventListener('keyup', fetchMovies);

const movieIndex = document.querySelector('#search');

// const shuffle = document.getElementById("shuffle")
// shuffleMovie(shuffle);

showTabContentOnClick();
filterCategories();
searchBar();
initBookmarks();
searchBarShuffle();


