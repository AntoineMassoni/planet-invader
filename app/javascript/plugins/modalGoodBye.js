const gifs = [
  "https://i.chzbgr.com/full/9031975424/h6C2BAE9E/reaction-gif-from-star-wars-of-finn-asking-are-we-actually-doing-this",
  "https://media.giphy.com/media/3o84sIQ7S5BLsvETIc/giphy.gif",
  "https://i.chzbgr.com/full/9031979008/hE8FF7F74/yoda-reaction-gif-that-is-why-you-fail-star-wars",
  "https://i.gifer.com/7w5s.gif",
  "https://media3.giphy.com/media/3ornka9rAaKRA2Rkac/giphy.gif",
  "https://thumbs.gfycat.com/DaringMetallicEskimodog-size_restricted.gif"
]

  const gifbalise = document.getElementById('gifs')
  document.getElementById('popup');
  document.addEventListener('mouseleave', (event) => {
  let gif = gifs[Math.floor(Math.random()*gifs.length)];;
  console.log(gifbalise);
  console.log("gif is : ", gif);
  const imgHTML = `<img src=${gif} />`
  gifbalise.innerHTML = ""

  gifbalise.insertAdjacentHTML('afterbegin', imgHTML);

  document.getElementById("popup").style.display = "block";
  console.log('out');
})
  document.addEventListener('mouseenter', (event) => {
  document.getElementById("popup").style.display = "none";
  console.log('enter');
});



// selectionner la popup
// console.log('modal good bye')
// const popup = document.getElementById("popup");
// const body = document.querySelector('body');

// console.log(body);

// // ajouter events listener

// // mouseover
// document.addEventListener('mouseover', (event) => {
//   console.log('mouse over')

//   // display popup
//   // popup.style = "display:block;"

// // });

// // // mouserout


// document.addEventListener('mousemove', (event) => {
//   console.log(event.pageX);
// })

//

// // const onMouseOut = (event) => {
// //     console.log(event);

// //   if (event.clientY < 50) {

// //     //document.removeEventListener("mouseout", onMouseOut);
// //     document.getElementById("popup").style.display = "block";
// //   }
// // }


// document.addEventListener("mouseout", onMouseOut);
//   function onMouseOver(event) {
//   if (event.clientY < 50) {
//       document.removeEventListener("mouseover", onMouseOver);
//       document.getElementById("popup").style.display = "none";
//   }
// }


// document.addEventListener('mouseover', onMouseOver);
//   // function proc(event) {
//   //   if ("popup" !== null);
  //   function onMouseOut;
  // }
