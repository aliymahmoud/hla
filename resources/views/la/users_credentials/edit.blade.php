@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/users_credentials') }}">Users Credential</a> :
@endsection
@section("contentheader_description", $users_credential->$view_col)
@section("section", "Users Credentials")
@section("section_url", url(config('laraadmin.adminRoute') . '/users_credentials'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Users Credentials Edit : ".$users_credential->$view_col)

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
				{!! Form::model($users_credential, ['route' => [config('laraadmin.adminRoute') . '.users_credentials.update', $users_credential->id ], 'method'=>'PUT', 'id' => 'users_credential-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'email')
					@la_input($module, 'password')
					@la_input($module, 'role')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/users_credentials') }}">Cancel</a></button>
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
	$("#users_credential-edit-form").validate({
		
	});
	$("#users_credential-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
