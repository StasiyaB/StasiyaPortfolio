'use strict';   

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/

var bar = document.querySelector('#toolbar-toggle i');
var link = document.querySelector('#toolbar-toggle');
var tools = document.querySelector('.toolbar ul');
var image = document.querySelector('#slider img');
var caption = document.querySelector('#slider figcaption');
var play = document.querySelector('#slider-toggle i');
var forward = document.querySelector('#slider-next');
var revers = document.querySelector('#slider-previous');
var random = document.querySelector('#slider-random');
var imgSlide;
var i = 0;
var go = false;
var images =
[
    { image: 'images/1.jpg', caption: 'Street Art'          },
    { image: 'images/2.jpg', caption: 'Fast Lane'           },
    { image: 'images/3.jpg', caption: 'Colorful Building'   },
    { image: 'images/4.jpg', caption: 'Skyscrapers'         },
    { image: 'images/5.jpg', caption: 'City by night'       },
    { image: 'images/6.jpg', caption: 'Tour Eiffel la nuit' }
];

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/

function launch() {
	bar.classList.toggle('fa-arrow-down');
	bar.classList.toggle('fa-arrow-right');
	tools.classList.toggle('hide');
}

function plus() {

    if (i >= images.length -1) {
    		i = 0;
    } else {
    		i++;
    }
	image.src = images[i].image;
	caption.textContent = images[i].caption;
}

function minus() {

    if (i <= 0) {
    		i = 5;
    } else {
    		i--;
    }
	image.src = images[i].image;
	caption.textContent = images[i].caption;
}

function shuffle() {

	i = getRandomInteger(0, images.length -1);
	image.src = images[i].image;
	caption.textContent = images[i].caption;
}

function slider() {

  play.classList.toggle('fa-pause');
  play.classList.toggle('fa-play');

   if (go == false) {
     imgSlide = setInterval(plus, 2000);
     go = true;
  } else {
      window.clearInterval(imgSlide);
      go = false;
   }
    image.src = images[i].image;
  	caption.textContent = images[i].caption;
}

function keyBoard(event) { // this function is like pre-setup

  if (event.keyCode == 32) { // 32 code for space
    slider();

  } else if (event.keyCode == 37) {
    minus();

  } else if (event.keyCode == 39) {
    plus();

  }else if (event.keyCode == 82) { //82 the code for R
    shuffle();
  }
}
/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/

image.src = images[i].image;
caption.textContent = images[i].caption;

link.addEventListener('click', launch);

play.addEventListener('click', slider);

forward.addEventListener('click', plus);

revers.addEventListener('click', minus);

random.addEventListener('click', shuffle);

window.addEventListener('keyup', keyBoard);
