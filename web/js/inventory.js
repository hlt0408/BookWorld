$(function() {
	$.ajax({
		url : "/api/inventory",
		type : "get",
		success : function(result) {
			var cars = JSON.parse(result);
			console.log(result);
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
});

function browseByMake () {
	var obj = JSON.stringify({"make" : $( "#make" ).val()});
	$.ajax({
		contentType:'application/json',
		url : "/api/inventory/make",
		type : "post",
		dataType: "json",
		data : obj,
		success : function(cars) {
			console.log(cars);
			$("#inv").html("");
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}

function browseByYear () {
	var obj = JSON.stringify({"year" : $( "#year" ).val()});
	$.ajax({
		url : "/api/inventory/year",
		type : "post",
		contentType:'application/json',
		dataType: "json",
		data : obj,
		success : function(cars) {
			$("#inv").html("");
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}

function browseByBodytype () {
	$.ajax({
		url : "/api/inventory/bodytype/" + $( "#bodytype" ).val(),
		type : "get",
		success : function(result) {
			$("#inv").html("");
			var cars = JSON.parse(result);
			console.log(result);
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].id + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].path + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].make + ' ' + cars[i].model + ' ' + cars[i].year + '</h3>' +
								'<h4>$' + cars[i].price + '</h4>' +
								'<h4>' + cars[i].bodytype + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}

function browseByPrice () {
	$.ajax({
		url : "/api/inventory/xml/price/" + $( "#price" ).val(),
		type : "get",
		success : function(result) {
			$("#inv").html("");
			console.log(result);
			cars = result.getElementsByTagName("car");
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].childNodes[0].firstChild.nodeValue + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].childNodes[6].firstChild.nodeValue + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].childNodes[1].firstChild.nodeValue + ' ' + cars[i].childNodes[2].firstChild.nodeValue + ' ' + cars[i].childNodes[3].firstChild.nodeValue + '</h3>' +
								'<h4>$' + cars[i].childNodes[5].firstChild.nodeValue + '</h4>' +
								'<h4>' + cars[i].childNodes[4].firstChild.nodeValue + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}

function browseByColor () {
	$.ajax({
		url : "/api/inventory/xml/color/" + $( "#color" ).val(),
		type : "get",
		success : function(result) {
			$("#inv").html("");
			console.log(result);
			cars = result.getElementsByTagName("car");
			for ( var i = 0; i < cars.length; i++) {
				$("#inv").prepend(
						'<div class="row" id="' + cars[i].childNodes[0].firstChild.nodeValue + '">' +
							'<div class="col-md-7">' +
								'<a href="/item">' +
									'<img class="img-responsive img-hover" src="/img/inventory/' + cars[i].childNodes[6].firstChild.nodeValue + '" alt="car picture"> </a>' +
							'</div>' +
							'<div class="col-md-5">' +
								'<h3>' + cars[i].childNodes[1].firstChild.nodeValue + ' ' + cars[i].childNodes[2].firstChild.nodeValue + ' ' + cars[i].childNodes[3].firstChild.nodeValue + '</h3>' +
								'<h4>$' + cars[i].childNodes[5].firstChild.nodeValue + '</h4>' +
								'<h4>' + cars[i].childNodes[4].firstChild.nodeValue + '</h4>' +
								'<a class="btn btn-primary" href="/item">View Details</a>' +
							'</div>' +
						'</div>' +
						'<hr>'
				);
			}
		}
	});
}



