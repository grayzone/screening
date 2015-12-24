<script type="text/javascript" src="../static/js/func_patient.js"></script>
<script type="text/javascript" src="../static/js/control_patient.js"></script>

<div class="panel panel-primary" id="div_patient_basic">
	<div class="panel-heading">Patient Basic Information</div>
	<div class="panel-body">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-name">Name:</span>
						<input type="text" id="input_patient_name" class="form-control" placeholder="Patient Name" aria-describedby="basic-addon-name" readonly>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-age">Age:</span>
						<input type="text" id="input_patient_age" class="form-control" placeholder="Patient Age" aria-describedby="basic-addon-age" readonly>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-gender">Gender:</span>
						<select id="select_patient_gender" class="form-control" disabled>
							<option value="0">Male</option>
							<option value="1">Female</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-city">City:</span>
						<input type="text" id="input_patient_city" class="form-control" placeholder="City" aria-describedby="basic-addon-city" readonly>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix" style="margin-bottom: 10px;"></div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-height">Height:</span>
						<input type="text" id="input_patient_height" class="form-control" placeholder="Height(cm)" aria-describedby="basic-addon-height" readonly>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon-weight">Weight:</span>
						<input type="text" id="input_patient_weight" class="form-control" placeholder="Weight(kg)" aria-describedby="basic-addon-weight" readonly>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>