/* Necesito Crear El Query Nuevamente, Pero Ya Tengo La Base De Datos De Forma Local */
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

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Canada", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);

INSERT INTO viajes (id, titulo, precio, fecha_ida, fecha_vuelta, imagen, descripcion, disponible, slug, created_at)
            VALUES (NULL,  "Italia", 50000, "2021-06-24", "2021-06-30", "roma", "Lorem ipsum dolor sit amet, 
            consectetur adipisicing elit.Eaque praesentium accusamus id nesciunt molestias expedita quas.", 32, "viaje-italia", NULL);