// $(document).on('ready page:load', function () {
//    tinymce.remove();
// });

var ready;
ready = function() {

alert('test');
  tinyMCE.remove();
  tinyMCE.init({
    selector: 'test'
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);