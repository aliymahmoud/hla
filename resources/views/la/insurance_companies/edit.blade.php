@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/insurance_companies') }}">Insurance Company</a> :
@endsection
@section("contentheader_description", $insurance_company->$view_col)
@section("section", "Insurance Companies")
@section("section_url", url(config('laraadmin.adminRoute') . '/insurance_companies'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Insurance Companies Edit : ".$insurance_company->$view_col)

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
				{!! Form::model($insurance_company, ['route' => [config('laraadmin.adminRoute') . '.insurance_companies.update', $insurance_company->id ], 'method'=>'PUT', 'id' => 'insurance_company-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'address')
					@la_input($module, 'email')
					@la_input($module, 'mobile')
					@la_input($module, 'discount_percetage')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/insurance_companies') }}">Cancel</a></button>
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
	$("#insurance_company-edit-form").validate({
		
	});
	$("#insurance_company-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
