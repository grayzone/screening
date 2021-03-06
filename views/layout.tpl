<!DOCTYPE html>
<html  lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>Patient Screening</title>
		<link type="text/css" rel="stylesheet" href="../static/css/bootstrap.min.css" >
		<link type="text/css" rel="stylesheet" href="../static/css/dataTables.bootstrap.min.css">
		<script type="text/javascript" src="../static/js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../static/js/highcharts-custom.js"></script>
		<script type="text/javascript" src="../static/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="../static/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="../static/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="../static/js/func.js"></script>
		
		
	</head>
	<body>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Screening</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="/new">New</a></li>
						<li><a href="/view">View</a></li>
						<li><a href="/list">List</a></li>
						<li><a href="/report">Report</a></li>
						
					</ul>
					<form class="navbar-form navbar-right" role="search" hidden>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Search</button>
					</form>
					</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				{{.LayoutContent}}
			</body>
		</html>