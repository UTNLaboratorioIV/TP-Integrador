package daoImpl;

import java.util.List;

import dao.UsuarioDao;
import entidad.Usuario;

public class UsuarioDaoImpl implements UsuarioDao {

	
	private Conexion cn;
	
	
	public UsuarioDaoImpl() {

	}
	
	
	@Override
	public List<Usuario> obtenerTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario obtenerUno(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertar(Usuario usuario) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean editar(Usuario usuario) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
