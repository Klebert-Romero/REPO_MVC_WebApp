
INSERT INTO `carteleradb2`.`categoria`
(`idCategoria`,
`codigo`,
`descripcion`)
VALUES
(1,
"01",
"PREMIUM");


INSERT INTO `carteleradb2`.`categoria`
(`idCategoria`,
`codigo`,
`descripcion`)
VALUES
(2,
"02",
"REGULAR");

INSERT INTO `carteleradb2`.`cine`
(`idCine`,
`razonSocial`,
`nombre`)
VALUES
(1,
"UVK Multicines SA",
"UVK");

INSERT INTO `carteleradb2`.`cine`
(`idCine`,
`razonSocial`,
`nombre`)
VALUES
(2,
"Cineplex SA",
"CINEPLANET");

INSERT INTO `carteleradb2`.`cine`
(`idCine`,
`razonSocial`,
`nombre`)
VALUES
(3,
"Cinemark del Peru SA",
"UVK");


INSERT INTO `carteleradb2`.`pelicula`
(`idPelicula`,
`nombre`,
`duracion`,
`clasificacion`,
`idioma`,
`genero`,
`formato`,
`sinopsis`)
VALUES
(1,
"Aquaman",
"2h 30min",
"APT",
"Ingles",
"Accion",
"2D",
"Arthur Curry se entera de que es el heredero del reino submarino de la Atlántida. Así se convertirá en Aquaman.");

INSERT INTO `carteleradb2`.`pelicula`
(`idPelicula`,
`nombre`,
`duracion`,
`clasificacion`,
`idioma`,
`genero`,
`formato`,
`sinopsis`)
VALUES
(2,
"Terremoto 8.0",
"1h 50min",
"+14",
"Ingles",
"Accion",
"2D",
"En el año 1904 un terremoto de magnitud 5.4 en la escala de Richter sacudió a Oslo con el epicentro en la Fosa de Oslo que corre debajo de la capital noruega");


INSERT INTO `carteleradb2`.`pelicula`
(`idPelicula`,
`nombre`,
`duracion`,
`clasificacion`,
`idioma`,
`genero`,
`formato`,
`sinopsis`)
VALUES
(3,
"Dragon Ball Super: Broly",
"1h 50min",
"APT",
"Latino",
"Animacion",
"2D",
"La Tierra disfruta en paz la celebración de el Torneo del Poder. Sin embargo, Goku es consciente de que existen enemigos aún por descubrir en el Universo.");


INSERT INTO `carteleradb2`.`pelicula`
(`idPelicula`,
`nombre`,
`duracion`,
`clasificacion`,
`idioma`,
`genero`,
`formato`,
`sinopsis`)
VALUES
(4,
"Bumblebee",
"2h",
"APT",
"ingles",
"Ciencia Ficcion",
"3D",
"Sexta entrega de la saga 'Transformers', esta vez centrada en el hermano pequeño de los Autobots, Bumblebee");

INSERT INTO `carteleradb2`.`sede`
(`idSede`,
`nombre`,
`direccion`,
`categoria`,
`cine`)
VALUES
(1,
"UVK BASADRE",
"Calle las Palmeras 208,San Isidro",
1,
1);

INSERT INTO `carteleradb2`.`sede`
(`idSede`,
`nombre`,
`direccion`,
`categoria`,
`cine`)
VALUES
(2,
"UVK CENTRO DE LIMA",
"Plaza San Martin,Jr de La Union,Lima",
2,
1);

INSERT INTO `carteleradb2`.`sede`
(`idSede`,
`nombre`,
`direccion`,
`categoria`,
`cine`)
VALUES
(3,
"Cineplanet La Rambla",
"Centro Comercial la Rambla,San Borja",
1,
2);

INSERT INTO `carteleradb2`.`sede`
(`idSede`,
`nombre`,
`direccion`,
`categoria`,
`cine`)
VALUES
(4,
"Cineplanet Alcazar",
"Santa Cruz 288,Miraflores",
2,
2);

INSERT INTO `carteleradb2`.`sede`
(`idSede`,
`nombre`,
`direccion`,
`categoria`,
`cine`)
VALUES
(5,
"Cinemark San Miguel",
"Av La Marina 1123,San Miguel",
2,
3);


INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(1,
"Sala 9",
80,
1);

INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(2,
"Sala 8",
70,
1);

INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(3,
"Sala A",
70,
2);

INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(4,
"Sala C",
70,
3);


INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(5,
"Sala Gold",
65,
4);

INSERT INTO `carteleradb2`.`sala`
(`idSala`,
`nombre`,
`capacidad`,
`sede`)
VALUES
(6,
"Sala Main",
65,
5);

INSERT INTO `carteleradb2`.`funciones`
(`idFunciones`,
`horaInicio`,
`horaFin`,
`precio`,
`sala`,
`pelicula`)
VALUES
(1,
"03:00 PM",
"05:00 PM",
"S/.35",
1,
1);

INSERT INTO `carteleradb2`.`funciones`
(`idFunciones`,
`horaInicio`,
`horaFin`,
`precio`,
`sala`,
`pelicula`)
VALUES
(2,
"06:00 PM",
"07:45 PM",
"S/35",
1,
2);

INSERT INTO `carteleradb2`.`funciones`
(`idFunciones`,
`horaInicio`,
`horaFin`,
`precio`,
`sala`,
`pelicula`)
VALUES
(3,
"08:00 PM",
"10:00 PM",
"S/35",
1,
3);

INSERT INTO `carteleradb2`.`funciones`
(`idFunciones`,
`horaInicio`,
`horaFin`,
`precio`,
`sala`,
`pelicula`)
VALUES
(4,
"11:00 PM",
"01:00 AM",
"S/35",
1,
4);

commit;

