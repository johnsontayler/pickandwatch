const animations = () => {
  const links = document.querySelectorAll('.slidemenu label');
  const sliderBar = document.querySelector('.slider .bar');

  links.forEach((link) => {
    link.addEventListener('click', (event) =>{
      event.preventDefault();
      sliderBar.dataset.item = event.target.closest('label').attributes['for'].value[11];
      setTimeout(() => {
        window.location = event.target.closest('a').href;
      }, 200)
    })
  });
};

export { animations };
