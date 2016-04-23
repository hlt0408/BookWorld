$(function () {
    $.ajax({
        url: "/BookWorld/InventoryServlet",
        type: "get",
        success: function (books) {
            console.log(books[0].Path);
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].Index + '">' +
                        '<div class="col-md-5">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="img/inventory/' + books[i].Path + '" alt="car picture" width="144" height="128"> </a>' +
                        '</div>' +
                        '<div class="col-md-7">' +
                        '<h4>Title:       ' + books[i].Title + ' ' + '</h3>' +
                        '<h4>Author:       ' + books[i].Author + ' ' + '</h3>' +
                        '<h4>Genre:       ' + books[i].Genre + ' ' + '</h3>' +
                        '<h5>Rating:       ' + books[i].Rating + ' / 5</h4>' +
                        '<h5>Price:       $ ' + books[i].Price + '</h4>' +
                        '<a class="btn btn-primary" href="/BookWorld/item">Buy</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
});

function browseByMake() {
    var obj = JSON.stringify({"make": $("#make").val()});
    $.ajax({
        contentType: 'application/json',
        url: "/api/inventory/make",
        type: "post",
        dataType: "json",
        data: obj,
        success: function (books) {
            console.log(books);
            $("#inv").html("");
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].id + '">' +
                        '<div class="col-md-7">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="/img/inventory/' + books[i].path + '" alt="car picture"> </a>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<h3>' + books[i].make + ' ' + books[i].model + ' ' + books[i].year + '</h3>' +
                        '<h4>$' + books[i].price + '</h4>' +
                        '<h4>' + books[i].bodytype + '</h4>' +
                        '<a class="btn btn-primary" href="/item">View Details</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
}

function browseByYear() {
    var obj = JSON.stringify({"year": $("#year").val()});
    $.ajax({
        url: "/api/inventory/year",
        type: "post",
        contentType: 'application/json',
        dataType: "json",
        data: obj,
        success: function (books) {
            $("#inv").html("");
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].id + '">' +
                        '<div class="col-md-7">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="/img/inventory/' + books[i].path + '" alt="car picture"> </a>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<h3>' + books[i].make + ' ' + books[i].model + ' ' + books[i].year + '</h3>' +
                        '<h4>$' + books[i].price + '</h4>' +
                        '<h4>' + books[i].bodytype + '</h4>' +
                        '<a class="btn btn-primary" href="/item">View Details</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
}

function browseByBodytype() {
    $.ajax({
        url: "/api/inventory/bodytype/" + $("#bodytype").val(),
        type: "get",
        success: function (result) {
            $("#inv").html("");
            var books = JSON.parse(result);
            console.log(result);
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].id + '">' +
                        '<div class="col-md-7">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="/img/inventory/' + books[i].path + '" alt="car picture"> </a>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<h3>' + books[i].make + ' ' + books[i].model + ' ' + books[i].year + '</h3>' +
                        '<h4>$' + books[i].price + '</h4>' +
                        '<h4>' + books[i].bodytype + '</h4>' +
                        '<a class="btn btn-primary" href="/item">View Details</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
}

function browseByPrice() {
    $.ajax({
        url: "/api/inventory/xml/price/" + $("#price").val(),
        type: "get",
        success: function (result) {
            $("#inv").html("");
            console.log(result);
            books = result.getElementsByTagName("car");
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].childNodes[0].firstChild.nodeValue + '">' +
                        '<div class="col-md-7">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="/img/inventory/' + books[i].childNodes[6].firstChild.nodeValue + '" alt="car picture"> </a>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<h3>' + books[i].childNodes[1].firstChild.nodeValue + ' ' + books[i].childNodes[2].firstChild.nodeValue + ' ' + books[i].childNodes[3].firstChild.nodeValue + '</h3>' +
                        '<h4>$' + books[i].childNodes[5].firstChild.nodeValue + '</h4>' +
                        '<h4>' + books[i].childNodes[4].firstChild.nodeValue + '</h4>' +
                        '<a class="btn btn-primary" href="/item">View Details</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
}

function browseByColor() {
    $.ajax({
        url: "/api/inventory/xml/color/" + $("#color").val(),
        type: "get",
        success: function (result) {
            $("#inv").html("");
            console.log(result);
            books = result.getElementsByTagName("car");
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].childNodes[0].firstChild.nodeValue + '">' +
                        '<div class="col-md-7">' +
                        '<a href="/item">' +
                        '<img class="img-responsive img-hover" src="/img/inventory/' + books[i].childNodes[6].firstChild.nodeValue + '" alt="car picture"> </a>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<h3>' + books[i].childNodes[1].firstChild.nodeValue + ' ' + books[i].childNodes[2].firstChild.nodeValue + ' ' + books[i].childNodes[3].firstChild.nodeValue + '</h3>' +
                        '<h4>$' + books[i].childNodes[5].firstChild.nodeValue + '</h4>' +
                        '<h4>' + books[i].childNodes[4].firstChild.nodeValue + '</h4>' +
                        '<a class="btn btn-primary" href="/item">View Details</a>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
}



