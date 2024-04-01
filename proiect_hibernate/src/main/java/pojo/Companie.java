package pojo;



import java.util.Date;

public class Companie  implements java.io.Serializable {

	private Integer idCompanie;
	private ModelTelefon modelTelefon;
	private LocatieFabrica locatieFabrica;
	private String nume;
	private String fondator;
	private int an_Infiintare;

	public Companie() {
	}

	public Companie(ModelTelefon tel, LocatieFabrica locfab, String nume, String fondator, int an) {
		this.modelTelefon = tel;
		this.locatieFabrica = locfab;
		this.nume = nume;
		this.fondator = fondator;
		this.an_Infiintare = an;
	}

	public Integer getIdCompanie() {
		return this.idCompanie;
	}

	public void setIdCompanie(Integer idCompanie) {
		this.idCompanie = idCompanie;
	}
	public ModelTelefon getModelTelefon() {
		return this.modelTelefon;
	}

	public void setModelTelefon(ModelTelefon modelTelefon) {
		this.modelTelefon = modelTelefon;
	}
	public LocatieFabrica getLocatieFabrica() {
		return this.locatieFabrica;
	}

	public void setLocatieFabrica(LocatieFabrica locatieFabrica) {
		this.locatieFabrica = locatieFabrica;
	}
	public String getNume() {
		return this.nume;
	}

	public void setNume(String Nume) {
		this.nume = Nume;
	}
	public String getFondator() {
		return this.fondator;
	}

	public void setFondator(String Fondator) {
		this.fondator = Fondator;
	}
	public int getAn_Infiintare() {
		return this.an_Infiintare;
	}

	public void setAn_Infiintare(int An_Infiintare) {
		this.an_Infiintare = An_Infiintare;
	}
}




