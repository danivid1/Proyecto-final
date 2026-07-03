CREATE DATABASE sitio_profesional;
USE sitio_profesional;

CREATE TABLE servicios (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_servicio VARCHAR(100),
    descripcion VARCHAR(255),
    precio_estimado DECIMAL(10,2)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    tipo_cliente VARCHAR(50),
    proyecto_realizado VARCHAR(150)
);

CREATE TABLE solicitudes (
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    servicio_interes VARCHAR(100),
    mensaje VARCHAR(255),
    fecha_solicitud DATE
);

INSERT INTO servicios (nombre_servicio, descripcion, precio_estimado) VALUES
('Consultoría Técnica y Diseño', 'Modelado de soluciones estructurales y análisis de viabilidad para proyectos multidisciplinarios.', 2500.00),
('Gestión y Desarrollo de Software', 'Estructuración de bases de datos locales y diseño de interfaces funcionales.', 4000.00),
('Investigación Aplicada', 'Desarrollo conceptual enfocado en la integración de nuevos materiales y tecnología.', 3500.00),
('Optimización de Procesos', 'Automatización de flujos de información y control de inventarios críticos.', 3000.00),
('Diseño de Identidades Tecnológicas', 'Maquetado estructural de arquitecturas web destinadas a la divulgación científica.', 1800.00);

INSERT INTO clientes (nombre_cliente, tipo_cliente, proyecto_realizado) VALUES
('Taller de Logística Automotriz', 'Empresarial', 'Sistema informático a medida para gestión de inventarios críticos y servicios.'),
('Comité de Movilidad Estudiantil', 'Educativo', 'Herramientas de diagnóstico para análisis de hábitos de transporte y auto compartido.'),
('Laboratorio de Desarrollo Técnico', 'Investigación', 'Estructuración documental de arquitecturas web para divulgación de materiales avanzados.'),
('Innovación Sostenible S.A.', 'Empresarial', 'Consultoría técnica para la optimización de recursos energéticos.'),
('Colectivo Tecnológico Comunitario', 'Particular', 'Diseño e implementación de una interfaz de control local.');

INSERT INTO solicitudes (nombre, correo, servicio_interes, mensaje, fecha_solicitud) VALUES
('Ana Martínez', 'ana.mtz@mail.com', 'Consultoría Técnica y Diseño', 'Me interesa coordinar una consultoría para un proyecto estructural.', '2026-06-15'),
('Carlos Gómez', 'carlos.g@mail.com', 'Gestión y Desarrollo de Software', 'Necesito un sistema de control de inventario local para mi taller.', '2026-06-18'),
('Sofía Rodríguez', 'sofia.r@mail.com', 'Investigación Aplicada', 'Quiero conocer más sobre la investigación en biomateriales y su impacto social.', '2026-06-20'),
('Luis Hernández', 'luis.h@mail.com', 'Consultoría Técnica y Diseño', 'Solicito análisis de viabilidad para un sistema mecatrónico.', '2026-06-22'),
('Elena Pineda', 'elena.p@mail.com', 'Gestión y Desarrollo de Software', 'Requiero optimización de flujos de información en una base de datos existente.', '2026-06-25');

SELECT nombre_servicio, precio_estimado FROM servicios;

SELECT * FROM clientes WHERE tipo_cliente = 'Empresarial';

SELECT * FROM servicios WHERE precio_estimado BETWEEN 2000.00 AND 3500.00;

SELECT * FROM solicitudes WHERE servicio_interes LIKE '%Software%';

SELECT * FROM solicitudes ORDER BY fecha_solicitud DESC;