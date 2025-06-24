package negocio;

import java.util.List;

import entidad.Usuario;

public interface UsuarioNeg {
	
	public List<Usuario> obtenerTodos();
	public Usuario obtenerUno(int id);
	public boolean insertar(Usuario usuario);
	public boolean editar(Usuario usuario);
	public boolean eliminar(int id);
	
}
