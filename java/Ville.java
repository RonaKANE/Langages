public class Ville {
	//Stocke le nom de notre ville
	  private String nomVille;
	  //Stocke le nom du pays de notre ville
	  private String nomPays;
	  //Stocke le nombre d'habitants de notre ville
	  private int nbreHabitants;
	     
	  //Constructeur par défaut
	  public Ville(){
	    System.out.println("Création d'une ville !");      
	    nomVille = "Inconnu";
	    nomPays = "Inconnu";
	    nbreHabitants = 0;
	  } 
	  
	//Constructeur avec paramètres
	  //J'ai ajouté un « p » en première lettre des paramètres.
	  //Ce n'est pas une convention, mais ça peut être un bon moyen de les repérer.
	  public Ville(String pNom, int pNbre, String pPays) {
		   System.out.println("Création d'une ville avec des paramètres !");
		   nomVille = pNom;
		   nomPays = pPays;
		   nbreHabitants = pNbre;
	  }
	  //Les variables et les constructeurs n'ont pas changé…
      
	  //*************   ACCESSEURS *************
	    
	  //Retourne le nom de la ville
	  public String getNom()  {  
	    return nomVille;
	  }

	  //Retourne le nom du pays
	  public String getNomPays()
	  {
	    return nomPays;
	  }

	  // Retourne le nombre d'habitants
	  public int getNombreHabitants()
	  {
	    return nbreHabitants;
	  } 
	 
	  //*************   MUTATEURS   *************

	  //Définit le nom de la ville
	  public void setNom(String pNom)
	  {
	    nomVille = pNom;
	  }

	  //Définit le nom du pays
	  public void setNomPays(String pPays)
	  {
	    nomPays = pPays;
	  }

	  //Définit le nombre d'habitants
	  public void setNombreHabitants(int nbre)
	  {
	    nbreHabitants = nbre;
	  }  
	  public static void main (String[] args)
	  {
		  Ville uneVille = new Ville();
	  }
}
