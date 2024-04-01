package pojo;



import java.util.HashSet;
import java.util.Set;

public class LocatieFabrica  implements java.io.Serializable {


	private Integer idLocatieFabrica;
	private String oras;
	private String tara;
	private Set consultaties = new HashSet(0);

	public LocatieFabrica() {
	}

	public LocatieFabrica(String oras, String tara, Set consultaties) {
		this.oras = oras;
		this.tara = tara;
		this.consultaties = consultaties;
	}

	public Integer getIdLocatieFabrica() {
		return this.idLocatieFabrica;
	}

	public void setIdLocatieFabrica(Integer idLocatieFabrica) {
		this.idLocatieFabrica = idLocatieFabrica;
	}
	public String getOras() {
		return this.oras;
	}

	public void setOras(String oras) {
		this.oras = oras;
	}
	public String getTara() {
		return this.tara;
	}

	public void setTara(String tara) {
		this.tara = tara;
	}
	public Set getConsultaties() {
		return this.consultaties;
	}

	public void setConsultaties(Set consultaties) {
		this.consultaties = consultaties;
	}
}




