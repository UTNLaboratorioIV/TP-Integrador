package daoImpl;

import java.util.List;

import dao.ClienteDao;
import entidad.Cliente;

public class ClienteDaoImpl implements ClienteDao {

	private Conexion cn;
	
	
	public ClienteDaoImpl() {

	}	

	@Override
	public List<Cliente> obtenerTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cliente obtenerUno(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertar(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean editar(Cliente cliente) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
