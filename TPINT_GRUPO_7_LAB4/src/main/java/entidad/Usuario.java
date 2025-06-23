package entidad;

public class Usuario {

	int id;
	String nombre;
	String password;
	TipoUsuario tipoUsuario;
	boolean estado;
	
	public Usuario() {

	}

	public Usuario(int id, String nombre, String password, TipoUsuario tipoUsuario, boolean estado) {

		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.tipoUsuario = tipoUsuario;
		this.estado = estado;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public TipoUsuario getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(TipoUsuario tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", password=" + password + ", tipoUsuario=" + tipoUsuario
				+ ", estado=" + estado + "]";
	}
	
	
	
}
