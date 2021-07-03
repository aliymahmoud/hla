@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/branches') }}">Branch</a> :
@endsection
@section("contentheader_description", $branch->$view_col)
@section("section", "Branches")
@section("section_url", url(config('laraadmin.adminRoute') . '/branches'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Branches Edit : ".$branch->$view_col)

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
				{!! Form::model($branch, ['route' => [config('laraadmin.adminRoute') . '.branches.update', $branch->id ], 'method'=>'PUT', 'id' => 'branch-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'address')
					@la_input($module, 'email')
					@la_input($module, 'mobile')
					@la_input($module, 'alternative_mobile')
					@la_input($module, 'phone')
					@la_input($module, 'opened_at')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/branches') }}">Cancel</a></button>
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
	$("#branch-edit-form").validate({
		
	});
	$("#branch-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
