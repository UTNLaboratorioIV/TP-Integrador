package dao;

import java.util.List;

import entidad.Cliente;

public interface ClienteDao {	

	public List<Cliente> obtenerTodos();
	public Cliente obtenerUno(int id);
	public boolean insertar(Cliente cliente);
	public boolean editar(Cliente cliente);
	public boolean eliminar(int id);	
		
}
