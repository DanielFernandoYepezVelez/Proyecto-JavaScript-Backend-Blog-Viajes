CREATE DATABASE agencia_viajes;

USE agencia_viajes;

CREATE TABLE IF NOT EXISTS viajes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (30) NOT NULL,
    precio INT NOT NULL,
    fecha_ida VARCHAR (15) NOT NULL,
    fecha_vuelta VARCHAR(15) NOT NULL,
    imagen VARCHAR(100) NULL,
    descripcion TEXT NOT NULL,
    disponible INT NOT NULL,
    slug VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia");

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Canada", 60000, "2021-07-19", "2021-07-19", "canada", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 25, "viaje-canada");

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Grecia", 40000, "2021-08-29", "2021-09-15", "grecia", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 18, "viaje-grecia");

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Inglaterra", 80000, "2021-09-22", "2021-10-03", "londres", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 22, "viaje-inglaterra");

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Rio De Janeiro", 50000, "2021-04-16", "2021-04-25", "rio", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 23, "viaje-rio-de-jainero");

INSERT INTO viajes (titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug)
            VALUES ("Francia", 75000, "2021-04-03", "2021-04-10", "paris", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 14, "viaje-francia");

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (50) NOT NULL,
    email VARCHAR (50) NOT NULL UNIQUE,
    message TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;