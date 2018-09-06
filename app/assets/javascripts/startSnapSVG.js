//Snap SVG Header Animation
function snapSVG(){
  var l = Snap('#logo');

  setTimeout( function() {
    // modify this one line below, and see the result !
    var logoTitle = 'Alirio Jose Diaz Sanchez';
    var logoRandom = '';
    var logoTitleContainer = l.text(0, 50, '');
    var possible = "-+*/|}{[]~\\\":;?/.><=+-_)(*&^%$#@!)}";
    logoTitleContainer.attr({
      fill: '#FFFFFF',
      stroke: '#dedede'
    });

    function generateRandomTitle(i, logoRandom) {
      setTimeout( function() {
        logoTitleContainer.attr({ text: logoRandom });
      }, i*70 );
    }

    for( var i=0; i < logoTitle.length+1; i++ ) {
      logoRandom = logoTitle.substr(0, i);
      for( var j=i; j < logoTitle.length; j++ ) { 
        logoRandom += possible.charAt(Math.floor(Math.random() * possible.length)); 
      }
      generateRandomTitle(i, logoRandom);
      logoRandom = '';
    }

    }, 800 
  );
};
