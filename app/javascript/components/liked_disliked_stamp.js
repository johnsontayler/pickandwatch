const stampContainer = document.querySelector(".stamp-container");
const liked = document.getElementById("shuffleLiked");
const disliked = document.getElementById("shuffleDisliked");

const likedDislikedStamp = () => {
  if (liked) {
    liked.addEventListener('click', (event) => {
      stampContainer.innerHTML = `
        <div class="liked-disliked-stamp">
          <h2 class="stamp-text">LIKED</h2>
        </div>
      </div>`;
    });
  };

  if (disliked) {
    disliked.addEventListener('click', (event) => {
      stampContainer.innerHTML = `
        <div class="liked-disliked-stamp">
          <h2 class="stamp-text">DISLIKED</h2>
        </div>
      </div>`;
    });
  };
};

export { likedDislikedStamp };
