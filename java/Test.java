
public class Test {
	

	public static void main(String[] args) {
		/*int premiersNombres[][][]= {{{0,2,4,6,8},{1,3,5,7,9},{2,3,4}}, {{1,2,3}}};
		System.out.println(premiersNombres[0][2][2]);*/
		/*String tab[][]={{"toto", "titi", "tutu", "tete", "tata"}, {"1", "2", "3", "4"}};
		int i = 0, j = 0;
		 
		for(String sousTab[] : tab)
		{
		  i = 0;
		  for(String str : sousTab)
		  {     
		    System.out.println("La valeur de la nouvelle boucle est  : " + str);
		    System.out.println("La valeur du tableau à l'indice ["+j+"]["+i+"] est : " + tab[j][i]);
		    i++;
		  }
		  j++;
		}*/
		/*String chaine = new String("la paix niche"), chaine2 = new String();
		chaine2 = chaine.substring(3,13);   //Permet d'extraire "paix niche"
		if (chaine2.equals(chaine2))
			/*
			 * La méthode substring() extrait une partie d'une chaîne de caractères. 
			 * Elle prend deux entiers en arguments : le premier définit le premier caractère (inclus) de la sous-chaîne à extraire, le second correspond au dernier caractère (exclu) à extraire. 
			 * Là encore, le premier caractère porte le numéro 0
			 * 
			System.out.println("ok ça marche ! substring(index de début, index de fin) : extrait la sous-chaine entre les indexs : ici entre 3 et 13 on a : " + chaine2);
	*/
		
		/*String mot = new String("anticonstitutionnellement");
		int n = 0;
		 
		n = mot.indexOf('t');           //n vaut 2
		n = mot.lastIndexOf('t');       //n vaut 24
		n = mot.indexOf("ti");          //n vaut 2
		n = mot.lastIndexOf("ti");      //n vaut 12
		n = mot.indexOf('x');           //n vaut -1*/
		int a = 10, b = 20;
		int max = (a < b) ? ((b < 20) ? b * 2 : ((b > 20) ? b % 3 : b / 4) ) : ((a == 10) ? a / 2 : a % 3); 
		System.out.println(max);
		int i = 0, nbre = 0;
		while(i <= 9)
		 {
		     for (int j = 0; j < 10; j++)
		        nbre++;
		    	 
		     i++;
		}
		System.out.print(nbre);
	}
}

