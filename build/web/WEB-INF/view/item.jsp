<!DOCTYPE html>
<html lang="en">

	<head>
        <%@include file="/WEB-INF/jspf/header.jspf"%>
	</head>

	<body>

        <%@include file="/WEB-INF/jspf/nav.jspf"%>

        <%@include file="/WEB-INF/jspf/login.jspf"%>

        <%@include file="/WEB-INF/jspf/register.jspf"%>

        <%@include file="/WEB-INF/jspf/jumbotron.jspf"%>

		<div class="container">
			<div class="row">
				<div class="col-xs-12">
                                    <%@include file="/WEB-INF/jspf/breadcrumb.jspf"%>
				</div>
			</div>

			<!-- Portfolio Item Row -->
			<div class="row">

				<div class="col-md-8">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img class="img-responsive" src="http://lorempixel.com/750/300/transport" alt="">
							</div>
							<div class="item">
								<img class="img-responsive" src="http://lorempixel.com/750/300/transport" alt="">
							</div>
							<div class="item">
								<img class="img-responsive" src="http://lorempixel.com/750/300/transport" alt="">
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
					</div>
				</div>

				<div class="col-md-4">
					<h3>Car Description</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.
					</p>
					<h3>Car Parameters</h3>
					<ul>
						<li>
							2015
						</li>
						<li>
							BMW 525I
						</li>
						<li>
							MPG: 25
						</li>
						<li>
							Auto Sedan
						</li>
					</ul>
				</div>

			</div>
			<!-- /.row -->

			<!-- Related Projects Row -->
			<div class="row">

				<div class="col-lg-12">
					<h3 class="page-header">Related Cars</h3>
				</div>

				<div class="col-sm-3 col-xs-6">
					<a href="#"> <img class="img-responsive img-hover img-related" src="http://lorempixel.com/500/300/transport" alt=""> </a>
				</div>

				<div class="col-sm-3 col-xs-6">
					<a href="#"> <img class="img-responsive img-hover img-related" src="http://lorempixel.com/500/300/transport" alt=""> </a>
				</div>

				<div class="col-sm-3 col-xs-6">
					<a href="#"> <img class="img-responsive img-hover img-related" src="http://lorempixel.com/500/300/transport" alt=""> </a>
				</div>

				<div class="col-sm-3 col-xs-6">
					<a href="#"> <img class="img-responsive img-hover img-related" src="http://lorempixel.com/500/300/transport" alt=""> </a>
				</div>

			</div>
			<!-- /.row -->

			<hr>
		</div>

        <%@include file="/WEB-INF/jspf/footer.jspf"%>

	</body>

</html>