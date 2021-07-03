@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/payment_methods') }}">Payment Method</a> :
@endsection
@section("contentheader_description", $payment_method->$view_col)
@section("section", "Payment Methods")
@section("section_url", url(config('laraadmin.adminRoute') . '/payment_methods'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Payment Methods Edit : ".$payment_method->$view_col)

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
				{!! Form::model($payment_method, ['route' => [config('laraadmin.adminRoute') . '.payment_methods.update', $payment_method->id ], 'method'=>'PUT', 'id' => 'payment_method-edit-form', 'files'=>true]) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'name')
					--}}
                    <br>
					<div class="form-group col-md-12">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/payment_methods') }}">Cancel</a></button>
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
	$("#payment_method-edit-form").validate({
		
	});
	$("#payment_method-edit-form .form-group").not(":last").addClass("col-md-6");
});
</script>
@endpush
