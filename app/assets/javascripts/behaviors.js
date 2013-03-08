$(document).ready(function() {
		$('#searchTerm').on("keyup", function() {
			var searchTerm = $(this).val().toUpperCase();
			
			//As user types, show anything matching in the div class=tonerinfo that user types
			//into the search input box, hide none matching.
			
			$('.tonerinfo:contains(' + searchTerm + ')').show();
			$('.tonerinfo:not(:contains(' + searchTerm + '))').hide();
			
			
		});
	});