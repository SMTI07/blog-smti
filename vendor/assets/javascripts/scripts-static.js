$(document).ready(function() {

	"use strict";

    // Disable default click on a with blank href
    
     $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
            
        }
    });

    $('a').click(function() {
        if ($(this).attr('href') === '#') {
            return false;
        }
    });

    // Smooth scroll to inner links

    if($('.inner-link').length){
    	$('.inner-link').smoothScroll({
    		offset: -59,
    		speed: 800
    	});
    }

	// Close mobile menu once link is clicked

	$('.menu li a').click(function(){
		if($('nav').hasClass('nav-open')){
			$('nav').removeClass('nav-open');
		}
	});


    // Set bg of nav container if dark skin

    if($('nav').hasClass('dark')){
    	$('.nav-container').addClass('dark');
    	$('.main-container').find('section:nth-of-type(1)').css('outline', '40px solid #222');
    }

    if ($(window).width() >= 992 && $('.background-image-holder').height()) {
        $(window).scroll(function() {
            if ($(this).scrollTop() > ($('.background-image-holder').height() - 80) ) {
                $('nav').css('top','0');
            } else {
                $('nav').css('top', '-80px');
            }
        });
    } else {
        $('nav').css('top','0');
        $('.main-container').css('margin-top','80px');
        $('.super-nav').hide();
    }

    if(!$('nav').hasClass('fixed') && !$('nav').hasClass('overlay')){

        // Compensate the height of parallax element for inline nav

        if($(window).width() > 768){
            $('.parallax:first-child .background-image-holder').css('top', -($('nav').outerHeight(true)));
        }

        // Adjust fullscreen elements
        if($(window).width() > 768 && ($('section.parallax:first-child, header.parallax:first-child').outerHeight() == $(window).height()) ){
            $('section.parallax:first-child, header.parallax:first-child').css('height', ($(window).height() - $('nav').outerHeight(true)));
        }
    }

    // Mobile nav

    $('.mobile-toggle').click(function() {
        $(this).closest('nav').toggleClass('nav-open');
        if ($(this).closest('nav').hasClass('nav-3')) {
            $(this).toggleClass('active');
        }
    });

    // Append .background-image-holder <img>'s as CSS backgrounds

    $('.background-image-holder').each(function() {
        var imgSrc = $(this).children('img').attr('src');
        $(this).css('background', 'url("' + imgSrc + '")');
        $(this).children('img').hide();
        $(this).css('background-position', '50% 50%');
    });

    // Fade in background images

	setTimeout(function(){
		$('.background-image-holder').each(function() {
			$(this).addClass('fadeIn');
		});
    },200);

});
