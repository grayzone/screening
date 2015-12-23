<script type="text/javascript" src="../static/js/control_view.js"></script>

<div class="container-fluid">
	<table id="patient" class="table table-striped table-bordered"  cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Istrained</th>
				<th>Created</th>
				<th>Updated</th>
				<th>Details</th>
			</tr>
		</thead>
	</table>
</div>
<div class="panel panel-primary" id="divlevel">
	<div class="panel-heading">Liver Cancer Stage</div>
	<div class="panel-body">
		<div class="container-fluid">
			<table id="stage" class="table table-bordered"  cellspacing="0" width="100%">
				<tbody>
					<tr>
						<td>1</td>
						<td>There is a single tumor (any size) that has not grown into any blood
						vessels. The cancer has not spread to nearby lymph nodes or distant sites.</td>
					</tr>
					<tr class="active">
						<td>2</td>
						<td>Either there is a single tumor (any size) that has grown into blood
							vessels, OR there are several tumors, and all are 5 cm (2 inches) or less across. The cancer
						has not spread to nearby lymph nodes or distant sites.</td>
					</tr>
					<tr class="warning">
						<td>3A</td>
						<td>There is more than one tumor, and at least one is larger than 5 cm
						(2 inches) across. The cancer has not spread to nearby lymph nodes or distant sites.</td>
					</tr>
					<tr class="warning">
						<td>3B</td>
						<td>At least one tumor is growing into a branch of a major vein of the
							liver (portal vein or hepatic vein). The cancer has not spread to nearby lymph nodes or
						distant sites.</td>
					</tr>
					<tr class="warning">
						<td>3C</td>
						<td>A tumor is growing into a nearby organ (other than the
							gallbladder), OR a tumor has grown into the outer covering of the liver. The cancer has not
						spread to nearby lymph nodes or distant sites.</td>
					</tr>
					<tr class="danger">
						<td>4A</td>
						<td>Tumors in the liver can be any size or number and they may
							have grown into blood vessels or nearby organs. The cancer has spread to nearby lymph
						nodes. The cancer has not spread to distant sites.</td>
					</tr>
					<tr class="danger">
						<td>4B</td>
						<td>The cancer has spread to other parts of the body. (Tumors
						can be any size or number, and nearby lymph nodes may or may not be involved.)</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="modal fade" id="patientmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
			</div>
			<div class="modal-body">
				...
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>