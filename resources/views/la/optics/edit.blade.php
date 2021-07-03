@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/optics') }}">Optic</a> :
@endsection
@section("contentheader_description", $optic->$view_col)
@section("section", "Optics")
@section("section_url", url(config('laraadmin.adminRoute') . '/optics'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Optics Edit : ".$optic->$view_col)

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
				{!! Form::model($optic, ['route' => [config('laraadmin.adminRoute') . '.optics.update', $optic->id ], 'method'=>'PUT', 'id' => 'optic-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'code')
					@la_input($module, 'date_of_purchase')
					@la_input($module, 'frame_type')
					@la_input($module, 'quantity')
					@la_input($module, 'actule_price')
					@la_input($module, 'sale_price')
					@la_input($module, 'color')
					@la_input($module, 'gender')
					@la_input($module, 'seller')
					@la_input($module, 'image')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/optics') }}">Cancel</a></button>
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
	$("#optic-edit-form").validate({
		
	});
	$("#optic-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
