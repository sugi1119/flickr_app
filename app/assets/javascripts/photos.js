// Get data from home.html.erb link_to tag, photos_controller/ largeimage, then get back data to home.html.erb to display

$(function(){
  $('a[data-remote]')
   .bind('ajax:success', function (event, data, status, xhr) {
   $('.large').html(
    '<div class="largeformat">'+
      '<div class="larger"><img src=' + data.largeimageurl + '></div>'+
      '<div class="largeimageformat">Title: ' +   data.largeimagetitle +
      '<br>Photo id#: ' + data.largeimageid + '</div>'+
    '</div>');
   })
  .bind('ajax:complete', function (xhr, status){
    console.log("Ajax transmission is completed!");
   })
  .bind('ajax:error', function (xhr, status, error){
    console.log("Somthing wrong!!");
   });
});




