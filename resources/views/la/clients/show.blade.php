@extends('la.layouts.app')

@section('htmlheader_title')
	Client View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	<div class="bg-primary clearfix">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-3">
					<!--<img class="profile-image" src="{{ asset('la-assets/img/avatar5.png') }}" alt="">-->
					<div class="profile-icon text-primary"><i class="fa {{ $module->fa_icon }}"></i></div>
				</div>
				<div class="col-md-9">
					<h4 class="name">{{ $client->$view_col }}</h4>
				</div>
			</div>
		</div>
		
		<div class="col-md-1 actions">
			@can("Clients-edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/clients/'.$client->id.'/edit') }}" class="btn btn-xs btn-edit btn-default"><i class="fa fa-pencil"></i></a><br>
			@endcan
			
			@can("Clients-delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.clients.destroy', $client->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-default btn-delete btn-xs" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endcan
		</div>
	</div>

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/clients') }}" data-toggle="tooltip" data-placement="right" title="Back to Clients"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> General Info</a></li>
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>General Info</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'name')
						@la_display($module, 'date_of_birth')
						@la_display($module, 'gender')
						@la_display($module, 'email')
						@la_display($module, 'address')
						@la_display($module, 'mobile')
						@la_display($module, 'image')
						@la_display($module, 'insurance_id_image')
						@la_display($module, 'left_axls')
						@la_display($module, 'right_axls')
						@la_display($module, 'left_sph')
						@la_display($module, 'right_sph')
						@la_display($module, 'left_cyl')
						@la_display($module, 'right_cyl')
						@la_display($module, 'LPD')
						@la_display($module, 'insurance_company_id')
					</div>
				</div>
			</div>
		</div>
		
	</div>
	</div>
	</div>
</div>
@endsection
