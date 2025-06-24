package daoImpl;

import java.util.List;

import dao.CuentaDao;
import entidad.Cuenta;

public class CuentaDaoImpl implements CuentaDao {

	
	private Conexion cn;
	
	
	public CuentaDaoImpl() {

	}
	
	
	@Override
	public List<Cuenta> obtenerTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cuenta obtenerUno(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertar(Cuenta cuenta) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean editar(Cuenta cuenta) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminar(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
