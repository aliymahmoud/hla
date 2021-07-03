@can("Clients-create")
<div class="modal fade" id="AddModal" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add Client</h4>
			</div>
			{!! Form::open(['route' => config('laraadmin.adminRoute').'.clients.store', 'id' => 'client-add-form', 'files'=>true]) !!}
			<div class="modal-body">
				<div class="box-body">
                    @la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'date_of_birth')
					@la_input($module, 'gender')
					@la_input($module, 'email')
					@la_input($module, 'address')
					@la_input($module, 'mobile')
					@la_input($module, 'image')
					@la_input($module, 'insurance_id_image')
					@la_input($module, 'left_axls')
					@la_input($module, 'right_axls')
					@la_input($module, 'left_sph')
					@la_input($module, 'right_sph')
					@la_input($module, 'left_cyl')
					@la_input($module, 'right_cyl')
					@la_input($module, 'LPD')
					@la_input($module, 'insurance_company_id')
					--}}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				{!! Form::submit( 'Submit', ['class'=>'btn btn-success']) !!}
			</div>
			{!! Form::close() !!}
		</div>
	</div>
</div>
@endcan