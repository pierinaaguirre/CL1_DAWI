package com.google.buscador.venta.bean;

public class ComputadoraBean {

	private int idComputadora;
	private String nombre;
	private double precio;
	private int stock;
	private MarcaBean marca;
	public int getIdComputadora() {
		return idComputadora;
	}
	public void setIdComputadora(int idComputadora) {
		this.idComputadora = idComputadora;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public MarcaBean getMarca() {
		return marca;
	}
	public void setMarca(MarcaBean marca) {
		this.marca = marca;
	}
	
	
}
