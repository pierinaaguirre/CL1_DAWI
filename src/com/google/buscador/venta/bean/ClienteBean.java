package com.google.buscador.venta.bean;

public class ClienteBean {
	private int codCliente;
	private String nomCliente, apeCliente;
	private int dniCliente;
	private String fecNacCliente;
	private TipoBean tipo;
	public int getCodCliente() {
		return codCliente;
	}
	public void setCodCliente(int codCliente) {
		this.codCliente = codCliente;
	}
	public String getNomCliente() {
		return nomCliente;
	}
	public void setNomCliente(String nomCliente) {
		this.nomCliente = nomCliente;
	}
	public String getApeCliente() {
		return apeCliente;
	}
	public void setApeCliente(String apeCliente) {
		this.apeCliente = apeCliente;
	}
	public int getDniCliente() {
		return dniCliente;
	}
	public void setDniCliente(int dniCliente) {
		this.dniCliente = dniCliente;
	}
	public String getFecNacCliente() {
		return fecNacCliente;
	}
	public void setFecNacCliente(String fecNacCliente) {
		this.fecNacCliente = fecNacCliente;
	}
	public TipoBean getTipo() {
		return tipo;
	}
	public void setTipo(TipoBean tipo) {
		this.tipo = tipo;
	}
	
	
}
