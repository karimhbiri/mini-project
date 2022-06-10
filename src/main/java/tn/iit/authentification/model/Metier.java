package tn.iit.authentification.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.*;


@Entity
@Table(name="Metier")
public class Metier {
 
 @Id
 @GeneratedValue(strategy=GenerationType.IDENTITY)
 @Column(name="id")
 protected int id;
 
 @Column(name="name")
 protected String name;
 
 @Column(name="alias")
 protected String alias;
 
 @Column(name="module")
 protected String module; 
 public Metier(int id,String name, String alias, String module) {
	super();
	this.id = id;
	this.name = name;
	this.alias = alias;
	this.module = module;
}
 
 public Metier() {
 }

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAlias() {
	return alias;
}

public void setAlias(String alias) {
	this.alias = alias;
}

public String getModule() {
	return module;
}

public void setModule(String module) {
	this.module = module;
}
 
}