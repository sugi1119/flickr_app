$(document).ready (function (){
  $('img').on('click', function (){
    $.ajax({
      url: '/limage',
      dataType: 'json'
    }).done(function (response){
      $('#large').append(response.limage_id);
      console.log('yes');
    }).fail(function (response){
      alert('uuuu no ajax capture');
    }).complete(function (response){
      console.log('AJAX transaction complete');
    });
 });
});

//     $.ajax({
//       url: 'photos/limage',
//       dataType: 'json'
//     }).done(function (response){
//       $('#large').html(response.id)
//     }).fail(function (response) {
//       alert('unable to load data');
//     }).complete(function (response){
//       console.log('AJAX transaction completed');
//     });

//   });
// });
