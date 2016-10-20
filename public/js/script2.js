$(document).ready(function(){
	Carga();
});

function Carga(){
	var tablaDatos = $("#datos");
	var route = "http://localhost:8000/language";

	$("#datos").empty();
	$.get(route, function(res){
		$(res).each(function(key,value){
			tablaDatos.append("<tr><td>"+value.name+"</td><td><button value="+value.id+" OnClick='Mostrar(this);' class='btn btn-primary'>Editar</button><button class='btn btn-danger'>Eliminar</button></td></tr>");
		});
	});
}

function Mostrar(btn){
	var route = "http://localhost:8000/language/"+btn.value+"/edit";

	$.get(route, function(res){
		$("#name").val(res.name);
		$("#id").val(res.id);
	});
}

$("#actualizar").click(function(){
	var value = $("#id").val();
	var dato = $("#name").val();
	var route = "http://localhost:8000/language/"+value+"";
	var token = $("#token").val();

	$.ajax({
		url: route,
		headers: {'X-CSRF-TOKEN': token},
		type: 'PUT',
		dataType: 'json',
		data: {genre: dato},
		success: function(){
			Carga();
			$("#myModal").modal('toggle');
			$("#msj-success").fadeIn();
		}
	});
});