package entidad;

import java.util.Date;

public class Transferencia {
	
	int id;
	Cuenta cuentaOrigen;
	Cuenta cuentaDestino;
	float monto;
	Date fecha;
	
	public Transferencia() {


	}

	public Transferencia(int id, Cuenta cuentaOrigen, Cuenta cuentaDestino, float monto, Date fecha) {

		this.id = id;
		this.cuentaOrigen = cuentaOrigen;
		this.cuentaDestino = cuentaDestino;
		this.monto = monto;
		this.fecha = fecha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cuenta getCuentaOrigen() {
		return cuentaOrigen;
	}

	public void setCuentaOrigen(Cuenta cuentaOrigen) {
		this.cuentaOrigen = cuentaOrigen;
	}

	public Cuenta getCuentaDestino() {
		return cuentaDestino;
	}

	public void setCuentaDestino(Cuenta cuentaDestino) {
		this.cuentaDestino = cuentaDestino;
	}

	public float getMonto() {
		return monto;
	}

	public void setMonto(float monto) {
		this.monto = monto;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "Transferencia [id=" + id + ", cuentaOrigen=" + cuentaOrigen + ", cuentaDestino=" + cuentaDestino
				+ ", monto=" + monto + ", fecha=" + fecha + "]";
	}
	
	
	
}
