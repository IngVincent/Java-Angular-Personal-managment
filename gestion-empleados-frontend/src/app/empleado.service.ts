import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Empleado } from './empleado';

@Injectable({
  providedIn: 'root'
})
export class EmpleadoService {

  

  private baseURL = "http://localhost:8080/api/v1/empleados"; //Obtiene los empleados del enpoint del backend

  constructor(private httpClient : HttpClient){ }

  //Este metodo obtiene los empleados
  obtenerListaEmpleados():Observable<Empleado[]>{
    return this.httpClient.get<Empleado[]>(`${this.baseURL}`);
  }
  //Este metodo envia el empleado en formato json
  registrarEmpleado(empleado:Empleado): Observable<Object>{
    return this.httpClient.post(`${this.baseURL}`, empleado); 
  }

  //Metodo para actualizar empleado

  actualizarEmpleado(id:number, empleado:Empleado): Observable<Object>{
    return this.httpClient.put(`${this.baseURL}/${id}`,empleado);
  }
  obtenerEmpleadoPorId(id:number): Observable<Empleado>{
    return this.httpClient.get<Empleado>(`${this.baseURL}/${id}`);
  }
  eliminarEmpleado(id:number): Observable<Object>{
    return this.httpClient.delete(`${this.baseURL}/${id}`);
  }
}
