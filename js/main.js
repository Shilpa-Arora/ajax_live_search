(function() {
"use strict";

	var Request;
	var Field = document.querySelector("#searchContainer");

	//The event handler. that will capture the event object.
	function showResults(event)
	{
		//stores what the user is typing.
		var str = event.currentTarget.value;
		Request = create(); //util the function that creates XHR Object.
		if(Request===null)
		{ //subway car cannot be created, send use message.
			alert("Your Browser needs updating, does not support AJAX");
			return;
		}

		var url = "searchcustomer.php?searchstring="+str;
		Request.onreadystatechange = searchStatus;
		console.log(Request);
		Request.open("GET", url, true);
		Request.send(null);
	}

	function searchStatus()
	{
		if(Request.readyState===4 || Request==="complete")
		{
			document.querySelector("#hint").innerHTML = Request.responseText;
		}
	}

	Field.addEventListener("keyup", showResults, false);
		
})();		

//function called is in HTML so we cannot place it SEAF, otherwise HTML can't see it.
//PHP writes this function into our HTML, so looks like this displayInfo(3)
function  displayInfo(id)
{
	"use strict";

	var displayRequest;
	var displayRequest2;



	 function displayCustomer(id)
	 {
	 	displayRequest = create(); //create XHR Object or subway car.
	 	displayRequest2 = create(); 
	 	if(displayRequest===null && displayRequest2===null)
	 	{
	 		alert("Please try again or upgrade your Browser");
	 		return;
	 	}

	 	var url = "displayCustomer.php?custid=" + id;
	 	displayRequest.onreadystatechange = displayStatus;
	 	displayRequest.open("GET", url, true);
	 	displayRequest.send(null);
	 	 

	 	var url2 = "displayinfo.php?custid=" + id;
	 	displayRequest2.onreadystatechange = displayStatus2;
	 	displayRequest2.open("GET", url2, true);
	 	displayRequest2.send(null);
	 }
function displayStatus()
	 {
	 	if(displayRequest.readyState===4 || displayRequest.readyState==="complete")
	 	{
	 		document.querySelector("#imgDiv").innerHTML = displayRequest.responseText;
	 	}
	 }
	
	 function displayStatus2()
	 {
	 	if(displayRequest2.readyState===4 || displayRequest2.readyState==="complete")
	 	{
	 		document.querySelector("#imgText").innerHTML = displayRequest2.responseText;
	 	}
	 }

	 displayCustomer(id);
}
	
	
	
		


	
	
	
	