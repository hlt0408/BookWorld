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
                        '<a href="#">' +
                        '<img class="img-responsive img-hover" src="img/inventory/' + books[i].Path + '" alt="car picture" width="144" height="128"> </a>' +
                        '</div>' +
                        '<div class="col-md-7">' +
                        '<form name = "bookinventory" method = "POST" action = "/BookWorld/CartServlet" >' +
                        '<h4>Title:&nbsp;' + books[i].Title + '<input type="hidden" name="title" value="' + books[i].Title + '"></h4>' +
                        '<h4>Author:&nbsp;' + books[i].Author + '<input type="hidden" name="author" value="' + books[i].Author + '"></h4>' +
                        '<h4>Genre:&nbsp;' + books[i].Genre + '<input type="hidden" name="genre" value="' + books[i].Genre + '"></h4>' +
                        '<h5>Rating:&nbsp;' + books[i].Rating + '<input type="hidden" name="rating" value="' + books[i].Rating + '"></h5>' +
                        '<h5>Price:&nbsp;' + books[i].Price + '<input type="hidden" name="price" value="' + books[i].Price + '"></h5>' +
                        '<h6>Quantity:&nbsp;<input type="text" size="3" maxlength="3" value="1" name="quantity"></h6>' +
                        '<button class="btn btn-primary" type="submit" name="action" value="add">Add To Cart</button>' +
                        '</from>' +
                        '</div>' +
                        '</div>' +
                        '<hr>'
                        );
            }
        }
    });
});

function browseByGenre() {
    var obj = JSON.stringify({"genre": $("#genre").val()});
    $.ajax({
        contentType: 'application/json',
        url: "/BookWorld/FilterByGenreServlet",
        type: "post",
        dataType: "json",
        data: obj,
        success: function (books) {
            console.log(books[0].Path);
            $("#inv").html("");
            for (var i = 0; i < books.length; i++) {
                $("#inv").prepend(
                        '<div class="row" id="' + books[i].Index + '">' +
                        '<div class="col-md-5">' +
                        '<a href="#">' +
                        '<img class="img-responsive img-hover" src="img/inventory/' + books[i].Path + '" alt="car picture" width="144" height="128"> </a>' +
                        '</div>' +
                        '<div class="col-md-7">' +
                        '<form name = "bookinventory" method = "POST" action = "/BookWorld/CartServlet" >' +
                        '<h4>Title:&nbsp;' + books[i].Title + '<input type="hidden" name="title" value="' + books[i].Title + '"></h4>' +
                        '<h4>Author:&nbsp;' + books[i].Author + '<input type="hidden" name="author" value="' + books[i].Author + '"></h4>' +
                        '<h4>Genre:&nbsp;' + books[i].Genre + '<input type="hidden" name="genre" value="' + books[i].Genre + '"></h4>' +
                        '<h5>Rating:&nbsp;' + books[i].Rating + '<input type="hidden" name="rating" value="' + books[i].Rating + '"></h5>' +
                        '<h5>Price:&nbsp;' + books[i].Price + '<input type="hidden" name="price" value="' + books[i].Price + '"></h5>' +
                        '<h6>Quantity:&nbsp;<input type="text" size="3" maxlength="3" value="1" name="quantity"></h6>' +
                        '<button class="btn btn-primary" type="submit" name="action" value="add">Add To Cart</button>' +
                        '</from>' +
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



