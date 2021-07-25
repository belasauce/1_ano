package pt.ua.proj2;

public class Contacto1  {
    private String nome;
    private String telefone;
    private String eMail;
  
    public Contacto1 (String nom, String tel, String mail) {
      nome = nom;
      telefone = tel;
      eMail= mail;
    }
  
    public Contacto1 (String nom, String tel) {
      nome = nom;
      telefone = tel;
    }
    
    public String nome(){
      return nome;
    }
  
    public String telefone(){
      return telefone;
    }
  
    public String eMail(){
      return eMail;
    }
  }
  
