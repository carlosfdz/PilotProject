$("#registro").click(function(){
	var dato = $("#name").val();
	var route = "http://localhost:8000/language";
	var token = $("#token").val();

	$.ajax({
		url: route,
		headers: {'X-CSRF-TOKEN': token},
		type: 'POST',
		dataType: 'json',
		data:{name: dato},

		success:function(){
			$("#msj-success").fadeIn();
		},
		error:function(msj){
			$("#msj").html(msj.responseJSON.name);
			$("#msj-error").fadeIn();
		}
	});
});