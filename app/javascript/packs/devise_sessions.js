const changeDeviseBackground = () => {
  const posters = [
    "https://m.media-amazon.com/images/M/MV5BMTM5MDY5MDQyOV5BMl5BanBnXkFtZTgwMzM3NzMxMDE@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BODA3NDhiZjYtYTk2NS00ZWYwLTljYTQtMjU0NzcyMGEzNTU2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BZDdiZTAwYzAtMDI3Ni00OTRjLTkzN2UtMGE3MDMyZmU4NTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BNjk2ODQzNDYxNV5BMl5BanBnXkFtZTgwMTcyNDg4NjE@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BOTM5N2ZmZTMtNjlmOS00YzlkLTk3YjEtNTU1ZmQ5OTdhODZhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BMjllYmQ2OGQtN2IxZC00ODJiLWI4NjQtYmNlZjYzNzUzYjkyXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BODA2MjU1NTI1MV5BMl5BanBnXkFtZTgwOTU4ODIwMjE@._V1_SX300.jpg",
    "https://m.media-amazon.com/images/M/MV5BMzY1ZjMwMGEtYTY1ZS00ZDllLTk0ZmUtYzA3ZTA4NmYwNGNkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg",
  ];

  const deviseBackground = document.getElementById("deviseBackground");

  let i = 0;
  setInterval(function() {
        if (deviseBackground) {
          deviseBackground.style.backgroundImage = "linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(" + posters[i] + ")";
          i = i + 1;
          if (i == posters.length) {
            i =  0;
          }
        }
  }, 1500);
};

const landingPageRemove = () => {
  const landingPage = document.getElementById('landpageOverlay');
  const landLoginBtn = document.getElementById('landpageLogin');
  const loginPage = document.getElementById('loginPage');

  if (landingPage) {
    landLoginBtn.addEventListener('click', () => {
      landingPage.remove();
      console.log(loginPage.style.display);
      loginPage.style.display = "block";
      console.log(loginPage.style.display);
    });
  }
};

export { changeDeviseBackground, landingPageRemove };
