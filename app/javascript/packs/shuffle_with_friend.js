const getClosest = (elem, selector) => {
  for ( ; elem && elem !== document; elem = elem.parentNode ) {
    if ( elem.matches( selector ) ) return elem;
  }
  return null;
};

const searchBarShuffle = () => {
  const results = document.querySelector('#friend-results');
  const friendSelected = document.querySelector('.friend-selected');
  const searchQuery = document.getElementById("friend_search_query");

  if (searchQuery) {
    searchQuery.addEventListener("keyup", event => {
      if(event.currentTarget.value == ""){
        results.innerHTML = ''
      } else {
      fetch(`/users.json?utf8=✓&query=${event.currentTarget.value}&button=`)
      .then(response => response.json())
      .then((data) => {
        results.innerHTML = ''
        data.forEach((friend) => {
          const userLine = document.createElement('li');
          userLine.classList.add("result");
          userLine.innerHTML = `
              <img src="${friend.photo}" alt="" class="avatar">
              ${friend.first_name} ${friend.last_name}`;
          userLine.dataset.id = friend.id;
          results.appendChild(userLine);

          userLine.addEventListener('click', (event) =>{
            const friendId = document.getElementById('user_shuffle_friend');
            friendId.value = getClosest(event.target, '.result').dataset.id;

            const plusFriend = `
            <div class="plus" style="font-size: 23px;">+</div>
            <div class="friend-shuffle">
              <img src="${friend.photo}" alt="" class="avatar"> ${friend.first_name}
            </div>`;

            friendSelected.insertAdjacentHTML('beforeend', plusFriend );

            document.getElementById('friend_search_query').value = friend.first_name + " " + friend.last_name;

            // divvide.innerHTML = movieLine.innerHTML;
            results.innerHTML = '';
          })
        });
      });
      }
    });
  }
};

export { searchBarShuffle };
