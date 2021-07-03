@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/ic_employees') }}">IC Employee</a> :
@endsection
@section("contentheader_description", $ic_employee->$view_col)
@section("section", "IC Employees")
@section("section_url", url(config('laraadmin.adminRoute') . '/ic_employees'))
@section("sub_section", "Edit")

@section("htmlheader_title", "IC Employees Edit : ".$ic_employee->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-12">
				{!! Form::model($ic_employee, ['route' => [config('laraadmin.adminRoute') . '.ic_employees.update', $ic_employee->id ], 'method'=>'PUT', 'id' => 'ic_employee-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'email')
					@la_input($module, 'gender')
					@la_input($module, 'mobile')
					@la_input($module, 'insurance_company_id')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/ic_employees') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#ic_employee-edit-form").validate({
		
	});
	$("#ic_employee-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
