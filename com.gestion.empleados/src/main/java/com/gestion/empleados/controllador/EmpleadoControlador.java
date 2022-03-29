package com.gestion.empleados.controllador;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gestion.empleados.modelo.Empleado;
import com.gestion.empleados.repositorio.EmpleadoRepositorio;
import com.gestion.empleados.excepciones.*;



@RestController
@RequestMapping("/api/v1/")
@CrossOrigin(origins = "http://localhost:4200/")
public class EmpleadoControlador {
	//autowired inyecta datos
	@Autowired
	private EmpleadoRepositorio repositorio;
	
	//Este metodo sirve para listar todos los empleados
	@GetMapping("/empleados")
	public List<Empleado> listarTodosLosEmpleados() {
		return repositorio.findAll();
	}
	
	//Este metodo sirve para guardar el empleado
	@PostMapping("/empleados")
	public Empleado guardarEmpleado(@RequestBody Empleado empleado) //requestBody se usa para enviar un json
	{
		return repositorio.save(empleado);
	}
	
	//Metodo de busqueda
	@GetMapping("/empleados/{id}")
	public ResponseEntity<Empleado> obtenerEmpleadoPorId(@PathVariable Long id){
		Empleado empleado = repositorio.findById(id)
							.orElseThrow(() -> new ResourcesNotFoundException(("No existe el empleado con el ID : "+ id))); 
				return ResponseEntity.ok(empleado);
	}
	
	//RequestBody obtiene los datos del front
	@PutMapping("/empleados/{id}")
	public ResponseEntity<Empleado> actualizarEmpleado(@PathVariable Long id, @RequestBody Empleado detallesEmpleado){
		Empleado empleado = repositorio.findById(id)
							.orElseThrow(() -> new ResourcesNotFoundException(("No existe el empleado con el ID : "+ id))); 
		empleado.setNombre(detallesEmpleado.getNombre());
		empleado.setApellido(detallesEmpleado.getApellido());
		empleado.setEmail(detallesEmpleado.getEmail());
		
		Empleado empleadoActualizado = repositorio.save(empleado);
		return ResponseEntity.ok(empleadoActualizado);
	}

	
	
	
}
