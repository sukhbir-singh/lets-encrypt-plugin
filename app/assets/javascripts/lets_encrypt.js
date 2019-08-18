
var BASE_URL = "http://localhost:4400/certi/";

$("#refresh-btn").click(function(){
  showSpinner();
});

$("#configure-btn").click(function(){
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

$("#generate-btn").click(function(){
  showSpinner();
  $.ajax({
    method: "POST",
    dataType: "json",
    headers: {
    },
    url: BASE_URL + "generate",
    success: function(result){
      console.log(result);
      hideSpinner();
    }
  });
});

$("#renew-btn").click(function(){
  showSpinner();
  $.ajax({
    method: "POST",
    dataType: "json",
    url: BASE_URL + "renew",
    success: function(result){
      console.log(result);
      hideSpinner();
    }
  });
});

$("#delete-btn").click(function(){
  showSpinner();
  $.ajax({
    method: "POST",
    dataType: "json",
    url: BASE_URL + "delete",
    success: function(result){
      console.log(result);
      hideSpinner();
    }
  });
});
