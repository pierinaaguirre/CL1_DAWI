<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registra Cliente</title>
</head>
<body>

<div class="container">
<h1>Registra Clientes</h1>
	
	<c:if test="${sessionScope.MENSAJE != null }">
			<div class="alert alert-success" id="success-alert">
	 		   <button type="button" class="close" data-dismiss="alert">x</button>
				${sessionScope.MENSAJE}				
			</div>
	</c:if>
	<c:remove var="MENSAJE"/>

	<form action="registraCliente" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nomCliente">Nombres</label>
				<input class="form-control" type="text" id="id_nomCliente" name="cliente.nomCliente" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apeCliente">Apellidos</label>
				<input class="form-control" type="text" id="id_apeCliente" name="cliente.apeCliente" placeholder="Ingrese el apellido">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_dniCliente">DNI</label>
				<input class="form-control" type="text" id="id_dniCliente" name="cliente.dniCliente" placeholder="Ingrese el DNI">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_fecNacCliente">Fecha de Nacimiento</label>
				<input class="form-control" type="text" id="id_fecNacCliente" name="cliente.fecNacCliente" placeholder="Ingrese la fecha de nacimiento">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_tipo">Tipo</label>
				<select id="id_tipo" name="cliente.tipo.codTipo" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Cliente</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">
	$.getJSON("cargaTipo",{}, function(data,q,txt){
		$.each(data.lstTipo, function(key,value){
			$("#id_tipo").append("<option value='" + value.codTipo +  "'>" + value.nombre + "</option>")
		})
	});
</script>
	
<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nomCliente: {
        		selector :"#id_nomCliente",
        		validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
            apeCliente: {
        		selector :"#id_apeCliente",
        		validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
        	dniCliente: {
        		selector :"#id_dniCliente",
                validators: {
                    notEmpty: {
                        message: 'El DNI es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /[0-9]{8}$/,
                        message: 'El DNI tiene 8 dígitos'
                    }
                }
            },
            fecNacCliente: {
            	selector :"#id_fecNacCliente",
                validators: {
                    notEmpty: {
                        message: 'La fecha de nacimiento es un campo obligatorio'
                    },
                    regexp: {
                    	regexp: /^([0-9]{4}\-[0-9]{2}\-[0-9]{2})$/,
		                message: 'Tiene formato YYYY-MM-DD'
		            },
                }
            },
            tipo: {
            	selector :"#id_tipo",
                validators: {
                    notEmpty: {
                        message: 'El tipo es un campo obligatorio'
                    }
                }
            },
          
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>


</body>
</html>




