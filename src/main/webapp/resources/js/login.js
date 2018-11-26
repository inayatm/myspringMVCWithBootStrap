$(document)
		.ready(
				function() {

					$('[data-toggle="tooltip"]').tooltip();  
					
					$("#loginId")
							.click(
									function() {
										alert("Success!!!");

										$("#errormessage")
												.append(
														"<p> <font color='red'>${errorMessage}</font></p>");

										$("#target").submit();

									});

					$("#logout-modal").click(
							function(){
								
								   alert()
							    });
					
					
					
					
					
					

				});