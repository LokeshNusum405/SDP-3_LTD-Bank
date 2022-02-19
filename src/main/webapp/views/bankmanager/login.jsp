<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" >Bank Manager Login</h5>
        <button
          type="button"
          class="btn-close"
          data-mdb-dismiss="modal"
          aria-label="Close"
        ></button>
      </div>
      <div class="modal-body">
      <span>${msg }</span>
		<form action="/sms/phoneNumber" method="POST">
		
		<div class="row">
		<div class="col-md-4 align-self-center">
		<label for="phoneNumber">Mobile Number</label>
		</div>
		<div class="col-md-8 align-self-center">
		<input type="tel" class="form-control " id="phoneNumber" name="phoneNumber" Placeholder="Enter Mobile Number">
		</div>		
		</div>
		
		<input type="submit" class="btn btn-info mt-3" data-mdb-toggle="modal" data-mdb-target="#exampleModal" value="Get OTP">
		
		</form>
		<!--
		<div>
		<embed src="uploads/junior tt.pdf" width="200px" height="800px"/>
		</div>
		  -->
		
		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
          Close
        </button>
        
      </div>
    </div>
  </div>
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  