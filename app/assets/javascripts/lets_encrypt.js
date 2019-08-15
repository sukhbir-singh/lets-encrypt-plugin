$(document).on('click', '#refresh-btn', function(event) {
  showSpinner();
});

$(document).on('click', '#configure-btn', function(event) {
  hideSpinner();
});

function showSpinner(){
  var spinner=$("#main-spinner")[0];
  spinner.style.zIndex="1"
}

function hideSpinner(){
  var spinner=$("#main-spinner")[0];
  spinner.style.zIndex="-1"
}
