//----------------------------------------------------------------
// >>> TABLE OF CONTENTS:
//----------------------------------------------------------------

// 01. Mobile Menu
// 02. Header Dropdown Menu
// 03. Select List (Dropdown)
// 04. Facts Counter
// 05. Category Filter (MixItUp Plugin)
// 06. Vertical Tabs
// 07. Blog Tags (Tooltip)
// 08. Owl Carousel
// 09. Sidebar Accordion
// 10. Responsive Tabs
// 11. Responsive Table
// 12. Form Fields (Value Disappear on Focus)
// 13. Bootstrap Carousel Swipe (Testimonials Carousel)
// 14. Bx Carousel
// 15. Contact Form Submit/Validation
// 16. Masonry

//----------------------------------------------------------------

$(function () {


   if (localStorage.chkbx && localStorage.chkbx != '') {
                    $('#rememberme').attr('checked', 'checked');
                    $('#username').val(localStorage.usrname);
                    $('#password').val(localStorage.pass);
                } else {
                    $('#rememberme').removeAttr('checked');
                    $('#username').val('');
                    $('#password').val('');
                }

                $('#rememberme').click(function() {

                    if ($('#rememberme').is(':checked')) {
                        // save username and password
                        localStorage.usrname = $('#username').val();
                        localStorage.pass = $('#password').val();
                        localStorage.chkbx = $('#rememberme').val();
                    } else {
                        localStorage.usrname = '';
                        localStorage.pass = '';
                        localStorage.chkbx = '';
                    }
                });
    'use strict';

    //Mobile Menu
    //--------------------------------------------------------
    var bodyObj = $('body');
    var MenuObj = $("#menu");
    var mobileMenuObj = $('#mobile-menu');

    bodyObj.wrapInner('<div id="wrap"></div>');

    var toggleMenu = {
        elem: MenuObj,
        mobile: function () {
            //activate mmenu
            mobileMenuObj.mmenu({
                slidingSubmenus: false,
                position: 'right',
                zposition: 'front'
            }, {
                pageSelector: '#wrap'
            });

            //hide desktop top menu
            this.elem.hide();
        },
        desktop: function () {
            //close the menu
            mobileMenuObj.trigger("close.mm");

            //reshow desktop menu
            this.elem.show();
        }
    };

    Harvey.attach('screen and (max-width:991px)', {
        setup: function () {
            //called when the query becomes valid for the first time
        },
        on: function () {
            //called each time the query is activated
            toggleMenu.mobile();
        },
        off: function () {
            //called each time the query is deactivated
        }
    });

    Harvey.attach('screen and (min-width:992px)', {
        setup: function () {
            //called when the query becomes valid for the first time
        },
        on: function () {
            //called each time the query is activated
            toggleMenu.desktop();
        },
        off: function () {
            //called each time the query is deactivated
        }
    });

    //Header Dropdown Menu
    //--------------------------------------------------------
    var megaMenuHasChildren = $('.dropdown');
    var megaMenuDropdownMenu = $('.dropdown-menu');

    megaMenuHasChildren.on({
        mouseenter: function () {
            if (navigator.userAgent.match(/iPad/i) !== null) {
                $(this).find(megaMenuDropdownMenu).stop(true, true).slideDown('400');
            } else {
                $(this).find(megaMenuDropdownMenu).stop(true, true).delay(400).slideDown();
            }
        }, mouseleave: function () {
            if (navigator.userAgent.match(/iPad/i) !== null) {
                $(this).find(megaMenuDropdownMenu).stop(true, true).slideUp('400');
            } else {
                $(this).find(megaMenuDropdownMenu).stop(true, true).delay(400).slideUp();
            }
        }
    });

    //************************
  $('.publisher').change(function() {
        var pubIds = "";
          $(".publisher:checked").each(function(){
           if (pubIds.length !== 0) {
               pubIds = pubIds + ',';
            }
              pubIds = pubIds + $(this).val();
          });
          $("#publisherIds" ).remove();
        $('<input>', {
            type: 'hidden',
            id: 'publisherIds',
            name: 'publisherIds',
            value: pubIds
        }).appendTo('#booksearch');
    });

    //************************
      $('.author').change(function() {
            var autIds = "";
              $(".author:checked").each(function(){
               if (autIds.length !== 0) {
                   autIds = autIds + ',';
                }
                  autIds = autIds + $(this).val();
              });
              $("#authorIds" ).remove();
            $('<input>', {
                type: 'hidden',
                id: 'authorIds',
                name: 'authorIds',
                value: autIds
            }).appendTo('#booksearch');
        });
//************************
    $('.cart-add-item').on('click', function (e) {

      $.post( "/cart/cartitem", { bookId: $(this).attr('rel') })
      .done(function(data) {
           if (data.id == null) {
              $('body').html(data);
             } else {

         $('#cart_size').text(data.cartSize);
         $(".book-status[rel='" + data.id +"']").text('BOOKED');
         $(".add-item[rel='" + data.id +"']").attr("hidden",true);
          $("#shopping-cart-list").append('<li class="clearfix" rel='+ data
          .id+'><img src='+
          data.imagePath+' alt="cart item" /><div class="item-info"><div '+
          'class="name"><strong>'+ data.title +'</strong></div></div>'+
' <a class="remove remove-cart-item" rel='+ data.id+'><i class="fa fa-trash-o"></i></a></li>'
            )
            $('.remove-cart-item').on('click', function (e) {
                    deleteCartItem($(this).attr('rel'));
                   });
            if($("#shopping-cart-list li").length == 1){
                       $(".cart-buttons").append('<a class="btn ' +
                       'btn-primary checkout">Checkout</a>');
                         $('.checkout').on('click', function (e) {
                          $.post( "/user/order")
                               .done(function(data) {
                                 window.location.reload();
                               });
                         });
                    }
        }});

       });

//************************
       $('.order-item-remove').on('click', function (e) {
        $.ajax( {
                     url : '/user/order/'+$(this).attr('rel'),
                     type : 'DELETE',
                     success : function ( data ) {
                          window.location.reload();
                     }

                  });
       });
  //************************
         $('.order-confirm').on('click', function (e) {
          $.ajax( {
                       url : '/librarian/orders/'+$(this).attr('rel'),
                       type : 'PUT',
                       success : function ( data ) {
                            window.location.reload();
                       }

                    });
         });
    //************************
             $('.order-close').on('click', function (e) {
              $.ajax( {
                           url : '/librarian/orders/'+$(this).attr('rel')
                           +'/close',
                           type : 'PUT',
                           success : function ( data ) {
                                window.location.reload();
                           }

                        });
             });
        //************************
                     $('.user-block').on('click', function (e) {
                      $.ajax( {
                                   url : '/admin/user/'+$(this).attr('rel')
                                   +'/block',
                                   type : 'PUT',
                                   success : function ( data ) {
                                        window.location.reload();
                                   }

                                });
                     });
      //************************
                    $('.read-more').on('click', function (e) {
                    var id =$(this).attr('rel');
                    var dots = $(".dots[rel='" + id +"']");
                    var moreText = $(".more[rel='" + id +"']");
                    var btn = $(this);
                    if (dots.is(':visible')) {
                         dots.removeAttr("style").hide();
                         btn.text("Read less");
                         $(this).closest('.post-detail').css( "zIndex", 999);
                         moreText.show();

                     } else {
                        dots.show();
                        btn.text("Read more");
                        moreText.removeAttr("style").hide();
                       }
                    });
      //************************
                                    $('.user-activate').on('click', function (e) {
                                      $.ajax( {
                                                   url : '/admin/user/'+$(this)
                                                   .attr('rel')
                                                  +'/activate',
                                                   type : 'PUT',
                                                   success : function ( data ) {
                                                        window.location.reload();
                                                   }

                                                });
                                     });
                                //************************
              $('.book-remove').on('click', function (e) {
               $.ajax( {
                            url : '/librarian/books/'+$(this).attr('rel'),
                            type : 'DELETE',
                            success : function ( data ) {
                                 window.location.reload();
                            },
                            error: function (error) {
                                 alert("error");
                            }

                         });
              });

 //************************

        $('.checkout').on('click', function (e) {
            $.post( "/user/order")
            .done(function(data) {
               window.location.reload();
            });
        });

//************************
       $('.remove-cart-item').on('click', function (e) {
        deleteCartItem($(this).attr('rel'));
       });
        function deleteCartItem(bookId) {
            $.ajax( {
              url : '/cart/cartitem/'+bookId,
              type : 'DELETE',
              success : function ( data ) {
                    $('#cart_size').text(data.cartSize);
                    $(".book-status[rel='" + data.id +"']").text('FREE');
                    $(".add-item[rel='" + data.id +"']").attr("hidden",false);
                    $("#shopping-cart-list  li[rel='" + data.id +"']").remove();
                    if($("#shopping-cart-list li").length == 0){
                       $(".cart-buttons a").remove();
                    };
              }

           });
}
    //************************
          $('.bookStatus').change(function() {
                var statuses = "";
                  $(".bookStatus:checked").each(function(){
                   if (statuses.length !== 0) {
                       statuses = statuses + ',';
                    }
                      statuses = statuses + $(this).val();
                  });
                  $("#bookStatus" ).remove();
                $('<input>', {
                    type: 'hidden',
                    id: 'bookStatus',
                    name: 'bookStatus',
                    value: statuses
                }).appendTo('#booksearch');
            });
        //************************
                  $('#pubYear').change(function() {
                          $("#publicationYear" ).remove();
                        $('<input>', {
                            type: 'hidden',
                            id: 'publicationYear',
                            name: 'publicationYear',
                            value: this.value
                        }).appendTo('#booksearch');
                    });
                //************************
   $('.book-edit').on('click', function (e) {
     $(".popup[rel='" +$(this).attr('rel') +"']").fadeIn("slow"); // Открываем окно
       $(".overlay_popup[rel='" +$(this).attr('rel') +"']").show();

 });
 $(".close").click(function (){
                      $(".overlay_popup, .popup[rel='" +$(this).attr('rel') +"']").fadeOut("slow");
                 });
 $('.overlay_popup').click(function() { // Обрабатываем клик по заднему фону
     $(".overlay_popup, .popup[rel='" +$(this).attr('rel') +"']").hide(); // Скрываем затемнённый задний фон и основное всплывающее окно
 })
    //Select List (Dropdown)
    //--------------------------------------------------------
    var selectObj = $('select').not("#orderStatus");
    var selectListObj = $('ul.select-list');
    selectObj.each(function () {
        var $this = $(this), numberOfOptions = $(this).children('option').length;

        $this.addClass('select-hidden');
        $this.wrap('<div class="select"></div>');
        $this.after('<div class="select-styled"></div>');

        var $styledSelect = $this.next('div.select-styled');
        var option = $(this).find('option:selected');
        $styledSelect.text(option === undefined?$this.children('option').eq(0)
        .text():option.text());

        var $list = $('<ul />', {
            'class': 'select-list'
        }).insertAfter($styledSelect);

        for (var i = 0; i < numberOfOptions; i++) {
            $('<li />', {
                text: $this.children('option').eq(i).text(),
                rel: $this.children('option').eq(i).val()
            }).appendTo($list);
        }

        var $listItems = $list.children('li');

        $styledSelect.on('click', function (e) {
            e.stopPropagation();
            $('div.select-styled.active').not(this).each(function () {
                $(this).removeClass('active').next(selectListObj).hide();
            });
            $(this).toggleClass('active').next(selectListObj).toggle();

        });

        $listItems.on('click', function (e) {
            e.stopPropagation();
            $styledSelect.text($(this).text()).removeClass('active');

            $this.val($(this).attr('rel'));
            var url = new window.URL(document.location);
            url.searchParams.set("sort", $(this).attr('rel'));

            window.location.href = url.toString();
            $list.hide();
        });

        $(document).on('click', function () {
            $styledSelect.removeClass('active');
            $list.hide();
        });

    });

    //Facts Counter
    //--------------------------------------------------------
    var counterObj = $('.fact-counter');
    counterObj.counterUp({
        delay: 10,
        time: 500
    });

    //Category Filter (MixItUp Plugin)
    //--------------------------------------------------------
    var folioFilterObj = $('#category-filter');
    folioFilterObj.mixItUp();

    //Vertical Tabs
    //--------------------------------------------------------
    var tabObject = $(".tabs-menu li");
    var tabContent = $(".tabs-list .tab-content");
    tabObject.on('click', function (e) {
        e.preventDefault();
        $(this).siblings('li.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        tabContent.removeClass("active");
        tabContent.eq(index).addClass("active");
    });

    //Blog Tags (Tooltip)
    //--------------------------------------------------------
    var tagObj = $('[data-toggle="blog-tags"]');
    tagObj.tooltip();

    //Owl Carousel
    //--------------------------------------------------------
    var owlObj = $('.owl-carousel');
    owlObj.owlCarousel({
        loop: false,
        margin: 30,
        nav: false,
        dots: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 2
            }
        }
    });

    var owlEventObj = $('.owl-carousel-event');
    owlEventObj.owlCarousel({
        loop: false,
        margin: 30,
        nav: false,
        dots: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 2
            },
            1200: {
                items: 3
            }
        }
    });

    //Sidebar Accordion
    //--------------------------------------------------------
    var secondaryObj = $('#secondary [data-accordion]');
    var multipleObj = $('#multiple [data-accordion]');
    var singleObj = $('#single[data-accordion]');

    secondaryObj.accordion({
        singleOpen: true
    });

    multipleObj.accordion({
        singleOpen: false
    });

    singleObj.accordion({
        transitionEasing: 'cubic-bezier(0.455, 0.030, 0.515, 0.955)',
        transitionSpeed: 200
    });

    //Responsive Tabs
    //--------------------------------------------------------
    var restabObj = $('#responsiveTabs');
    restabObj.responsiveTabs({
        startCollapsed: 'accordion'
    });

    //Responsive Tables
    //--------------------------------------------------------
    var tableObj = $('.table');
    var shoptableObj = $('.shop_table');
    tableObj.basictable({
        breakpoint: 991
    });

    shoptableObj.basictable({
        breakpoint: 991
    });

    //Form Fields (Value Disappear on Focus)
    //--------------------------------------------------------
    var requiredFieldObj = $('.input-required');

    requiredFieldObj.find('input').on('focus',function(){
        if(!$(this).parent(requiredFieldObj).find('label').hasClass('hide')){
            $(this).parent(requiredFieldObj).find('label').addClass('hide');
        }
    });
    requiredFieldObj.find('input').on('blur',function(){
        if($(this).val() === '' && $(this).parent(requiredFieldObj).find('label').hasClass('hide')){
            $(this).parent(requiredFieldObj).find('label').removeClass('hide');
        }
    });

    //Bootstrap Carousel Swipe (Testimonials Carousel)
    //--------------------------------------------------------
    var testimonialsObj = $("#testimonials");
    testimonialsObj.swiperight(function () {
        $(this).carousel('prev');
    });
    testimonialsObj.swipeleft(function () {
        $(this).carousel('next');
    });

    //Bx Carousel
    //--------------------------------------------------------

    //Popular Items Detail V1

    var popularSlidesD1 = 2;
    var popularWidthD1 = 370;
    var popularMarginD1 = 54;

    if($(window).width() <= 1199) {
        popularSlidesD1 = 2;
        popularWidthD1 = 330;
        popularMarginD1 = 37;
    }
    if($(window).width() <= 991) {
        popularSlidesD1 = 2;
        popularWidthD1 = 350;
        popularMarginD1 = 20;
    }
    if($(window).width() <= 767) {
        popularSlidesD1 = 1;
        popularWidthD1 = 320;
        popularMarginD1 = 0;
    }

    var popularItemObjD1 = $('.popular-items-detail-v1');
    popularItemObjD1.bxSlider({
        minSlides: 1,
        maxSlides: popularSlidesD1,
        slideWidth: popularWidthD1,
        slideMargin: popularMarginD1,
        responsive: true,
        touchEnabled: true,
        controls: false,
        infiniteLoop: true,
        shrinkItems: true
    });

    //Popular Items Detail V2

    var popularSlidesD2 = 3;
    var popularWidthD2 = 360;
    var popularMarginD2 = 30;

    if($(window).width() <= 1199) {
        popularSlidesD2 = 3;
        popularWidthD2 = 300;
        popularMarginD2 = 20;
    }
    if($(window).width() <= 991) {
        popularSlidesD2 = 2;
        popularWidthD2 = 350;
        popularMarginD2 = 20;
    }
    if($(window).width() <= 767) {
        popularSlidesD2 = 1;
        popularWidthD2 = 320;
        popularMarginD2 = 0;
    }

    var popularItemObjD2 = $('.popular-items-detail-v2');
    popularItemObjD2.bxSlider({
        minSlides: 1,
        maxSlides: popularSlidesD2,
        slideWidth: popularWidthD2,
        slideMargin: popularMarginD2,
        responsive: true,
        touchEnabled: true,
        controls: false,
        infiniteLoop: true,
        shrinkItems: true
    });

    //Contact Form Submit/Validation
    //--------------------------------------------------------
    var emailerrorvalidation = 0;
    var formObj = $('#contact');
    var contactFormObj = $('#submit-contact-form');
    var firstNameFieldObj = $("#first-name");
    var lastNameFieldObj = $("#last-name");
    var emailFieldObj = $("#email");
    var phoneFieldObj = $("#phone");
    var messageFieldObj = $("#message");
    var successObj = $('#success');
    var errorObj = $('#error');

    contactFormObj.on('click', function () {
        var emailaddress = emailFieldObj.val();
        function validateEmail(emailaddress) {
            var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
            if (filter.test(emailaddress)) {
                return true;
            } else {
                return false;
            }
        }

        var data = {
            firstName: firstNameFieldObj.val(),
            lastName: lastNameFieldObj.val(),
            email: emailFieldObj.val(),
            phoneNumber: phoneFieldObj.val(),
            text: messageFieldObj.val()
        };
        if (data.firstName === '' || data.lastName === '' || data.email === '' || data.phoneNumber === '' || data.text === '') {
            alert("All fields are mandatory");
        } else {
            if (validateEmail(emailaddress)) {
                if (emailerrorvalidation === 1) {
                    alert('Nice! your Email is valid, you can proceed now.');
                }
                emailerrorvalidation = 0;
                $.ajax({
                    type: "POST",
                    url: "/email/contact",
                    data: data,
                    cache: false,
                    success: function () {
                        successObj.fadeIn(1000);
                        formObj[0].reset();
                    },
                    error: function () {
                        errorObj.fadeIn(1000);
                    }
                });
            } else {
                emailerrorvalidation = 1;
                alert('Oops! Invalid Email Address');
            }
        }
        return false;
    });
});

$( window ).load(function() {
    //Masonry
    //--------------------------------------------------------
    var girdFieldObj = $('.grid');
    girdFieldObj.masonry({
        itemSelector: '.grid-item',
        percentPosition: true
    });
});
