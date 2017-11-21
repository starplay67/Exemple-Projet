//Algorithme : croix

//But : Demander à l'utilisateur un caractère et une taille et effectuer une croix avec ces données.

//VAR

	//car : caractère 
	//taille, height, width : entier

//DEBUT

	//ECRIRE "Veuillez entrer le caractère que vous voulez utiliser pour réaliser la croix"
	//LIRE car
	//ECRIRE "Veuillez entrer la taille de la croix"
	//LIRE taille

	//POUR height <-- 0 TO taille-1 FAIRE
	//DEBUT
		//POUR width <-- 0 TO taille-1 FAIRE
		//DEBUT
			//SI (height=width) OU (width=((taille-1)-height)) ALORS
			//DEBUT
				//ECRIRE "car"
			//FIN
			//SINON
			//DEBUT
				//ECRIRE " "
			//FIN
		//FIN
		//ECRIRE "";
	//FIN

//FIN.
PROGRAM croix;
uses crt;

VAR

	car : char;
	taille, height, width : integer;

BEGIN

	writeln('Veuillez entrer le caractère que vous voulez utiliser pour réaliser la croix');
	readln(car);
	writeln('Veuillez entrer la taille de la croix');
	readln(taille);

	FOR height:=0 TO taille-1 DO
	BEGIN
		FOR width:=0 TO taille-1 DO
		BEGIN
			IF (height=width) OR (width=((taille-1)-height)) THEN
			BEGIN
				write(car);
			END
			ELSE
			BEGIN
				write(' ');
			END;
		END;
		writeln();
	END;


				
readln;

END.
