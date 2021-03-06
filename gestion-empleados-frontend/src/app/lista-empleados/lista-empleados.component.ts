import { EmpleadoService } from './../empleado.service';
import { Empleado } from './../empleado';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router'; 


@Component({
  selector: 'app-lista-empleados',
  templateUrl: './lista-empleados.component.html',
  styleUrls: ['./lista-empleados.component.css']
})
export class ListaEmpleadosComponent implements OnInit {

empleados:Empleado[];

  constructor(private empleadoServicio:EmpleadoService, private router:Router) { }

  ngOnInit(): void {
    this.obtenerEmpleados();
  }

  actualizarEmpleado(id:number){
    this.router.navigate(['actualizar-empleado',id]);
  }


  eliminarEmpleado(id: number){
    this.empleadoServicio.eliminarEmpleado(id).subscribe(dato => {
    this.obtenerEmpleados();
    })
  }
  verDetallesEmpleado(id: number){
    this.router.navigate(['empleado-detalle',id]);
  }
  private obtenerEmpleados(){
    this.empleadoServicio.obtenerListaEmpleados().subscribe(dato=>{
      this.empleados = dato;
    });
  }
  
}
