@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/clients') }}">Client</a> :
@endsection
@section("contentheader_description", $client->$view_col)
@section("section", "Clients")
@section("section_url", url(config('laraadmin.adminRoute') . '/clients'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Clients Edit : ".$client->$view_col)

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
				{!! Form::model($client, ['route' => [config('laraadmin.adminRoute') . '.clients.update', $client->id ], 'method'=>'PUT', 'id' => 'client-edit-form', 'files'=>true]) !!}
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
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/clients') }}">Cancel</a></button>
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
	$("#client-edit-form").validate({
		
	});
	$("#client-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
