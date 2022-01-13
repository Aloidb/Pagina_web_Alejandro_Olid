/* Concurso de recetas */

var concurso = document.getElementById('concurso'),
    botonConcurso = document.getElementById('botonConcurso'),
    overlay1 = document.getElementById('overlay1'),
    popup1 = document.getElementById('popup1'),
    exit1 = document.getElementById('exit1');

concurso.addEventListener( 'click', function() {
    overlay1.classList.add('active');
    popup1.classList.add('active'); });

botonConcurso.addEventListener( 'click', function() {
    overlay1.classList.add('active');
    popup1.classList.add('active');
    botonConcurso.classList.add('active'); });

exit1.addEventListener( 'click', function() {
    overlay1.classList.remove('active');
    popup1.classList.remove('active'); });

/* Suscripción */

var apuntame = document.getElementById('apuntame'),
    overlay2 = document.getElementById('overlay2'),
    popup2 = document.getElementById('popup2'),
    exit2 = document.getElementById('exit2');

apuntame.addEventListener( 'click', function() {
    overlay2.classList.add('active');
    popup2.classList.add('active'); });

exit2.addEventListener( 'click', function() {
    overlay2.classList.remove('active');
    popup2.classList.remove('active'); });