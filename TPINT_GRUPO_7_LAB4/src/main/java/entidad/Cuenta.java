package entidad;

import java.util.Date;

public class Cuenta {

	int id;
	Cliente cliente;
	TipoCuenta tipoCuenta;
	String cbu;
	float saldo;
	boolean estado;
	Date fechaAlta;
	
	public Cuenta() {

	}

	public Cuenta(int id, Cliente cliente, TipoCuenta tipoCuenta, String cbu, float saldo, boolean estado,
			Date fechaAlta) {

		this.id = id;
		this.cliente = cliente;
		this.tipoCuenta = tipoCuenta;
		this.cbu = cbu;
		this.saldo = saldo;
		this.estado = estado;
		this.fechaAlta = fechaAlta;
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

	public TipoCuenta getTipoCuenta() {
		return tipoCuenta;
	}

	public void setTipoCuenta(TipoCuenta tipoCuenta) {
		this.tipoCuenta = tipoCuenta;
	}

	public String getCbu() {
		return cbu;
	}

	public void setCbu(String cbu) {
		this.cbu = cbu;
	}

	public float getSaldo() {
		return saldo;
	}

	public void setSaldo(float saldo) {
		this.saldo = saldo;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public Date getFechaAlta() {
		return fechaAlta;
	}

	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	@Override
	public String toString() {
		return "Cuenta [id=" + id + ", cliente=" + cliente + ", tipoCuenta=" + tipoCuenta + ", cbu=" + cbu + ", saldo="
				+ saldo + ", estado=" + estado + ", fechaAlta=" + fechaAlta + "]";
	}
	
	
	
}
