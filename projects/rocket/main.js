'use strict';

/***********************************************************************************/
/* *********************************** DONNEES *************************************/
/***********************************************************************************/
var count = document.querySelector('#billboard span');
var down = 10;

var button = document.querySelector('#firingButton');
var rocket = document.querySelector('#rocket');

/***********************************************************************************/
/* ********************************** FONCTIONS ************************************/
/***********************************************************************************/

function countDown() {

		count.textContent = down;

			if (down <= 0) {

				clearInterval(countDown);

			} else {

					down--;
			}
}

function launch() {

		var time = setInterval(countDown, 1000);//it lanch the countdown on the bord
		window.setTimeout(rocketLaunch, 10000);// it will launch the rocket
		rocketFire();// calls the function which changes the image when the countdown is launched

}

function rocketFire() {

		rocket.src="images/rocket2.gif";
}

function rocketLaunch () {

		rocket.src="images/rocket3.gif";
		rocket.classList.add('tookOff'); // adds the attributs to the image - launches the rocket
}

/************************************************************************************/
/* ******************************** CODE PRINCIPAL **********************************/
/************************************************************************************/

countDown();

button.addEventListener('click', launch);
