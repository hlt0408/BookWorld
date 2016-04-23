<!DOCTYPE html>
<html lang="en">

	<head>
        <%@include file="/WEB-INF/jspf/header.jspf"%>
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