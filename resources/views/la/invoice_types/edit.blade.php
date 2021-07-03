@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/invoice_types') }}">Invoice Type</a> :
@endsection
@section("contentheader_description", $invoice_type->$view_col)
@section("section", "Invoice Types")
@section("section_url", url(config('laraadmin.adminRoute') . '/invoice_types'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Invoice Types Edit : ".$invoice_type->$view_col)

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
				{!! Form::model($invoice_type, ['route' => [config('laraadmin.adminRoute') . '.invoice_types.update', $invoice_type->id ], 'method'=>'PUT', 'id' => 'invoice_type-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/invoice_types') }}">Cancel</a></button>
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
	$("#invoice_type-edit-form").validate({
		
	});
	$("#invoice_type-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
