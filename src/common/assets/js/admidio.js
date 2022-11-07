
    'use strict'

    $('.form-group').removeClass('row');
    $('.form-group label').removeClass('col-sm-3');
    $('.form-group div').removeClass('col-sm-9 offset-sm-3');



    $('.admidio-blog .dropdown > a').addClass('btn btn-secondary btn-sm dropdown-toggle').text('');
    //$('.admidio-blog .dropdown-menu').addClass('py-2');
    //$('.admidio-blog .dropdown.menu.show').annimate({"top": "-10px"},'slow');
    $('.admidio-blog .dropdown-menu .dropdown-item').removeClass('btn');
    //$('.admidio-blog .dropdown-item').contents().eq(2).wrap('<span />');

    //$('.admidio-blog .dropdown').wrap('<div class="navbar-nav align-items-center ml-auto ml-md-0"></div>');
    
    //Login    
    $('#login_admidio_link').appendTo('.copyright');

    $('#profile_picture_links').find('.admidio-icon-link').each(function(){
        $(this).addClass('btn btn-sm btn-primary mt-2').removeClass('admidio-icon-link')
    })

    $('#password_link').addClass('btn-sm btn-primary');

    $('.admidio-card').addClass('shadow-soft border-light');