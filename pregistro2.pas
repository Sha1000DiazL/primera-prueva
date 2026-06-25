{
La Comisión Provincial por la Memoria desea analizar la información de los proyectos presentados en
el programa Jóvenes y Memoria durante la convocatoria 2020.
Cada proyecto posee un código único, un título, el docente coordinador (DNI, nombre y apellido, email), 
la cantidad de alumnos que participan del proyecto, el nombre de la escuela y la localidad a la que pertenecen.
 Cada escuela puede presentar más de un proyecto, y la información se ingresar ordenada consecutivamente por
localidad, y para cada localidad por escuela.
Realizar un programa que lea la información de los proyectos hasta que se ingrese el proyecto con
código -1 (que no debe procesarse), e informe:
A) La cantidad total de escuelas que participan en la convocatoria 2020 y la cantidad de escuelas
por cada localidad
B) Los nombres de las dos escuelas con mayor cantidad de alumnos participantes
C) El título de los proyectos de la localidad de Daireaux cuyo código posee igual cantidad de dígitos
pares e impares.
   
}


program registrosp;

type
  cordinador=record
  dni: integer;
  nomyape: string;
  email: string;
  end;
  proyecto=record
  ipro: integer;
  nombrescuela: string;
  canalum: integer;
  tituloproye: string;
  end;
 local=record 
 escuela:proyecto;
  localidad: string;
  docentes: cordinador;
  end;
  procedure cargarcordinador(c:cordinador);
  begin
  writeln (' escribir el nombre del cordinador del proyecto :');
		readln (c.nomyape);
		writeln (' DNI :');
		readln (c.dni);
		writeln (' email:');
		readln (c.email);
		end;
 procedure cargaproyecto(p:proyecto);
  var
  l:local;
  contl: integer;
  canescuela: integer;
  maxalum: integer;
begin
	contl:=0;
  p.ipro:=0;
  canescuela:=0;
  maxalum:=0;
while (p.ipro<> -1) do
	begin 
		writeln (' escribir la localidad:');
		readln (l.localidad);
		while (l.localidad<>l.localidad) do 
		begin
			contl:= contl+1;
			writeln (' escuela del proyecto:');
			readln (p.nombrescuela);
			while ( p.nombrescuela<>p.nombrescuela) do 
				begin
					canescuela:= canescuela+1;
					writeln (' escribir el titulo del proyecto :');
					readln (p.tituloproye);
					writeln (' escribir la cantidada de alumnos que participan:');
					readln (p.canalum);
					if p.canalum<maxalum then 
					begin 
						maxalum:=maxalum;
					end;

				end;
		end;
	end;
end;


	
	
begin


	 
END.

