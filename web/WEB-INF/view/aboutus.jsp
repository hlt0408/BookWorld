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
				<div class="col-xs-12 col-sm-10">
                                    <%@include file="/WEB-INF/jspf/breadcrumb.jspf"%>

					<div id="history" class="row row-content">
						<div class="col-xs-12 col-sm-6 col-lg-8">
							<h2>Our History</h2>
							<p>
								Started in 2010, Ristorante con Fusion quickly established itself as a culinary icon par excellence in Hong Kong. With its unique brand of world fusion cuisine that can be found nowhere else, it enjoys patronage from the A-list clientele in Hong Kong.  Featuring four of the best three-star Michelin chefs in the world, you never know what will arrive on your plate the next time you visit us.
							</p>
							<p>
								The restaurant traces its humble beginnings to <em>The Frying Pan</em>, a successful chain started by our CEO, Mr. Peter Pan, that featured for the first time the world's best cuisines in a pan.
							</p>
							<div class="well">
								<blockquote>
									<p>
										You better cut the pizza in four pieces because
										I'm not hungry enough to eat six.
									</p>
									<footer>
										Yogi Berra, <cite>The Wit and Wisdom of Yogi Berra,
											P. Pepe, Diversion Books, 2014</cite>
									</footer>
								</blockquote>
							</div>
						</div>
						<div  class="col-xs-12 col-sm-6 col-lg-4">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Facts At a Glance</h3>
								</div>
								<div class="panel-body">
									<dl class="dl-horizontal">
										<dt>
											Started
										</dt>
										<dd>
											3 Feb. 2013
										</dd>
										<dt>
											Major Stake Holder
										</dt>
										<dd>
											HK Fine Foods Inc.
										</dd>
										<dt>
											Last Year's Turnover
										</dt>
										<dd>
											$1,250,375
										</dd>
										<dt>
											Employees
										</dt>
										<dd>
											40
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>

					<div id="corporate" class="row row-content">
						<div class="col-xs-12">
							<h2>Corporate Leadership</h2>
							<div class="panel-group" id="accordion"
							role="tablist" aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingPeter">
										<h3 class="panel-title"><a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#peter"
										aria-expanded="true" aria-controls="peter"> Peter Pan <small>Chief Epicurious Officer</small></a></h3>
									</div>
									<div role="tabpanel" class="panel-collapse collapse in"
									id="peter"    aria-labelledby="headingPeter">
										<div class="panel-body">
											<p>
												Our CEO, Peter, credits his hardworking East Asian immigrant parents who undertook the arduous journey to the shores of America with the intention of giving their children the best future. His mother's wizardy in the kitchen whipping up the tastiest dishes with whatever is available inexpensively at the supermarket, was his first inspiration to create the fusion cuisines for which <em>The Frying Pan</em> became well known. He brings his zeal for fusion cuisines to this restaurant, pioneering cross-cultural culinary connections.
											</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingDanny">
										<h3 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#danny"
										aria-expanded="false" aria-controls="danny"> Dhanasekaran Witherspoon <small>Chief Food Officer</small></a></h3>
									</div>
									<div role="tabpanel" class="panel-collapse collapse"
									id="danny"    aria-labelledby="headingDanny">
										<div class="panel-body">
											<p>
												Our CFO, Danny, as he is affectionately referred to by his colleagues, comes from a long established family tradition in farming and produce. His experiences growing up on a farm in the Australian outback gave him great appreciation for varieties of food sources. As he puts it in his own words, <em>Everything that runs, wins, and everything that stays, pays!</em>
											</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingAgumbe">
										<h3 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#agumbe"
										aria-expanded="false" aria-controls="agumbe"> Agumbe Tang <small>Chief Taste Officer</small></a></h3>
									</div>
									<div role="tabpanel" class="panel-collapse collapse"
									id="agumbe"    aria-labelledby="headingAgumbe">
										<div class="panel-body">
											<p>
												Blessed with the most discerning gustatory sense, Agumbe, our CFO, personally ensures that every dish that we serve meets his exacting tastes. Our chefs dread the tongue lashing that ensues if their dish does not meet his exacting standards. He lives by his motto, <em>You click only if you survive my lick.</em>
											</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingAlberto">
										<h3 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#alberto"
										aria-expanded="false" aria-controls="alberto"> Alberto Somayya <small>Executive Chef</small></a></h3>
									</div>
									<div role="tabpanel" class="panel-collapse collapse"
									id="alberto"    aria-labelledby="headingAlberto">
										<div class="panel-body">
											<p>
												Award winning three-star Michelin chef with wide International experience having worked closely with whos-who in the culinary world, he specializes in creating mouthwatering Indo-Italian fusion experiences. He says, <em>Put together the cuisines from the two craziest cultures, and you get a winning hit! Amma Mia!</em>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="facts" class="row row-content">
						<div class="col-xs-12">
							<h2>Facts &amp; Figures</h2>
							<div class="table-responsive">
								<table class="table table-striped">
									<tr>
										<td>&nbsp;</td>
										<th>2013</th>
										<th>2014</th>
										<th>2015</th>
									</tr>
									<tr>
										<th>Employees</th>
										<td>15</td>
										<td>30</td>
										<td>40</td>
									</tr>
									<tr>
										<th>Guests Served</th>
										<td>15000</td>
										<td>45000</td>
										<td>100,000</td>
									</tr>
									<tr>
										<th>Special Events</th>
										<td>3</td>
										<td>20</td>
										<td>45</td>
									</tr>
									<tr>
										<th>Annual Turnover</th>
										<td>$251,325</td>
										<td>$1,250,375</td>
										<td>~$3,000,000</td>
									</tr>
								</table>
							</div>

						</div>
					</div>

				</div>
				<nav class="hidden-xs col-sm-2" id="myScrollspy">
					<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="400">
						<li>
							<a href="#history">Our History</a>
						</li>
						<li>
							<a href="#corporate">Corporate</a>
						</li>
						<li>
							<a href="#facts">Facts</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		
        <%@include file="/WEB-INF/jspf/footer.jspf"%>
	
</body>
</html>
	
  		