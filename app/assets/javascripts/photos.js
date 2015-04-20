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
});*/
$(function(){
  console.log('test');
$('div.single_image a').on('ajax:success', function(event, data, xhr, status) {
  console.log('tesabcde');
  console.log(data);
  console.log(xhr);
  console.log(status);
  return true;
});
});
