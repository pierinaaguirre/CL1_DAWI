package com.google.buscador.venta.bean;


public class CelularBean {

	private int idCelular;
	private String modelo;
	private String color;
	private CategoriaBean categoria;
	public int getIdCelular() {
		return idCelular;
	}
	public void setIdCelular(int idCelular) {
		this.idCelular = idCelular;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public CategoriaBean getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaBean categoria) {
		this.categoria = categoria;
	}
	
	
}
