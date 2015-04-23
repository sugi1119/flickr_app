$(function(){
  $('a[data-remote]')
   .bind('ajax:success', function (event, data, status, xhr) {
   alert(data.largeimageurl);
   console.log(data.largeimageid);
   console.log(data.largeimagetitle);
   })
  .bind('ajax:complete', function (xhr, status){
    console.log("Completed!");
   })
  .bind('ajax:error', function (xhr, status, error){
    console.log("Somthing wrong!!");
   });
   return false;
});






