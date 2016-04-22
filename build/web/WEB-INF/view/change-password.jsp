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
							<h1 class="page-header"> Change Password <small>Summary</small></h1>

						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">

							<form action="/change-password" method="post">
								<div class="form-group">
									<label>Old Password</label>
									<input class="form-control" name="old-pwd">
								</div>
								<div class="form-group">
									<label>New Password</label>
									<input class="form-control" name="new-pwd-1">
								</div>
								<div class="form-group">
									<label>New Password Again</label>
									<input class="form-control" name="new-pwd-2">
								</div>
								<button type="submit" class="btn btn-primary">
									Change Password
								</button>
							</form>
						</div>
					</div>
					<!-- /.container-fluid -->

				</div>
				<!-- /#page-wrapper -->
			</div>
        <%@include file="/WEB-INF/jspf/login.jspf"%>

        <%@include file="/WEB-INF/jspf/register.jspf"%>

		</div>
	</body>

</html>