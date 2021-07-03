@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/lenses') }}">Lens</a> :
@endsection
@section("contentheader_description", $lens->$view_col)
@section("section", "Lenses")
@section("section_url", url(config('laraadmin.adminRoute') . '/lenses'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Lenses Edit : ".$lens->$view_col)

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
				{!! Form::model($lens, ['route' => [config('laraadmin.adminRoute') . '.lenses.update', $lens->id ], 'method'=>'PUT', 'id' => 'lens-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					@la_input($module, 'code')
					@la_input($module, 'left_axls')
					@la_input($module, 'right_axls')
					@la_input($module, 'color')
					@la_input($module, 'date_of_purchase')
					@la_input($module, 'image')
					@la_input($module, 'actule_price')
					@la_input($module, 'sale_price')
					@la_input($module, 'quantity')
					@la_input($module, 'seller')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/lenses') }}">Cancel</a></button>
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
	$("#lens-edit-form").validate({
		
	});
	$("#lens-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
