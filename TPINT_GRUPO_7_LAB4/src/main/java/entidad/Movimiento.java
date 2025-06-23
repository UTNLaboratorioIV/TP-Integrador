package entidad;

import java.util.Date;

public class Movimiento {

	int id;
	Cuenta cuenta;
	TipoMovimiento tipoMovimiento;
	float monto;
	String descripcion;
	Date fecha;
	
	public Movimiento() {


	}

	public Movimiento(int id, Cuenta cuenta, TipoMovimiento tipoMovimiento, float monto, String descripcion,
			Date fecha) {
		this.id = id;
		this.cuenta = cuenta;
		this.tipoMovimiento = tipoMovimiento;
		this.monto = monto;
		this.descripcion = descripcion;
		this.fecha = fecha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cuenta getCuenta() {
		return cuenta;
	}

	public void setCuenta(Cuenta cuenta) {
		this.cuenta = cuenta;
	}

	public TipoMovimiento getTipoMovimiento() {
		return tipoMovimiento;
	}

	public void setTipoMovimiento(TipoMovimiento tipoMovimiento) {
		this.tipoMovimiento = tipoMovimiento;
	}

	public float getMonto() {
		return monto;
	}

	public void setMonto(float monto) {
		this.monto = monto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "Movimiento [id=" + id + ", cuenta=" + cuenta + ", tipoMovimiento=" + tipoMovimiento + ", monto=" + monto
				+ ", descripcion=" + descripcion + ", fecha=" + fecha + "]";
	}
	
	
	
}
