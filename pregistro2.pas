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
  maxalum1: integer	;	
  maxalum2: integer	;	
  maxescuela1: string;	
  maxescuela2: string;	
  
begin
	contl:=0;
  canescuela:=0;
  maxalum1:=0;
 maxalum2:=0;
	writeln ( 'escribe el id del proyecto:');
	readln (p.ipro);
while (p.ipro<> -1) do
	begin 
		writeln (' escribir la localidad:');
		readln (l.localidad);
		while (p.ipro<> -1) and  (l.localidad<>l.localidad) do 
		begin
			contl:= contl+1;
			writeln (' escuela del proyecto:');
			readln (p.nombrescuela);
			while (p.ipro<> -1) and ( p.nombrescuela<>p.nombrescuela) do 
				begin
					canescuela:= canescuela+1;
					writeln (' escribir el titulo del proyecto :');
					readln (p.tituloproye);
					writeln (' escribir la cantidada de alumnos que participan:');
					readln (p.canalum);
					if p.canalum<maxalum1 then 
					begin 
						maxalum1:=maxalum1;
						 maxescuela1:=p.nombrescuela;
						 end
						else
						if p.canalum<maxalum2 then
						begin
						 maxalum2:=maxalum2;
						  maxescuela2:=p.nombrescuela;
						end;
				end;
		end;
	end;
end;
 function igualpareinpar( cod:proyecto): boolean;
  var
  par:integer;
  impar:integer;
  dig: integer;
  begin
	par:=0;
	impar:=0;
	while (cod.ipro <> 0) do 
		begin 
			dig:=cod.ipro mod 10;
			if (dig mod 2 = 0) then
			begin
				par:= par + 1;
				end
			else
				impar:=impar+1;
			cod.ipro:= cod.ipro div 10;	
			end;
			igualpareinpar:=(par=impar); 
			
		end;

	
	
begin


	 
END.

