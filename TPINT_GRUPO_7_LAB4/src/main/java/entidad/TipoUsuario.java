package entidad;

public class TipoUsuario {
	
	int id;
	String descripcion;
	
	public TipoUsuario() {

	}

	public TipoUsuario(int id, String descripcion) {

		this.id = id;
		this.descripcion = descripcion;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "TipoUsuario [id=" + id + ", descripcion=" + descripcion + "]";
	}
	
	
	
}
