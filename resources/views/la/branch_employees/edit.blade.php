@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/branch_employees') }}">Branch Employee</a> :
@endsection
@section("contentheader_description", $branch_employee->$view_col)
@section("section", "Branch Employees")
@section("section_url", url(config('laraadmin.adminRoute') . '/branch_employees'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Branch Employees Edit : ".$branch_employee->$view_col)

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
				{!! Form::model($branch_employee, ['route' => [config('laraadmin.adminRoute') . '.branch_employees.update', $branch_employee->id ], 'method'=>'PUT', 'id' => 'branch_employee-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'branch_id')
					@la_input($module, 'user_id')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/branch_employees') }}">Cancel</a></button>
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
	$("#branch_employee-edit-form").validate({
		
	});
	$("#branch_employee-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
