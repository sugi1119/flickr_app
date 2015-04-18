// $(document).ready (function(){
//   $('.single_image').on('click','img', function(){
//     // $(this).toggleClass(popupWindow);
//     popupWindow();

//     console.log("image is clicked");



//   })

// });

// var popupWindow = function(url){
//     pop = window.open (
//     url,'popUpWindow','height=700,width=700,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
// };

// var closeWindow = function(){
//   shut = window.close(this);
// }



// function newPopup(url){
//   popupWindow = window.opne()
// }

// $('a[data-popup]').on('click', function(e) { window.open($(this).attr('href')); e.preventDefault(); });

 // $(document).ready (function(){

//   $('.single_image').on('click', 'img', function(){
//       $('.pop').slideFadeToggle();
//     })

// });

// $.fn.slideFadeToggle = function(easing, callback) {
//   return this.animate({ opacity: 'toggle', height: 'toggle' }, 'fast', easing, callback);
// };
    // var check = $(this).find('#largeImage');
    // console.log(check.val());

    // $.ajax('/home', {
    //   type: 'POST'
    //   data: $('a').serialize(),
    //   success: function(result){
    //     console.log(result);
    //   }

    // });

        // $.each(json, function(key, value){

        // });




// <div class="search_result">
//   <% @flickr_images.each do |image| %>
//   <div class="single_image">
//     <%=link_to (image_tag(image.thumbnail_url, :size => '75x75')), :id=> "largeImage", :data => image.original_url.to_json, remote: true %>
//   </div>
//   <%end if @flickr_images%>