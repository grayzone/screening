<script type="text/javascript" src="../static/js/func_list.js"></script>
<script type="text/javascript" src="../static/js/control_list.js"></script>

<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">1. Daily Symptoms</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_1">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_1' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_1" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">2. Clinical Symptoms</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_2">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_2' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_2" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">3. Diseases History</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_3">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_3' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_3" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">4. Health Checkup</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_4">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_4' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_4" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">5. Clinical Laboratory</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_5">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_5' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_5" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">6. Radiology Report</div>
  <div class="panel-body">
    <ul class="list-group" id="ul_list_6">
    </ul>
  </div>
  <div class="panel-footer">
    <div class="container-fluid">
      <div class="input-group">
        <input type="text" class="form-control" id='question_list_6' placeholder="Question...">
        <span class="input-group-btn">
          <button id="btn_list_add_6" name="btn_list_add" class="btn btn-default">Add</button>
        </span>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="patientmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Edit Question</h4>
      </div>
      <div class="modal-body">
        <input type="text" id="question_edit_id" name="input_list_question_edit" hidden>
        <input type="text" class="form-control"  id="question_edit" name="input_list_question_edit">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" name="btn_list_question_save" id="btn_list_question_save_change">Save changes</button>
      </div>
    </div>
  </div>
</div>