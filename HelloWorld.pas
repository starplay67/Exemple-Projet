PROGRAM hello_world;

uses crt;

VAR 
	prixht : integer;


begin;
	writeln('Hello, World.');
	writeln('Veuillez entrer un prix hors taxe');
	readln(prixht);
	writeln('Voici le prix ttc : ',prixht*1.2);
	readln;

END.