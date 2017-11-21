{
Algorithme Croix TantQue

But : Dessiner une croix d'une taille saisi par l'utilisateur et avec un caractere saisi par l'utilisateur.

Entrée : Taille, Symbole

Variables : Taille, Largeur, Hauteur : Entier
			Symbole : Caractere

DEBUT
	ECRIRE("Veuillez entrer le caractere que vous souhaitez utiliser :"");
	LIRE(symbol);
	ECRIRE("Veuillez entrez la taille de votre croix :"");
	LIRE(taille);
	TANTQUE hauteur<>taille FAIRE 			//On vérifie que la hauteur de la croix n'a pas encore été atteinte
					SI (largeur=hauteur) OU (largeur=((taille-1)-hauteur)) 
					ALORS 			//On test si on se trouve en une position où il faut mettre un caractere 
							write(symbol);
					SINON 			//Si ce n'est pas le cas on écris un espace
							ECRIRE(' ');
					FINSI;
					SI largeur=(taille-1) 
					ALORS 				//On test si la largeur de la croix a été atteinte
							ECRIRE(); 			//Si c'est la cas on reviens à la ligne
							largeur<-0; 			//On remet le compteur de largeur à 0
							hauteur<-hauteur+1; 			//On incrémente la coordonnée verticale
					SINON
							largeur<-largeur+1; 			//On incrémente la coordonnée horizontale
					FINSI;
	FINTANTQUE;
FIN
}



PROGRAM croix_only_while;

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
	while hauteur<>taille do //On vérifie que la hauteur de la croix n'a pas encore été atteinte
		BEGIN
					if (largeur=hauteur) or (largeur=((taille-1)-hauteur)) then //On test si on se trouve en une position où il faut mettre un caractere 
						BEGIN
							write(symbol);
						END
					else //Si ce n'est pas le cas on écris un espace
						BEGIN
							write(' ');
						END;
					if largeur=(taille-1) then //On test si la largeur de la croix a été atteinte
						BEGIN
							writeln(); //Si c'est la cas on reviens à la ligne
							largeur:=0; //On remet le compteur de largeur à 0
							hauteur:=hauteur+1; //On incrémente la coordonnée vertical
						END
					else 
						BEGIN
							largeur:=largeur+1; //Sinon on incremente la coordonnée horizontale
						END;
		END;

	readln();

END.
