package com.google.buscador.venta.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.google.buscador.venta.bean.ClienteBean;
import com.google.buscador.venta.bean.TipoBean;
import com.google.buscador.venta.service.ClienteServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


@ParentPackage("dawi")
public class ClienteAction extends ActionSupport{


	private static final long serialVersionUID = 1L;

	private List<TipoBean> lstTipo;

	private ClienteBean Cliente;
	
	private Map<String, Object> session = ActionContext.getContext().getSession();

	
	
	@Action(value = "/cargaTipo", results = { @Result(name = "salida", type = "json") })
	public String metodo01() {
		ClienteServiceImpl service = new ClienteServiceImpl();
		try {
			setLstTipo(service.listaTipo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "salida";
	}
	
	@Action(value = "/registraCliente", results = {@Result(name = "salida", location = "/registraCliente.jsp", type = "redirect") })
	public String metodo02() {
		ClienteServiceImpl service = new ClienteServiceImpl();
		try {
			int s = service.insertaCliente(Cliente);
			if (s > 0) {
				session.put("MENSAJE", "Registro exitoso");
			} else {
				session.put("MENSAJE", "Registro erróneo");
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.put("MENSAJE", "Registro erróneo");
		}
		return "salida";
	}

	public List<TipoBean> getLstTipo() {
		return lstTipo;
	}

	public void setLstTipo(List<TipoBean> lstTipo) {
		this.lstTipo = lstTipo;
	}
	public ClienteBean getCliente() {
		return Cliente;
	}

	public void setCliente(ClienteBean cliente) {
		Cliente = cliente;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
}



