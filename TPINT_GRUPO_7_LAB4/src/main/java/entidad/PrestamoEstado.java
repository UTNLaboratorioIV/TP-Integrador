package entidad;

public class PrestamoEstado {
	
	int id;
	String descripcion;
	
	public PrestamoEstado() {


	}

	public PrestamoEstado(int id, String descripcion) {

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
		return "PrestamoEstado [id=" + id + ", descripcion=" + descripcion + "]";
	}
	
	
}
