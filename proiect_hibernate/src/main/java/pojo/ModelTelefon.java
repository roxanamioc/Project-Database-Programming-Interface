package pojo;


import java.util.HashSet;
import java.util.Set;

public class ModelTelefon  implements java.io.Serializable {

	private Integer idModelTelefon;
	private String nume;
	private float memorie_Interna;
	private float memorie_RAM;
	private float dimensiune_Ecran;
	private int an_Aparitie;
	private Set consultaties = new HashSet(0);

	public ModelTelefon() {
	}

	public ModelTelefon(String Nume, float Memorie_Interna, float Memorie_RAM, float Dimensiune_Ecran, int An_Aparitie, Set consultaties) {
		this.nume = Nume;
		this.memorie_Interna = Memorie_Interna;
		this.memorie_RAM = Memorie_RAM;
		this.dimensiune_Ecran = Dimensiune_Ecran;
		this.an_Aparitie = An_Aparitie;
		this.consultaties = consultaties;
	}

	public Integer getIdModelTelefon() {
		return this.idModelTelefon;
	}

	public void setIdModelTelefon(Integer idModelTelefon) {
		this.idModelTelefon = idModelTelefon;
	}
	public String getNume() {
		return this.nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}
	public float getMemorie_Interna() {
		return this.memorie_Interna;
	}

	public void setMemorie_Interna(float Memorie_Interna) {
		this.memorie_Interna = Memorie_Interna;
	}
	public float getMemorie_RAM() {
		return this.memorie_RAM;
	}

	public void setMemorie_RAM(float Memorie_RAM) {
		this.memorie_RAM = Memorie_RAM;
	}
	public float getDimensiune_Ecran() {
		return this.dimensiune_Ecran;
	}

	public void setDimensiune_Ecran(float Dimensiune_Ecran) {
		this.dimensiune_Ecran = Dimensiune_Ecran;
	}
	public int getAn_Aparitie() {
		return this.an_Aparitie;
	}

	public void setAn_Aparitie(int An_Aparitie) {
		this.an_Aparitie = An_Aparitie;
	}
	public Set getConsultaties() {
		return this.consultaties;
	}

	public void setConsultaties(Set consultaties) {
		this.consultaties = consultaties;
	}
}




