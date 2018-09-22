function startIsotope(){
  var buttonFilter;
  //init Isotope
  var $grid = $('.grid').isotope({
    itemSelector: '.element-item',
    layoutMode: 'fitRows',
    percentPosition: true,
    transformsEnabled: false,
    animationOptions: {
      duration: 10,
      easing: 'linear',
      queue: false
    } ,

    filter: function() {
      var $this = $(this);
      var buttonResult = buttonFilter ? $this.is( buttonFilter ) : true;
      return buttonResult;
    }

  });

  $grid.imagesLoaded().progress(function (){
    $grid.isotope('layout');
  });

  $('#filters').on( 'click', 'button', function() {
    buttonFilter = $( this ).attr('data-filter');
    $grid.isotope();
  });

  $('.button-group').each( function( i, buttonGroup ) {
    var $buttonGroup = $( buttonGroup );
    $buttonGroup.on( 'click', 'button', function() {
      $buttonGroup.find('.active').removeClass('active');
      $( this ).addClass('active');
    });
  });
};
