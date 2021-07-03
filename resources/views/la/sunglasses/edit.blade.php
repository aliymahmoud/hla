@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/sunglasses') }}">Sunglass</a> :
@endsection
@section("contentheader_description", $sunglass->$view_col)
@section("section", "Sunglasses")
@section("section_url", url(config('laraadmin.adminRoute') . '/sunglasses'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Sunglasses Edit : ".$sunglass->$view_col)

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
				{!! Form::model($sunglass, ['route' => [config('laraadmin.adminRoute') . '.sunglasses.update', $sunglass->id ], 'method'=>'PUT', 'id' => 'sunglass-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'code')
					@la_input($module, 'date_of_purchase')
					@la_input($module, 'frame_type')
					@la_input($module, 'color')
					@la_input($module, 'image')
					@la_input($module, 'actule_price')
					@la_input($module, 'sale_price')
					@la_input($module, 'seller')
					@la_input($module, 'gender')
					@la_input($module, 'quantity')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/sunglasses') }}">Cancel</a></button>
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
	$("#sunglass-edit-form").validate({
		
	});
	$("#sunglass-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
