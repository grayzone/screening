<script type="text/javascript" src="../static/js/func_new.js"></script>
<script type="text/javascript" src="../static/js/control_new.js"></script>
<div class="panel panel-primary" id="divbasic">
  <div class="panel-heading">Patient Basic Information</div>
  <div class="panel-body">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-3">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon-name">Name:</span>
            <input type="text" id="iname" class="form-control" placeholder="Patient Name" aria-describedby="basic-addon-name">
          </div>
        </div>
        <div class="col-xs-3">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon-age">Age:</span>
            <input type="text" id="iage" class="form-control" placeholder="Patient Age" aria-describedby="basic-addon-age">
          </div>
        </div>
        <div class="col-xs-3">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon-gender">Gender:</span>
            <select id="sgender" class="form-control">
              <option value="0">Male</option>
              <option value="1">Female</option>
            </select>
          </div>
        </div>
        <div class="col-xs-3">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon-city">City:</span>
            <input type="text" id="icity" class="form-control" placeholder="City" aria-describedby="basic-addon-city">
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
            <input type="text" id="iheight" class="form-control" placeholder="Height(cm)" aria-describedby="basic-addon-height">
          </div>
        </div>
        <div class="col-xs-3">
          <div class="input-group">
            <span class="input-group-addon" id="basic-addon-weight">Weight:</span>
            <input type="text" id="iweight" class="form-control" placeholder="Weight(kg)" aria-describedby="basic-addon-weight">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_1" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-info" style="display:none" id="divscreening1">
  <div class="panel-heading">1. Daily Symptoms</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_1">
      </ul>
      
    </div>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_2" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-info" style="display:none" id="divscreening2">
  <div class="panel-heading">2. Clinical Symptoms</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_2">
        
      </ul>
    </div>
    
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_3" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-info" style="display:none" id="divscreening3">
  <div class="panel-heading">3. Diseases History</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_3">
        
      </ul>
    </div>
    
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_4" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-default" style="display:none" id="divscreening4">
  <div class="panel-heading">4. Health Checkup</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_4">
        
      </ul>
      
    </div>
    
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_5" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-default" style="display:none" id="divscreening5">
  <div class="panel-heading">5. Clinical Laboratory</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_5">
        
      </ul>
      
    </div>
    
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_6" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-default" style="display:none" id="divscreening6">
  <div class="panel-heading">6. Radiology Report</div>
  <div class="panel-body">
    <div class="container-fluid">
      <ul class="list-group" id="ul_new_6">
        
      </ul>
      
    </div>
    
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_next_7" name="btn_new_next" class="btn btn-default">Next</button>
    </div>
  </div>
</div>
<div class="panel panel-default" style="display:none"  id="divscreening7">
  <div class="panel-heading">Complete</div>
  <div class="panel-body">
    <div class="container-fluid">
      <div class="well well-lg">Please double check your answers above, and then click 'Submit'.</div>
    </div>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <button id="btn_new_submit" name="btn_new_submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</div>
<footer>
  <div class="panel panel-success" style="display:none"  id="divscreeningresult">
    <div class="panel-heading">Result</div>
    <div class="panel-body">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-6">
            <div class="input-group">
              <div class="well well-lg">imaging tests and blood tests every 3 to 6 months for the first 2 years, then every 6 to 12 months.</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</footer>