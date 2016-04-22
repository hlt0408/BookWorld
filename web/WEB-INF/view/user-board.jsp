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
										${user.getFullname()}
									</dd>
									<dt>
										Telephone
									</dt>
									<dd>
										${user.gettelephone()}
									</dd>
									<dt>
										Email
									</dt>
									<dd>
										${user.getemail()}
									</dd>
									<dt>
										Password
									</dt>
									<dd>
										${user.getpassword()}
									</dd>
									<dt>
										Address
									</dt>
									<dd>
										${user.getaddress()}, ${user.getcity()}, ${user.getstate()} ${user.getzipcode()}
									</dd>
									<dt>
										User Type
									</dt>
									<dd>
										${user.getusertype()}
									</dd>
									<dt>
										Income
									</dt>
									<dd>
										${user.getincome()}
									</dd>
									<dt>
										Marriage
									</dt>
									<dd>
										${user.getmarriage()}
									</dd>
									<dt>
										Gender
									</dt>
									<dd>
										${user.getgender()}
									</dd>
									<dt>
										Age
									</dt>
									<dd>
										${user.getage()}
									</dd>
									<dt>
										Business Category
									</dt>
									<dd>
										${user.getbusinessCategory()}
									</dd>
									<dt>
										Can we contact?
									</dt>
									<dd>
										<#if user.getcanContact()>
										Yes
										<#else>
										No
										</#if>
									</dd>
									<dt>
										Contact method
									</dt>
									<dd>
										${user.getcontactMethod()}
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