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
							<h1 class="page-header"> Dash Board <small>Summary</small></h1>

						</div>
					</div>
					<!-- /.row -->
					<div  class="col-xs-12 col-sm-8">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">My Name Card</h3>
							</div>
							<div class="panel-body">
								<dl class="dl-horizontal">
									<dt>
										Name
									</dt>
									<dd>
										${firstname}

									</dd>
									<dt>
										Email
									</dt>
									<dd>
										${sessionScope.email}
									</dd>
								</dl>
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