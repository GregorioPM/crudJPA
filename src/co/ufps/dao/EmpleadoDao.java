package co.ufps.dao;

import co.ufps.model.Empleado;
import co.ufps.util.Conexion;

public class EmpleadoDao extends Conexion<Empleado> implements GenericDao<Empleado> {

	public EmpleadoDao() {
		super(Empleado.class);
	}
	
	public static void main(String args[]){
		EmpleadoDao empleadoDao = new EmpleadoDao();
		
		System.out.print(empleadoDao.list().get(0).getNombre());
	}
	
}
