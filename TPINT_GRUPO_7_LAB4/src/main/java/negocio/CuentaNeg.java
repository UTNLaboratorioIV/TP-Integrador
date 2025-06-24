package negocio;

import java.util.List;

import entidad.Cuenta;

public interface CuentaNeg {
	
	public List<Cuenta> obtenerTodos();
	public Cuenta obtenerUno(int id);
	public boolean insertar(Cuenta cuenta);
	public boolean editar(Cuenta cuenta);
	public boolean eliminar(int id);
	
}
