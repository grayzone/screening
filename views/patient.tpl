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
<div class="panel panel-info" id="div_patient_question_1">
	<div class="panel-heading">1. Daily Symptoms</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_1">
			</ul>
			
		</div>
	</div>
</div>
<div class="panel panel-info" id="div_patient_question_2">
	<div class="panel-heading">2. Clinical Symptoms</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_2">
				
			</ul>
		</div>
	</div>
</div>
<div class="panel panel-info" id="div_patient_question_3">
	<div class="panel-heading">3. Diseases History</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_3">
				
			</ul>
		</div>
	</div>
</div>
<div class="panel panel-default" id="div_patient_question_4">
	<div class="panel-heading">4. Health Checkup</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_4">
				
			</ul>
			
		</div>
		
	</div>
</div>
<div class="panel panel-default"  id="div_patient_question_5">
	<div class="panel-heading">5. Clinical Laboratory</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_5">
				
			</ul>
			
		</div>
		
	</div>
</div>
<div class="panel panel-default" id="div_patient_question_6">
	<div class="panel-heading">6. Radiology Report</div>
	<div class="panel-body">
		<div class="container-fluid">
			<ul class="list-group" id="ul_patient_question_6">
				
			</ul>
			
		</div>
		
	</div>
</div>
<div class="panel panel-info" id="div_patient_result">
	<div class="panel-heading">Result</div>
	<div class="panel-body">
		<div class="container-fluid">
			<div class="col-xs-2">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon-stage">Stage:</span>
					<select id="select_patient_stage" class="form-control">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3A</option>
						<option value="4">3B</option>
						<option value="5">3C</option>
						<option value="6">4A</option>
						<option value="7">4B</option>
					</select>
				</div>
			</div>
		</div>
		<div class="clearfix" style="margin-bottom: 10px;"></div>
		<div class="container-fluid">
			<div class="col-xs-12">
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon-comment">Comment:</span>
					<textarea id="textarea_patient_comment" class="form-control"></textarea>
				</div>
			</div>
		</div>
	</div>
	<div class="panel-footer">
		<div class="container-fluid">
			<button id="btn_patient_save" name="btn_patient_save" class="btn btn-default">Save</button>
		</div>
	</div>
</div>