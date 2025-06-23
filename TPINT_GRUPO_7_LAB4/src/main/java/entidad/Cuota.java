package entidad;

import java.util.Date;

public class Cuota {
	
	int id;
	Prestamo Prestamo;
	int numeroCouta;
	float monto;
	Date fechaVencimiento;
	Date fechaPago;
	CuotaEstado estado;
	
	public Cuota() {


	}

	public Cuota(int id, entidad.Prestamo prestamo, int numeroCouta, float monto, Date fechaVencimiento, Date fechaPago,
			CuotaEstado estado) {
		
		this.id = id;
		Prestamo = prestamo;
		this.numeroCouta = numeroCouta;
		this.monto = monto;
		this.fechaVencimiento = fechaVencimiento;
		this.fechaPago = fechaPago;
		this.estado = estado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Prestamo getPrestamo() {
		return Prestamo;
	}

	public void setPrestamo(Prestamo prestamo) {
		Prestamo = prestamo;
	}

	public int getNumeroCouta() {
		return numeroCouta;
	}

	public void setNumeroCouta(int numeroCouta) {
		this.numeroCouta = numeroCouta;
	}

	public float getMonto() {
		return monto;
	}

	public void setMonto(float monto) {
		this.monto = monto;
	}

	public Date getFechaVencimiento() {
		return fechaVencimiento;
	}

	public void setFechaVencimiento(Date fechaVencimiento) {
		this.fechaVencimiento = fechaVencimiento;
	}

	public Date getFechaPago() {
		return fechaPago;
	}

	public void setFechaPago(Date fechaPago) {
		this.fechaPago = fechaPago;
	}

	public CuotaEstado getEstado() {
		return estado;
	}

	public void setEstado(CuotaEstado estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Cuota [id=" + id + ", Prestamo=" + Prestamo + ", numeroCouta=" + numeroCouta + ", monto=" + monto
				+ ", fechaVencimiento=" + fechaVencimiento + ", fechaPago=" + fechaPago + ", estado=" + estado + "]";
	}
	
	
	
}
