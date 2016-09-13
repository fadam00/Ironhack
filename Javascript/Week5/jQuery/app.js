$(document).ready(function () {

	//Page has finished loading, we are ready to selet things.
	      $(".empanadas").on("click",function()
          {
            alert("CHILE EMPANADAS");

            $("body").append("<h1> EMPANADAS </h1>"); //Inside the tag, but LAST

            $("body").prepend("<h1> FOREVER </h1> "); //Inside the tag, but FIRST

            $("body").before ("<h1> TACO </h1> "); //Outside the tag, but RIGHT BEFORE

            $("body").after("<h1> TUESDAY </h1> "); //Outside the tag, but RIGHT AFTER
          });

          $('.nofade').on('click', function()
          {
          	alert("This will fade everything, are you ready for it?");
          	$('.bodeh').fadeToggle(500)
          	

          });

          $('#cookies').on('click', function(){
          	alert("Get ready for Charlie!");
          	


          })

        
	  });
    
