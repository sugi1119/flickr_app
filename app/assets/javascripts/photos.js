/*$(document).ready (function (){
  $('img').on('click', function (){
    $.ajax({
      url: '/limage',
      dataType: 'json'
    }).done(function (response){
      console.log(response);
      // how can I send all 3 data ?
      $('.large').html(response.limage_id);
      console.log('yes :'+response.limage_id);
    }).fail(function (response){
      alert('uuuu no ajax capture');
    }).complete(function (response){
      console.log('AJAX transaction complete');
    });
 });
// });*/
$(function(){
  console.log('test');

  $('.single_image a').bind('ajax:success', function(event, data, status, xhr) {
    var x = JSON.stringify(data);
  alert(x);
  });
});
// $('.single_image a')
//   .on('ajax:success', function(event, data, status, xhr) {
//   console.log(data, status, xhr);
// })
//   .on('ajax:complete', function(xhr, status){
//     console.log(xhr, status);
//   })
//   .on('ajax:error', function (xhr, status, error){
//     console.log(xhr, status, error);
//   })
//   // console.log(data);
//   // console.log(xhr);
//   // console.log(status);
//   // return true;
// });

