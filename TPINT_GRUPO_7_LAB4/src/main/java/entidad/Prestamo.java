package entidad;

import java.util.Date;

public class Prestamo {
	
	int id;
	Cliente cliente;
	Cuenta cuentaDestino;
	float montoTotal;
	int cuotasTotales;
	int cuotasPagadas;
	PrestamoEstado prestamoEstado;
	Date fechaSolicitud;
	Date fechaAprobacion;
	
	public Prestamo() {


	}

	public Prestamo(int id, Cliente cliente, Cuenta cuentaDestino, float montoTotal, int cuotasTotales,
			int cuotasPagadas, PrestamoEstado prestamoEstado, Date fechaSolicitud, Date fechaAprobacion) {

		this.id = id;
		this.cliente = cliente;
		this.cuentaDestino = cuentaDestino;
		this.montoTotal = montoTotal;
		this.cuotasTotales = cuotasTotales;
		this.cuotasPagadas = cuotasPagadas;
		this.prestamoEstado = prestamoEstado;
		this.fechaSolicitud = fechaSolicitud;
		this.fechaAprobacion = fechaAprobacion;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Cuenta getCuentaDestino() {
		return cuentaDestino;
	}

	public void setCuentaDestino(Cuenta cuentaDestino) {
		this.cuentaDestino = cuentaDestino;
	}

	public float getMontoTotal() {
		return montoTotal;
	}

	public void setMontoTotal(float montoTotal) {
		this.montoTotal = montoTotal;
	}

	public int getCuotasTotales() {
		return cuotasTotales;
	}

	public void setCuotasTotales(int cuotasTotales) {
		this.cuotasTotales = cuotasTotales;
	}

	public int getCuotasPagadas() {
		return cuotasPagadas;
	}

	public void setCuotasPagadas(int cuotasPagadas) {
		this.cuotasPagadas = cuotasPagadas;
	}

	public PrestamoEstado getPrestamoEstado() {
		return prestamoEstado;
	}

	public void setPrestamoEstado(PrestamoEstado prestamoEstado) {
		this.prestamoEstado = prestamoEstado;
	}

	public Date getFechaSolicitud() {
		return fechaSolicitud;
	}

	public void setFechaSolicitud(Date fechaSolicitud) {
		this.fechaSolicitud = fechaSolicitud;
	}

	public Date getFechaAprobacion() {
		return fechaAprobacion;
	}

	public void setFechaAprobacion(Date fechaAprobacion) {
		this.fechaAprobacion = fechaAprobacion;
	}

	@Override
	public String toString() {
		return "Prestamo [id=" + id + ", cliente=" + cliente + ", cuentaDestino=" + cuentaDestino + ", montoTotal="
				+ montoTotal + ", cuotasTotales=" + cuotasTotales + ", cuotasPagadas=" + cuotasPagadas
				+ ", prestamoEstado=" + prestamoEstado + ", fechaSolicitud=" + fechaSolicitud + ", fechaAprobacion="
				+ fechaAprobacion + "]";
	}
	
	
}
