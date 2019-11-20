const bounceAlpha = () => {
  $('.round').click(function(e) {
      e.preventDefault();
      e.stopPropagation();
      $('.arrow').toggleClass('bounceAlpha');
  });
}

export { bounceAlpha }
