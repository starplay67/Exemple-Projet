{
Algorithme Croix For

But : Dessiner une croix d'une taille saisi par l'utilisateur et avec un caractere saisi par l'utilisateur.

Entrée : Taille, Symbole

Variables : Taille, Largeur, Hauteur : Entier
			Symbole : Caractere

DEBUT
	ECRIRE("Veuillez entrer le caractere que vous souhaitez utiliser :"");
	LIRE(symbol);
	ECRIRE("Veuillez entrez la taille de votre croix :"");
	LIRE(taille);
	POUR hauteur allant de 1 à taille FAIRE		//On vérifie que la hauteur de la croix n'a pas encore été atteinte
		POUR largeur allant de 1 à taille FAIRE
			SI (largeur=hauteur) OU (largeur=((taille+1)-hauteur))			  //On test si on se trouve en une position où il faut mettre un caractere
				ALORS write(symbol);
				SINON ECRIRE(" ")		 //Si ce n'est pas le cas on écris un espace
			FINSI;
			ECRIRE(); 			//Si c'est la cas on reviens à la ligne 
		FINPOUR
	FINPOUR
FIN
}
PROGRAM croix_for;

USES crt;

VAR
	taille,largeur,hauteur : integer;
	symbol : char;

BEGIN
	writeln('Veuillez entrer le caractere que vous souhaitez utiliser :');
	readln(symbol);
	writeln('Veuillez entrez la taille de votre croix :');
	readln(taille);
	clrscr;
	for hauteur:=1 to taille do //On vérifie que la hauteur de la croix n'a pas encore été atteinte
		BEGIN
					for largeur:=1 to taille do
						BEGIN
							if (largeur=hauteur) or (largeur=((taille+1)-hauteur)) then //On test si on se trouve en une position où il faut mettre un caractere
								BEGIN
									write(symbol);
								END
							else //Si ce n'est pas le cas on écris un espace
								BEGIN
									write(' ');
								END;
						END;
						writeln(); //Si c'est la cas on reviens à la ligne 
		END;

	readln();

END.
