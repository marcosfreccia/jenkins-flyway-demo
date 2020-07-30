/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE Country (
  iso_country_code varchar(2) NOT NULL,
  country_desc varchar(15) NOT NULL,
  iso_country_code_3_digit varchar(3) DEFAULT NULL,
  standard_status varchar(1) NOT NULL,
  PRIMARY KEY (iso_country_code)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;