@extends('la.layouts.app')

@section('htmlheader_title')
	Employee View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	<div class="bg-success clearfix">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-3">
					<img class="profile-image" src="{{ asset('la-assets/img/user2-160x160.jpg') }}" alt="">
				</div>
				<div class="col-md-9">
					<h4 class="name">{{ $employee->$view_col }}</h4>
					<div class="row stats">
						<div class="col-md-6 stat"><div class="label2" data-toggle="tooltip" data-placement="top" title="Designation">{{ $employee->name }}</div></div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="dats1"><i class="fa fa-envelope-o"></i> {{ $employee->email }}</div>
			<div class="dats1"><i class="fa fa-phone"></i> {{ $employee->mobile }}</div>
		</div>
		<div class="col-md-1 actions">
			@la_access("Employees", "edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/employees/'.$employee->id.'/edit') }}" class="btn btn-xs btn-edit btn-default"><i class="fa fa-pencil"></i></a><br>
			@endla_access
			
			@la_access("Employees", "delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.employees.destroy', $employee->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-default btn-delete btn-xs deleteFormBtn" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endla_access
		</div>
	</div>

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/employees') }}" data-toggle="tooltip" data-placement="right" title="Back to Employees"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-info" data-target="#tab-info"><i class="fa fa-bars"></i>General Info</a></li>
		@if($employee->id == Auth::user()->id || \Auth::user()->hasRole("SUPER_ADMIN"))
			<li class=""><a role="tab" data-toggle="tab" href="#tab-account-settings" data-target="#tab-account-settings"><i class="fa fa-key"></i>Account Settings </a></li>
		@endif
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>General info </h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'name')
						@la_display($module, 'mobile')
						@la_display($module, 'email')
					</div>
				</div>
			</div>
		</div>
		@if($employee->id == Auth::user()->id || \Auth::user()->hasRole("SUPER_ADMIN"))
		<div role="tabpanel" class="tab-pane fade" id="tab-account-settings">
			<div class="tab-content">
				<form action="{{ url(config('laraadmin.adminRoute') . '/change_password/'.$employee->id) }}" id="password-reset-form" class="general-form dashed-row white" method="post" accept-charset="utf-8">
					{{ csrf_field() }}
					<div class="panel">
						<div class="panel-default panel-heading">
							<h4>Account Settings </h4>
						</div>
						<div class="panel-body">
							@if (count($errors) > 0)
								<div class="alert alert-danger">
									<ul>
										@foreach ($errors->all() as $error)
											<li>{{ $error }}</li>
										@endforeach
									</ul>
								</div>
							@endif
							@if(Session::has('success_message'))
								<p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success_message') }}</p>
							@endif
							<div class="form-group">
								<label for="password" class=" col-md-2">Password </label>
								<div class=" col-md-10">
									<input type="password" name="password" value="" id="password" class="form-control" placeholder="Password" autocomplete="off" required="required" data-rule-minlength="6" data-msg-minlength="Please enter at least 6 characters.">
								</div>
							</div>
							<div class="form-group">
								<label for="password_confirmation" class=" col-md-2">Confirm Password  </label>
								<div class=" col-md-10">
									<input type="password" name="password_confirmation" value="" id="password_confirmation" class="form-control" placeholder="Confirm Password" autocomplete="off" required="required" data-rule-equalto="#password" data-msg-equalto="Please enter the same value again.">
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span>Change Password</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		@endif
	</div>
	</div>
	</div>
</div>
@endsection

@push('scripts')
<script>
$(function () {
	@if($employee->id == Auth::user()->id || \Auth::user()->hasRole("SUPER_ADMIN"))
	$('#password-reset-form').validate({
		
	});
	@endif
});
</script>
@endpush
