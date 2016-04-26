<!DOCTYPE html>
<html lang="en">

	<head>
        <%@include file="/WEB-INF/jspf/header.jspf"%>
	<script src="js/inventory.js"></script>
	</head>

	<body>
        <%@include file="/WEB-INF/jspf/nav.jspf"%>
        <%@include file="/WEB-INF/jspf/login.jspf"%>
        <%@include file="/WEB-INF/jspf/register.jspf"%>

		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-10">
                                    <%@include file="/WEB-INF/jspf/breadcrumb.jspf"%>

					<div class="row">
						<nav class="hidden-xs col-sm-2" id="myScrollspy">
							<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="100">
								<li>
									<select class="form-control" id="genre" onchange="browseByGenre()">
										<option value="">Genre</option>
										<option value="Art">Art</option>
										<option value="Bibliography">Bibliography</option>
                                                				<option value="Children">Children</option>
										<option value="Fantasy">Fantasy</option>
										<option value="Fiction">Fiction</option>
										<option value="History">History</option>
										<option value="Mystery">Mystery</option>
										<option value="Romance">Romance</option>
									</select>
								</li>
								<!--li>
									<select class="form-control" id="year" onchange="browseByYear()">
										<option value="">Year</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
									</select>
								</li-->
								<!--li>
									<select class="form-control" id="price" onchange="browseByPrice()">
										<option value="">Price</option>
										<option value="1">5000</option>
										<option value="2">5001 - 10,000</option>
										<option value="3">10,001 - 15,000</option>
										<option value="4">15,001 - 20,000</option>
										<option value="5">20,001 - 25,000</option>
										<option value="6">25,001 - 30,000</option>
										<option value="7">30,001 - 35,000</option>
										<option value="8">35,001 - 40,000</option>
										<option value="9">40,001 - 45,000</option>
										<option value="10">45,001 - 50,000</option>
										<option value="11">50,001 - 55,000</option>
										<option value="12">55,001 - 60,000</option>
										<option value="13">60,001 - 65,000</option>
										<option value="14">65,001 - 70,000</option>
										<option value="15">70,001 - 75,000</option>
										<option value="16">75,001 - 80,000</option>
										<option value="17">80,001 - 85,000</option>
										<option value="18">85,001 - 90,000</option>
										<option value="19">90,001 - 95,000</option>
										<option value="20">95,001 - 100,000</option>
									</select>
								</li-->
								<!--li>
									<select class="form-control" id="bodytype" onchange="browseByBodytype()">
										<option value="">Body Type</option>
										<option value="SUV">SUV</option>
										<option value="Sedan">Sedan</option>
									</select>
								</li-->
								<!--li>
									<select class="form-control" id="color" onchange="browseByColor()">
										<option value="">Color</option>
										<option value="black">Black</option>
										<option value="white">White</option>
										<option value="brown">Brown</option>
									</select>
								</li-->
							</ul>
						</nav>
						<div class="col-xs-12 col-sm-10" id="inv"></div>

						<!-- Pagination -->
						<!--div class="row text-center">
							<div class="col-lg-12">
								<ul class="pagination">
									<li>
										<a href="#">&laquo;</a>
									</li>
									<li class="active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">&raquo;</a>
									</li>
								</ul>
							</div>
						</div -->
						<!-- /.row -->

						<hr>
					</div>
				</div>
			</div>
		</div>
        <%@include file="/WEB-INF/jspf/footer.jspf"%>

	</body>
</html>
