package tn.iit.authentification.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
public class DemandeTirage {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String enseignantNom = "";
	private String matiere = "";
	private String nbrcopie;
	private String date = null;
	private String time = null;
	private String filePath = "";
	private String status = "";

	public DemandeTirage(int id, String enseignantNom, String matiere, String nbrcopie, String date, String time,
			String filePath, String status) {
		super();
		this.id = id;
		this.setEnseignantNom(enseignantNom);
		this.setMatiere(matiere);
		this.setNbrcopie(nbrcopie);
		this.setDate(date);
		this.setTime(time);
		this.setFilePath(filePath);
		this.setStatus(status);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEnseignantNom() {
		return enseignantNom;
	}

	public void setEnseignantNom(String enseignantNom) {
		this.enseignantNom = enseignantNom;
	}

	public String getMatiere() {
		return matiere;
	}

	public void setMatiere(String matiere) {
		this.matiere = matiere;
	}

	public String getNbrcopie() {
		return nbrcopie;
	}

	public void setNbrcopie(String nbrcopie) {
		this.nbrcopie = nbrcopie;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
