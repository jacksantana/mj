/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiones` (
  `id_re` int(11) NOT NULL COMMENT 'ID unico',
  `str_descripcion` varchar(60) COLLATE latin1_spanish_ci NOT NULL COMMENT 'Nombre extenso',
  `str_romano` varchar(5) COLLATE latin1_spanish_ci NOT NULL COMMENT 'Número de región',
  `num_provincias` int(11) NOT NULL COMMENT 'total provincias',
  `num_comunas` int(11) NOT NULL COMMENT 'Total de comunas',
  PRIMARY KEY (`id_re`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Lista de regiones de Chile';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `region_cl` DISABLE KEYS */;
INSERT INTO `regiones` VALUES 	(1,1,'ARICA Y PARINACOTA','XV',2,4,1),
				(2,1,'TARAPACÁ','I',2,7,1),
				(3,1,'ANTOFAGASTA','II',3,9,1),
				(4,1,'ATACAMA ','III',3,9,1),
				(5,1,'COQUIMBO ','IV',3,15,1),
				(6,1,'VALPARAÍSO ','V',8,38,1),
				(7,1,'DEL LIBERTADOR GRAL. BERNARDO O\'HIGGINS ','VI',3,33,1),
				(8,1,'DEL MAULE','VII',4,30,1),
				(9,1,'DEL BIOBÍO ','VIII',4,54,1),
				(10,1,'DE LA ARAUCANÍA','IX',2,32,1),
				(11,1,'DE LOS RÍOS','XIV',2,12,1),
				(12,1,'DE LOS LAGOS','X',4,30,1),
				(13,1,'AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO ','XI',4,10,1),
				(14,1,'MAGALLANES Y DE LA ANTÁRTICA CHILENA','XII',4,11,1),
				(15,1,'METROPOLITANA DE SANTIAGO','RM',6,52,1);