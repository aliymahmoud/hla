@extends("la.layouts.app")

@section("contentheader_title", "Invoices")
@section("contentheader_description", "Create Invoice")
@section("section", "Invoices")
@section("sub_section", "Creating")
@section("htmlheader_title", "Invoices Creating")

@section("headerElems")
@can("Invoices-create")
	<button class="btn btn-success btn-sm pull-right" data-toggle="modal" data-target="#AddModal">Add Invoice</button>
@endcan
@endsection

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
<form action="{{route(config('laraadmin.adminRoute').'.invoices.store')}}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="box box-danger">
		<div class="box-header with-border text-center">
			<h2 class="box-title ">Create New Invoice</h2>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <h4>Employee Name: {{ ucfirst($user->name) }}</h4>
                    </div>
                    <div class="col-md-6">
                        <h4>Branch: {{ ucfirst($user->branch->first()->name) }}</h4>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-5">
                        <label>Client Name</label>
                        <select name="client_id" id="client_select" class="form-control select2" required>
                            <option value="" selected disabled></option>
                            @foreach ($clients as $client)
                                <option value="{{ $client->id }}" ic_discount="{{ $client->ic->discount_percetage ?? '' }}">{{ $client->name }}/{{ $client->id }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-1 text-center">
                        <label>New Client</label>
                        <button  class="btn btn-success btn-sm form-control"  data-toggle="modal" data-target="#AddModal" type="button"><span class="fa fa-icon fa-plus"></span> Add</button>
                    </div>
                    <div class="col-md-6">
                        <label>Creation Date</label>
                        <div class="input-group date">
                            <input style="border-radius: 4px;" class="form-control" placeholder="Invoice Creation Date" required="1" name="date_of_birth" type="text" value="" aria-required="true" name="date">
                            <span style="border-radius: 4px;" class="input-group-addon">
                                <span class="fa fa-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <div class="col-md-5 text-center">
                        <label>Item Type</label>
                    </div>
                    <div class="col-md-5 text-center">
                        <label>Item Code</label>
                    </div>

                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-5">
                        <select class="form-control " style="border-radius: 4px" id="frame_select">
                            <option disabled selected>Choose Frame Type</option>
                            <option key="frame" value="sun_glasses">Sun Glasses</option>
                            <option key="frame" value="optics">Optics</option>
                            <option key="lens" value="lenses">Contact Lens</option>
                            <option key="lens" value="glass_lenses">Glass Lense</option>
                        </select>
                    </div>
                    <div class="col-md-5">
                        <select class="form-control select2" style="border-radius: 4px" id="frame_items">

                        </select>
                    </div>
                    <div class="col-md-2 text-center">
                        <button disabled type="button" id="add_frame" class="btn btn-success"><span class="fa fa-icon fa-plus"></span> Add</button>
                    </div>
                </div>
            </div>
            <div class="box box-warning">
                <div class="box-header with-border text-center">
                    <h2 class="box-title ">Frames</h2>
                </div>
                <div class="box-body">
                    <div class="form-group text-center">
                        <div class="row">
                            <div class="col-md-2">
                                <label>Type</label>
                            </div>
                            <div class="col-md-2">
                                <label>Name</label>
                            </div>
                            <div class="col-md-2">
                                <label>Frame Type</label>
                            </div>
                            <div class="col-md-2">
                                <label>Code</label>
                            </div>
                            <div class="col-md-1">
                                <label>Quantity</label>
                            </div>
                            <div class="col-md-2">
                                <label>Price</label>
                            </div>
                        </div>
                    </div>
                    <div id="frame_items_div">
                        
                    </div>
                </div>
            </div>
            <div class="box box-warning">
                <div class="box-header with-border text-center">
                    <h2 class="box-title ">Lenses</h2>
                </div>
                <div class="box-body">
                    <div class="form-group text-center">
                        <div class="row">
                            <div class="col-md-3">
                                <label>type</label>
                            </div>
                            <div class="col-md-2">
                                <label>Name</label>
                            </div>
                            <div class="col-md-2">
                                <label>Code</label>
                            </div>
                            <div class="col-md-1">
                                <label>Left AXLS</label>
                            </div>
                            <div class="col-md-1">
                                <label>Right AXLS</label>
                            </div>
                            <div class="col-md-1">
                                <label>Quantity</label>
                            </div>
                            <div class="col-md-1">
                                <label>Price</label>
                            </div>
                        </div>
                    </div>
                    <div id="lens_items_div">

                    </div>
           
                </div>
            </div>
        </div>
		<div class="box-footer">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label class="control-label">Total Price:</label>
                        <h4 class="total_price">0</h4>
                        <input type="hidden" name="total_price" id="total_price"value="0">
                    </div>
                    <div class="col-md-2">
                        <label>Insurance Company portion:</label>
                        <h4 class="ic_portion">0%</h4>
                        <input type="hidden" name="" id=""value="0">
                    </div>
                    <div class="col-md-1">
                        <label class="control-label">Discount:</label>
                        <input type="number" style="border-radius: 4px" name="discount" class="form-control" value="0">
                    </div>
                    <div class="col-md-2">
                        <label class="control-label">Payment Method:</label>
                        <select name="payment_method_id" class="form-control" style="border-radius: 4px;">
                            @foreach ($payment_methods as $id=>$pm)
                                <option value="{{ $id }}">{{ $pm }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-2">
                        <label class="control-label">Sub Total:</label>
                        <h4>0</h4>
                        <input type="hidden" name="" id=""value="0">
                    </div>
                    <div>
                        <div class="col-md-1">
                            <label class="control-label">Paid:</label>
                            <input name="paid" type="number" class="form-control" style="border-radius: 4px;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">Create Invoice</button>
            </div>
        </div><!-- /.box-footer -->
	</div><!-- /.box -->

    
</form>
@include('la.invoice.forms')
@endsection
@push('scripts')
    <script>
        var data = "";
        var key = "";
        var selected = "";
        var type = "";
        var name = "";
        var frame_type = "";
        var price = "";
        var code = "";
        var quantity = "";
        var id = "";
        var right = "";
        var left = "";
        var totl_price = 0;
        var i = 0;
        var ic_discount = 0;
        var select_type = $("#frame_select");
        var select = $('#frame_items');        
        $(".select2").select2();
        $("#client-add-form").validate({});
        $("#client_select").change(function(){
            ic_discount = $('option:selected', this).attr('ic_discount');
            ic_discount = parseFloat(ic_discount).toFixed(2);
            $(".ic_portion").empty();
            $(".ic_portion").html(ic_discount+"%");

        })
        $("#frame_select").change(function(){
            $("#add_frame").attr('disabled', true);
            key = $('option:selected', this).attr('key');
            select.empty();
            $.ajax({
                type:"GET",
                url : "{{ route('items') }}",
                data : "type="+$(this).val(),
                success : function(response) {
                    data = response;
                    select.append(
                        $('<option selected disabled></option>').html('Choose Item Code')
                    );
                    $.each(data.items, function(index, item) {
                        if(key == 'frame'){
                            select.append(
                                $("<option price='"+item.sale_price+"' name='"+item.name+"' frame_type='"+item.frame_type+"' type='"+data.item_type+"' quantity='"+item.quantity+"'></option>").val(item.id).html(item.code)
                            );
                        }
                        if(key == 'lens'){
                            select.append(
                                $("<option price='"+item.sale_price+"' name='"+item.name+"' type='"+data.item_type+"' quantity='"+item.quantity+"' left='"+item.left_axls+"' right='"+item.right_axls+"'></option>").val(item.id).html(item.code)
                            );
                        }
                    });
                },
                error: function() {
                    alert('Error occured');
                }
            });
        });
        $("#frame_items").change(function(){
            $("#add_frame").attr('disabled', false);
            selected = $('option:selected', this);
            type = selected.attr('type');
            name = selected.attr('name');
            quantity = selected.attr('quantity');
            price = selected.attr('price');
            code = selected.html();
            id = $(this).val();
            if(key == 'frame'){
                frame_type = selected.attr('frame_type');
            }
            if(key == 'lens'){
                right = selected.attr('right');
                left = selected.attr('left');
            }

        });
        $("#add_frame").click(function(){
            
            if(key == 'frame'){
                $("#frame_items_div").append(
                    `<div class="form-group" price="`+price+`">
                        <div class="row">
                            <input type="hidden" name="item[${i}][id]" value="`+id+`">
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][type]" value="`+type+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][name]" value="`+name+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][frame_type]" value="`+frame_type+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][code]" value="`+code+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-1">
                                <input type="number" value="1" name="item[${i}][quantity]" class="form-control" style="border-radius: 4px" min="0" max="`+quantity+`">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][price]" value="`+price+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-1">
                                <button remove_id=`+id+` item_type="`+type+`" type="button" class="remove_item btn btn-rounded btn-danger btn-sm"><span class="fa fa-icon fa-close"></span></button>
                            </div>
                        </div>
                    </div>`
                );
            }
            else{
                $("#lens_items_div").append(
                    `<div class="form-group" price="`+price+`">
                        <div class="row">
                            <input type="hidden" name="item[${i}][id]" value="`+id+`">
                            <div class="col-md-3">
                                <input type="text" name="item[${i}][type]" value="`+type+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][name]" value="`+name+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="item[${i}][code]" value="`+code+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-1">
                                <input type="number" name="item[${i}][left]" value="`+left+`" class="form-control" style="border-radius: 4px" min="" max="" step=".1">
                            </div>
                            <div class="col-md-1">
                                <input type="number" name="item[${i}][right]" value="`+right+`" class="form-control" style="border-radius: 4px" min="" max="" step=".1">
                            </div>
                            <div class="col-md-1">
                                <input type="number" value="1" name="item[${i}][quantity]" class="form-control" style="border-radius: 4px" min="" max="`+quantity+`">
                            </div>
                            <div class="col-md-1">
                                <input type="text" name="item[${i}][price]" value="`+price+`" class="form-control" readonly style="border-radius: 4px">
                            </div>
                            <div class="col-md-1">
                                <button remove_id=`+id+` item_type="`+type+`" type="button" class="remove_item btn btn-rounded btn-danger btn-sm"><span class="fa fa-icon fa-close"></span></button>
                            </div>
                        </div>
                    </div> `
                );
                
            }
            i++;
            totl_price = totl_price + parseFloat(price);
            $(".total_price").empty();
            $(".total_price").html(totl_price);
            $("#total_price").attr('value', totl_price);
            $(this).attr('disabled', true);
        });
        $(document).on('click', '.remove_item', function(){
            remove_id = $(this).attr('remove_id');
            removed_item_type = $(this).attr('item_type');
            id = selected.val();
            choosed_item_type = selected.attr('type');
            if(remove_id == id && choosed_item_type == removed_item_type){
                $("#add_frame").attr('disabled', false);
            }else{
                $("#add_frame").attr('disabled', true);
            }
            parent = $(this).parents('div').eq(2);
            price = parent.attr('price');
            parent.remove();
            totl_price = totl_price - parseFloat(price);
            $(".total_price").empty();
            $(".total_price").html(totl_price);
            $("#total_price").attr('value', totl_price);
        });
    </script>
    
@endpush