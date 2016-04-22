<!DOCTYPE html>
<html lang="en">

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head
		content must come *after* these tags -->

		<title>Contact Us</title>

		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="/stylesheets/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="/stylesheets/bootstrap-social.css">
		<link rel="stylesheet" type="text/css" href="/stylesheets/mystyles.css"/>
		<link rel="stylesheet" type="text/css" href="/stylesheets/sb-admin.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>

	<body>
		<div id="wrapper">

                    <%@include file="/WEB-INF/jspf/nav-user.jspf"%>

			<div id="page-wrapper">

				<div class="container-fluid">

					<!-- Page Heading -->
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header"> Purchase History <small>Statistics</small></h1>

						</div>
					</div>

					<div class="row">

						<div class="col-lg-6">
							<div class="table-responsive">
								<table class="table table-bordered table-hover table-striped">
									<thead>
										<tr>
											<th>Date</th>
											<th>Make</th>
											<th>Model</th>
											<th>Year</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>01/11/2016</td>
											<td>BMW</td>
											<td>525I</td>
											<td>2016</td>
										</tr>
										<tr>
											<td>09/11/2015</td>
											<td>Hyundai</td>
											<td>Elantra</td>
											<td>2015</td>
										</tr>

										<tr>
											<td>01/21/2015</td>
											<td>Infinity</td>
											<td>Q50I</td>
											<td>2014</td>
										</tr>
										<tr>
											<td>03/11/2014</td>
											<td>Toyota</td>
											<td>Camry</td>
											<td>2013</td>
										</tr>
										<tr>
											<td>01/21/2013</td>
											<td>Ford</td>
											<td>Focus</td>
											<td>2012</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- /#page-wrapper -->
		</div>
        <%@include file="/WEB-INF/jspf/login.jspf"%>

        <%@include file="/WEB-INF/jspf/register.jspf"%>


	</body>

</html>