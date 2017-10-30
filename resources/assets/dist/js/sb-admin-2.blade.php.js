/*!
 * Start Bootstrap - SB Admin 2 v3.3.7+1 (http://startbootstrap.com/template-overviews/sb-admin-2)
 * Copyright 2013-2016 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap/blob/gh-pages/LICENSE)
 */
$(function() {
    $('#side-menu').metisMenu();
});

//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size

     $(document).ready(function(){
		 var $item_count=0;
		     isEmpty = function(obj) {
      if (obj == null) return true;
      if (obj.constructor.name == "Array" || obj.constructor.name == "String") return obj.length === 0;
      for (var key in obj) if (isEmpty(obj[key])) return true;
      return false;
    }

	var $item_stat = "";
	var $item_err = 0;
	var $doc_id;
	var $doc;
	
      var i=1;
     $("#add_row").click(function(){
      $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input name='items["+i+"][desc]' type='text' placeholder='Item description' class='form-control input-md'  /> </td><td><input  name='items["+i+"][qty]' type='text' placeholder='Quantity'  class='form-control input-md'></td><td><input  name='items["+i+"][serial]' type='text' placeholder='Serial Number'  class='form-control input-md'></td><td><input  name='items["+i+"][status]' type='text' placeholder='Item Status'  class='form-control input-md'></td><td><input  name='items["+i+"][remark]' type='text' placeholder='Remarks'  class='form-control input-md'></td>");

	$('#tbody').append('<tr id="addr'+(i+1)+'"></tr>');      i++; 
	$('#row_value').val(i);
	var g = $('#row_value').val();

	console.log(g);
  });
     $("#delete_row").click(function(){
    	 if(i>1){
		 $("#addr"+(i-1)).html('');
		 i--;
		 }
	 });
	 $loc = $("#wType").val();
     console.log($loc);
	 $("#search_btn").click(function(){
		console.log("search button clicked");
		 
				$.ajax({
					type: 'GET',
					url: "/waybill/load",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"location": $("#loc_input").val(),
					"search": $("#search_input").val(),
					"wType": $("#wType").val()
					},                                                                                             
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( data ){ 

					//data response can contain what we want here...
					$("#tab_logic tbody > tr > td").remove();	
					$.each(data, function(i, item){
					//	item.receivedBy = 'OPEN';
					 $('#addr'+i).html("<td>"+ item.id +"</td><td>"+item.sentDate+"</td><td>"+item.sentBy+"</td><td>"+item.sentFrom+"</td><td>"+item.deliveredBy+"</td><td><p data-placement='top' data-toggle='tooltip' title='Edit'><button class='btn btn-primary btn-xs btn_items' value='"+item.id+"'><span class='glyphicon glyphicon-pencil'></span></button></p></td><td>"+item.receiveStatus+"</td>");

					$('#tbody').append('<tr id="addr'+(i+1)+'"></tr>');     
					i++; 
					$('#row_value').val(i);
					}); 
					$("#tab_logic").show();
					$item_count = 0;
					console.log("SUCCESS, data="+data);
					}
				});
				});
	
	$("body").on("click",'.btn_items', function(){
				console.log("Items button clicked");
				$doc_id = $(this).val();
								$.ajax({
					type: 'GET',
					url: "/waybill/loaddoc",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"id": $doc_id
					},                                                                                             
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( data ){ 
					$doc = data;
					console.log($doc.id);
					}
				});
				
				$.ajax({
					type: 'GET',
					url: "/waybill/loadItems",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"id": $doc_id
					},                                                                                             
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( data ){ 
					$item_err = 0; 
					$item_count=0;
					$("#tbody1 > tr > td").remove();	
					$.each(data, function(i, item){
						if(item.recqty===item.qty){
							$rd = "readonly";
						}
						else{$rd = "";}
						console.log(i);
					 $('#addrs'+i).html("<td>"+ (i+1) +"<input name='item["+i+"][id]' value='"+item.id+"' type='text' placeholder='Item description' hidden/> </td><td><input name='item["+i+"][desc]' value='"+item.item_desc+"' type='text' placeholder='Item description' class='form-control input-md'  readonly/> </td><td><input  name='item["+i+"][serial]' value='"+item.serialNo+"' type='text' placeholder='Quantity'  class='form-control input-md' readonly></td><td><input  name='item["+i+"][qty]'  value='"+item.qty+"'  type='text' placeholder='Serial Number'  class='form-control input-md' readonly></td><td><input  name='item["+i+"][recqty]'  value='"+item.recqty+"' type='number' min='0' max='1000' placeholder='Serial Number'  class='form-control input-md' required "+$rd+"></td><td><input  name='item["+i+"][status]'  value='"+item.status+"' type='text' placeholder='Item Status'  class='form-control input-md' readonly></td><td><input  value='"+item.remark+"'  name='item["+i+"][remark]' type='text' placeholder='Remarks'  class='form-control input-md' readonly></td>");
					 $('#tbody1').append('<tr id="addrs'+(i+1)+'"></tr>');     
					 $item_count++;
					$('#row_value').val(i);
					}); 	
					console.log("item count "+$item_count);
					//$("#tab_logic1 tbody1").remove();	
					//$("#tab_logic1").show();	

					if($doc.receiveStatus === 'CLOSED'){
					$("#disp_rec").show();
					$("#rec_btn").hide();
					$("#rec_suc").text("");
					//console.log("received By"+$doc.receivedBy);
					}else{ $("#rec_btn").show();console.log("received By"+$doc.receivedBy);}
					$("#edit").modal('show');
					$("#rec_err").text("");
					$("#rec_suc").text("");
					//$("#rec_err").hide();
					//data response can contain what we want here...
					
					console.log(data);
					//console.log("SUCCESS, data="+data);
					}
				});
	});
	
	$("body").on("click",'#rec_btn', function(){ 

		//$("#rec_err").append("Error in your inputs");
		/*$("#tbody1 > tr").each(function(i, tr){
			console.log(" i "+i+ "  tr "+tr);		
			var val = $("input", tr).val();	
			console.log("VAL "+val);			
						
		});*/
		//console.log($("input[name='item[0][desc]'").val());
		$item_err = 0; 
		for(var c=0; c<$item_count; c++){
			console.log($doc_id);
		var	$h = $("input[name='item["+c+"][qty]'").val();
		var	$g = $("input[name='item["+c+"][recqty]'").val();
		var	$i = $("input[name='item["+c+"][id]'").val();
		console.log("c "+ c + " g "+ $i);
				if($g>$h)	{
					$("#rec_err").text("Received can't be greater than sent on Item "+(c+1)+" ");
					return true;
							}
							else if($g<$h){
								$item_err=$item_err+1;	
							console.log("Quantity received "+ $g+" counter "+c +" Item error"+$item_err);	
								}
							else if($g === $h){ 
							console.log("Quantity received "+ $g+" counter "+c +" Item error"+$item_err);
											}
		} 
		if($item_err>0){
			console.log("Received Less ");
			$item_stat='OPEN';
			console.log("Quantity received "+ $g+" counter "+c +" Item error"+$item_err);
			for(var d=0; d<$item_count; d++){
				var	$recqty = $("input[name='item["+d+"][recqty]'").val();
				var	$id = $("input[name='item["+d+"][id]'").val();
				console.log("Quantity received "+ $g+" counter "+d +" Item error"+$item_err);
				console.log("item id "+$id+" Receive quatity "+ $recqty );
				console.log("Doc id "+$doc_id+" Item Status "+ $item_stat );
				$.ajax({
					type: 'GET',
					url: "/waybill/recitem",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"doc_id": $doc_id,
					"recqty": $recqty,
					"item_id": $id,
					"item_stat": $item_stat
					},                                                                                             
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( data ){ 
					//data response can contain what we want here...
					console.log("Item saved "+data+"fully");
					}
				});
			}
					$("#rec_suc").text("Items received succesfully");
						
					
		}
		else{
			$item_stat='CLOSED';
			console.log("Quantity received "+ $g+" counter "+c +" Item error"+$item_err);
			for(var d=0; d<$item_count; d++){
				var	$recqty = $("input[name='item["+d+"][recqty]'").val();
				var	$id = $("input[name='item["+d+"][id]'").val();
				console.log("Quantity received "+ $g+" counter "+d +" Item error"+$item_err);
				console.log("item id "+$id+" Receive quatity "+ $recqty );
				console.log("Doc id "+$doc_id+" Item Status "+ $item_stat );
			$.ajax({
					type: 'GET',
					url: "/waybill/recitem",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"doc_id": $doc_id,
					"recqty": $recqty,
					"item_id": $id,
					"item_stat": $item_stat
					},                                                                                             
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( data ){ 

					//data response can contain what we want here...
					console.log("Item saved "+data+"fully");
					}
				});
			
			}
			$("#rec_suc").text("Items received succesfully");
			$('#edit').delay(3000).fadeOut(3000);
			setTimeout(function(){
				$('#edit').modal("hide");
				window.location.href = '/home';
				}, 6000);
		}
		console.log("receive button clicked "+$item_err);
			
	
		
				});
	
$("body").on("click",'#printbtn', function(){ 
		console.log("receive button clicked "+$item_err);
		window.print();
				});	

$("body").on("click",'#searchp_btn', function(){ 
				var $s = $("#search_input").val();
				if($s===''){
					console.log("search button clicked");
					$("#tbody2 > tr > td").remove();	
				}
				else{
				i=0
				$("#tab_logic2 tbody2 > tr > td").remove();	
				$.ajax({
					type: 'GET',
					url: "/waybill/loaddoc",
					dataType: 'JSON',
					beforeSend: function(xhr)
					{xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					data: {
					"id": $("#search_input").val()
					},                                                                           
					error: function( xhr ){ 
					// alert("ERROR ON SUBMIT");
					console.log("error on submit"+xhr);
					},
					success: function( item ){ 
					console.log('data '+ item);
					//data response can contain what we want here...
					i++; 
					//	item.receivedBy = 'OPEN';
					 $('#addr'+i).html("<td class='text-center'>"+ item.id +"</td><td class='text-center'>"+item.sentDate+"</td><td class='text-center'>"+item.sentBy+"</td><td class='text-center'>"+item.sentFrom+"</td><td class='text-center'>"+item.deliveredBy+"</td><td class='text-center'><p data-placement='top' data-toggle='tooltip' title='Print waybill'><button id='print_btn' class='btn btn-primary btn-xs' value='"+item.id+"'><span class='glyphicon glyphicon-print fa-2x'></span></button></p></td>");

					$('#tbody2').append('<tr id="addr'+(i+1)+'"></tr>');    				
					$("#tab_logic2").show();

					}
				});
					}	
				});		

									
});




$(function() {
    $(window).bind("load resize", function() {
        var topOffset = 50;
        var width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse');
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse');
        }

        var height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    // var element = $('ul.nav a').filter(function() {
    //     return this.href == url;
    // }).addClass('active').parent().parent().addClass('in').parent();
    var element = $('ul.nav a').filter(function() {
        return this.href == url;
    }).addClass('active').parent();

    while (true) {
        if (element.is('li')) {
            element = element.parent().addClass('in').parent();
        } else {
            break;
        }
    }
});
