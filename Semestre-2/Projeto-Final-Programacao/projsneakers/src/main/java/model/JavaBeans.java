package model;

public class JavaBeans {
	private String id;
	private String modelo;
	private String collab;
	private String cor;
	private String imagem;
	
	

	public JavaBeans() {
		super();
	}
	
	public JavaBeans(String id, String modelo, String collab, String cor, String imagem) {
		super();
		this.id = id;
		this.modelo = modelo;
		this.collab = collab;
		this.cor = cor;
		this.imagem = imagem;
	}

	public String getImagem() {
		return imagem;
	}
	
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getCollab() {
		return collab;
	}
	public void setCollab(String collab) {
		this.collab = collab;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	
}
