/*

=========================================================
* Impact Design System - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/impact-design-system
* Copyright 2010 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/impact-design-system/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/

"use strict";
$(document).ready(function () {

    // options

    var breakpoints = {
        sm: 540,
        md: 720,
        lg: 960,
        xl: 1140
    };

    // preloader
    var $preloader = $('.preloader');
    if($preloader.length) {
        $preloader.delay(1500).slideUp();
    }

    var $navbarCollapse = $('.navbar-main .collapse');

    // Collapse navigation
    $navbarCollapse.on('hide.bs.collapse', function () {
        var $this = $(this);
        $this.addClass('collapsing-out');
        $('html, body').css('overflow', 'initial');
    });

    $navbarCollapse.on('hidden.bs.collapse', function () {
        var $this = $(this);
        $this.removeClass('collapsing-out');
    });

    $navbarCollapse.on('shown.bs.collapse', function () {
        $('html, body').css('overflow', 'hidden');
    });

    $('.navbar-main .dropdown').on('hide.bs.dropdown', function () {
        var $this = $(this).find('.dropdown-menu');

        $this.addClass('close');

        setTimeout(function () {
            $this.removeClass('close');
        }, 200);

    });

    $('.dropdown-submenu > .dropdown-toggle').click(function (e) {
        e.preventDefault();
        $(this).parent('.dropdown-submenu').toggleClass('show');
    });

    $('.dropdown').hover(function() {
        $(this).addClass('show');
        $(this).find('.dropdown-menu').addClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'true');
    }, function () {
        $(this).removeClass('show');
        $(this).find('.dropdown-menu').removeClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'false');
    });

    $('.dropdown').click(function() {
        if ($(this).hasClass('show')) {
            $(this).removeClass('show');
            $(this).find('.dropdown-menu').removeClass('show');
            $(this).find('.dropdown-toggle').attr('aria-expanded', 'false');
        } else {
            $(this).addClass('show');
        $(this).find('.dropdown-menu').addClass('show');
        $(this).find('.dropdown-toggle').attr('aria-expanded', 'true');
        }
    });

    // Headroom - show/hide navbar on scroll
    if ($('.headroom')[0]) {
        var headroom = new Headroom(document.querySelector("#navbar-main"), {
            offset: 0,
            tolerance: {
                up: 1,
                down: 0
            },
        });
        headroom.init();
    }

    // Background images for sections
    $('[data-background]').each(function () {
        $(this).css('background-image', 'url(' + $(this).attr('data-background') + ')');
    });

    $('[data-background-color]').each(function () {
        $(this).css('background-color', $(this).attr('data-background-color'));
    });

    $('[data-color]').each(function () {
        $(this).css('color', $(this).attr('data-color'));
    });

    // Tooltip
    $('[data-toggle="tooltip"]').tooltip();

    // Popover
    $('[data-toggle="popover"]').each(function () {
        var popoverClass = '';
        if ($(this).data('color')) {
            popoverClass = 'popover-' + $(this).data('color');
        }
        $(this).popover({
            trigger: 'focus',
            template: '<div class="popover ' + popoverClass + '" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
        })
    });

    // Additional .focus class on form-groups
    $('.form-control').on('focus blur', function (e) {
        $(this).parents('.form-group').toggleClass('focused', (e.type === 'focus' || this.value.length > 0));
    }).trigger('blur');

    $(".progress-bar").each(function () {
        $(this).waypoint(function () {
            var progressBar = $(".progress-bar");
            progressBar.each(function (indx) {
                $(this).css("width", $(this).attr("aria-valuenow") + "%");
            });
            $('.progress-bar').css({
                animation: "animate-positive 3s",
                opacity: "1"
            });
        }, {
                triggerOnce: true,
                offset: '60%'
            });
    });

    // When in viewport
    $('[data-toggle="on-screen"]')[0] && $('[data-toggle="on-screen"]').onScreen({
        container: window,
        direction: 'vertical',
        doIn: function () {
            //alert();
        },
        doOut: function () {
            // Do something to the matched elements as they get off scren
        },
        tolerance: 200,
        throttle: 50,
        toggleClass: 'on-screen',
        debug: false
    });

    // Scroll to anchor with scroll animation
    $('[data-toggle="scroll"]').on('click', function (event) {
        var hash = $(this).attr('href');
        var offset = $(this).data('offset') ? $(this).data('offset') : 0;

        // Animate scroll to the selected section
        $('html, body').stop(true, true).animate({
            scrollTop: $(hash).offset().top - offset
        }, 600);

        event.preventDefault();
    });

    //Parallax
    $('.jarallax').jarallax({
        speed: 0.2
    });

    //Smooth scroll
    var scroll = new SmoothScroll('a[href*="#"]', {
        speed: 500,
        speedAsDuration: true
    });

    // Equalize height to the max of the elements
    if ($(document).width() >= breakpoints.lg) {

        // object to keep track of id's and jQuery elements
        var equalize = {
            uniqueIds: [],
            elements: []
        };

        // identify all unique id's
        $('[data-equalize-height]').each(function () {
            var id = $(this).attr('data-equalize-height');
            if (!equalize.uniqueIds.includes(id)) {
                equalize.uniqueIds.push(id)
                equalize.elements.push({ id: id, elements: [] });
            }
        });

        // add elements in order
        $('[data-equalize-height]').each(function () {
            var $el = $(this);
            var id = $el.attr('data-equalize-height');
            equalize.elements.map(function (elements) {
                if (elements.id === id) {
                    elements.elements.push($el);
                }
            });
        });

        // equalize
        equalize.elements.map(function (elements) {
            var elements = elements.elements;
            if (elements.length) {
                var maxHeight = 0;

                // determine the larget height
                elements.map(function ($element) {
                    maxHeight = maxHeight < $element.outerHeight() ? $element.outerHeight() : maxHeight;
                });

                // make all elements with the same [data-equalize-height] value
                // equal the larget height
                elements.map(function ($element) {
                    $element.height(maxHeight);
                })
            }
        });
    }

    // update target element content to match number of characters
    $('[data-bind-characters-target]').each(function () {
        var $text = $($(this).attr('data-bind-characters-target'));
        var maxCharacters = parseInt($(this).attr('maxlength'));
        $text.text(maxCharacters);

        $(this).on('keyup change', function (e) {
            var string = $(this).val();
            var characters = string.length;
            var charactersRemaining = maxCharacters - characters;
            $text.text(charactersRemaining);
        })
    });

    // copy docs
    $('.copy-docs').on('click', function () {
        var $copy = $(this);
        var htmlEntities = $copy.parents('.nav-wrapper').siblings('.card').find('.tab-pane:last-of-type').html();
        var htmlDecoded = $('<div/>').html(htmlEntities).text().trim();

        var $temp = $('<textarea>');
        $('body').append($temp);
        console.log(htmlDecoded);
        $temp.val(htmlDecoded).select();
        document.execCommand('copy');
        $temp.remove();

        $copy.text('Copied!');
        $copy.addClass('copied');

        setTimeout(function () {
            $copy.text('Copy');
            $copy.removeClass('copied');
        }, 1000);
    });

    $('.current-year').text(new Date().getFullYear());

    $("body").on("click", "[data-action]", function(e) {

        e.preventDefault();

        var $this = $(this);
        var action = $this.data('action');
        var target = $this.data('target');


        // Manage actions

        switch (action) {
            case 'sidenav-pin':
                pinSidenav();
            break;

            case 'sidenav-unpin':
                unpinSidenav();
            break;

            case 'search-show':
                target = $this.data('target');
                $('body').removeClass('g-navbar-search-show').addClass('g-navbar-search-showing');

                setTimeout(function() {
                    $('body').removeClass('g-navbar-search-showing').addClass('g-navbar-search-show');
                }, 150);

                setTimeout(function() {
                    $('body').addClass('g-navbar-search-shown');
                }, 300)
            break;

            case 'search-close':
                target = $this.data('target');
                $('body').removeClass('g-navbar-search-shown');

                setTimeout(function() {
                    $('body').removeClass('g-navbar-search-show').addClass('g-navbar-search-hiding');
                }, 150);

                setTimeout(function() {
                    $('body').removeClass('g-navbar-search-hiding').addClass('g-navbar-search-hidden');
                }, 300);

                setTimeout(function() {
                    $('body').removeClass('g-navbar-search-hidden');
                }, 500);
            break;
        }
    })

    
  
    
});

$('#newsticker').newsTicker({
    row_height: 36,
    max_rows: 1,
    speed: 500,
    direction: 'up',
    duration: 6000,
    autostart: 1,
    pauseOnHover: 1
});

$('.breadcrumb').addClass('breadcrumb-primary breadcrumb-text-light');
$("[id^=div_image_]>a").attr("data-fancybox", "gallery");
$("[id^=div_image_]>a").attr("data-gallery", "");
$("[id^=div_image_]>a").attr("data-toggle", "");
$.fancybox.defaults.loop = true;

var cat_id = $('#cat_id').find(":selected").text();
$('.admidio-filter-status').text(' '+$('[for="cat_id"]').text()+' = '+cat_id);
$('#admidio-filter').append($('#navbar_filter form'));
$('.navbar-filter').remove();
$('#admidio-filter').on('shown.bs.collapse', function () {
    $('.admidio-filter-status').addClass('d-none');
});
$('#admidio-filter').on('hidden.bs.collapse', function () {
    $('.admidio-filter-status').removeClass('d-none');
})

$('.admidio-blog').each (function () {
    $(this).wrap('<div class="admidio-blog-post card card-sm card-body shadow-sm border-soft"/>').removeClass('card');
    $(this).find('.card-header').replaceWith(function() {
        var id = '#'+$('.admidio-blog').attr('id');
        return $('<a/>', {
            html: this.innerHTML,
            href: id
        });
    });
    $(this).find('.dropdown').addClass('blog-menu d-flex flex-row btn-group').removeClass('dropdown').appendTo($(this).find('.card-footer'));
    $(this).find('.dropdown-menu a').each(function() {
        $(this).parent().before(this);
        $(this).removeClass('dropdown-item');
        $(this).addClass('btn btn-icon btn-sm btn-secondary').find('i').wrap('<span class="btn-inner--icon"/>').attr('title', $(this).text()).tooltip();
        $(this).contents().filter(function(){
            return this.nodeType === 3;
        }).remove();
    })
    $(this).find('.dropdown-toggle').remove();
    $(this).find('.dropdown-menu').remove();
})

$('.admidio-card').each (function () {
    $(this).append('<div class="card-footer"/>')
    $(this).find('.dropdown').addClass('photo-menu d-flex flex-row btn-group').removeClass('dropdown').appendTo($(this).find('.card-footer'));
    $(this).find('.dropdown-menu a').each(function() {
        $(this).parent().before(this);
        $(this).removeClass('dropdown-item');
        $(this).addClass('btn btn-icon btn-sm btn-secondary').find('i').wrap('<span class="btn-inner--icon"/>').attr('title', $(this).text()).tooltip();
        $(this).contents().filter(function(){
            return this.nodeType === 3;
        }).remove();
    })
    $(this).find('[data-toggle=dropdown').remove();
    $(this).find('.dropdown-menu').remove();
})


$('#dropdownMenuButton').attr('data-offset', '10,10')