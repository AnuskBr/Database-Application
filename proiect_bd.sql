-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2023 at 06:54 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiect_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `adrese`
--

DROP TABLE IF EXISTS `adrese`;
CREATE TABLE IF NOT EXISTS `adrese` (
  `id_adresa` int(11) NOT NULL AUTO_INCREMENT,
  `strada` varchar(30) NOT NULL,
  `numar` int(11) NOT NULL,
  PRIMARY KEY (`id_adresa`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adrese`
--

INSERT INTO `adrese` (`id_adresa`, `strada`, `numar`) VALUES
(1, 'Aleea Pelesului', 2),
(2, 'Str. Manastirii', 2),
(3, 'Strada Padurea Dumbrava', 16),
(4, 'Calea Dumbravii', 142),
(5, '5th Ave', 1000),
(6, 'Aleea Durgaului', 7),
(7, 'Strada Salinei', 1),
(8, 'Southern Blvd', 2300),
(9, 'Piri Reis, Tuzla', 297),
(10, 'Porumbacu de Sus', 630),
(11, 'Piata Mare', 4),
(12, 'Washington Ave', 990),
(13, 'Ayvansaray, Kuytu Sk.', 34086),
(14, 'Çakmak Mahallesi', 9),
(15, 'Soseaua Cotroceni', 32),
(16, 'Strada Republicii', 42),
(17, 'Strada Brazilor ', 1),
(18, 'Strada Vadul Moldovei', 4),
(19, 'Strada General Traian Mosoiu ', 24),
(20, 'DJ161, Bontida', 1),
(21, 'Strada Emile Zola', 2),
(22, 'Str. Horea', 23),
(23, 'Curtea Johannes Honterus', 2),
(24, 'Soseaua Pavel D. Kiseleff', 1),
(25, 'Str.Dorobantilor ', 22),
(26, 'Sat Miclauseni', 0),
(27, 'Strada Minei', 44),
(28, 'Str. Salinei ', 12),
(29, 'Na Chom Thian Sattahip', 34),
(30, 'Bulevardul Carol I', 8),
(31, 'Strada Nicolae Teclu', 14),
(32, 'Piata Unirii', 10),
(33, '111th St', 137),
(34, '52st St', 230),
(35, 'Cihangir, Inkilap Sk', 2),
(36, 'Kartaltepe, Sadik Sk.', 8),
(37, 'str. Unirii', 34);

-- --------------------------------------------------------

--
-- Table structure for table `biserici_si_manastiri`
--

DROP TABLE IF EXISTS `biserici_si_manastiri`;
CREATE TABLE IF NOT EXISTS `biserici_si_manastiri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stil` varchar(30) NOT NULL,
  `anul_construirii` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biserici_si_manastiri`
--

INSERT INTO `biserici_si_manastiri` (`id`, `stil`, `anul_construirii`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(1, 'bizantin', 1690, 2, 2, 2),
(2, 'bizantin', 1867, 20, 13, 3),
(3, 'gotic', 1543, 32, 23, 6),
(4, 'gotic', 1840, 30, 21, 6),
(5, 'gotic', 1920, 31, 22, 6);

-- --------------------------------------------------------

--
-- Table structure for table `castele_si_cetati`
--

DROP TABLE IF EXISTS `castele_si_cetati`;
CREATE TABLE IF NOT EXISTS `castele_si_cetati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suprafata` int(11) NOT NULL,
  `an_secol` varchar(20) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `castele_si_cetati`
--

INSERT INTO `castele_si_cetati` (`id`, `suprafata`, `an_secol`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(1, 3200, '1914', 1, 1, 1),
(2, 7600, '2014', 12, 10, 8),
(3, 28000, '1382', 28, 19, 11),
(4, 56128, '1890', 29, 20, 13),
(5, 4200, '1880', 37, 26, 14);

-- --------------------------------------------------------

--
-- Table structure for table `categorii_cazare`
--

DROP TABLE IF EXISTS `categorii_cazare`;
CREATE TABLE IF NOT EXISTS `categorii_cazare` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `tip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorii_cazare`
--

INSERT INTO `categorii_cazare` (`id_categorie`, `tip`) VALUES
(1, 'hotel'),
(2, 'hostel'),
(3, 'pensiune');

-- --------------------------------------------------------

--
-- Table structure for table `categorii_preturi`
--

DROP TABLE IF EXISTS `categorii_preturi`;
CREATE TABLE IF NOT EXISTS `categorii_preturi` (
  `cod_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `denumire` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorii_preturi`
--

INSERT INTO `categorii_preturi` (`cod_categorie`, `denumire`) VALUES
(1, 'adulti'),
(2, 'pensionari'),
(3, 'elevi/studenti'),
(4, 'grup >20');

-- --------------------------------------------------------

--
-- Table structure for table `cazari`
--

DROP TABLE IF EXISTS `cazari`;
CREATE TABLE IF NOT EXISTS `cazari` (
  `id_cazare` int(11) NOT NULL AUTO_INCREMENT,
  `denumire` varchar(40) NOT NULL,
  `id_oras` int(11) NOT NULL,
  `id_tipCategorie` int(11) NOT NULL,
  `id_adresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cazare`),
  KEY `id_oras` (`id_oras`),
  KEY `id_tipCategorie` (`id_tipCategorie`),
  KEY `id_adresa` (`id_adresa`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cazari`
--

INSERT INTO `cazari` (`id_cazare`, `denumire`, `id_oras`, `id_tipCategorie`, `id_adresa`) VALUES
(49, 'Hotel Sinaia', 1, 1, 30),
(50, 'Hotel Apollo Central Sibiu', 4, 1, 31),
(51, 'Hotel Continental Forum Sibiu', 4, 1, 32),
(52, 'Central Park West Hostel', 3, 2, 33),
(53, 'Pod 51 Hotel', 3, 1, 34),
(54, 'La Vie Suits', 2, 1, 35),
(55, 'Royal Inci Hotel', 2, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `continente`
--

DROP TABLE IF EXISTS `continente`;
CREATE TABLE IF NOT EXISTS `continente` (
  `id_continent` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(30) NOT NULL,
  PRIMARY KEY (`id_continent`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `continente`
--

INSERT INTO `continente` (`id_continent`, `nume`) VALUES
(1, 'Europa'),
(2, 'Asia'),
(3, 'America de Nord'),
(4, 'America de Sud');

-- --------------------------------------------------------

--
-- Table structure for table `cont_tari`
--

DROP TABLE IF EXISTS `cont_tari`;
CREATE TABLE IF NOT EXISTS `cont_tari` (
  `id_jonct` int(11) NOT NULL AUTO_INCREMENT,
  `id_continent` int(11) NOT NULL,
  `id_tara` int(11) NOT NULL,
  PRIMARY KEY (`id_jonct`),
  KEY `id_continent` (`id_continent`),
  KEY `id_tara` (`id_tara`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cont_tari`
--

INSERT INTO `cont_tari` (`id_jonct`, `id_continent`, `id_tara`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 3),
(4, 2, 2),
(5, 2, 4),
(6, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gradini_botanice`
--

DROP TABLE IF EXISTS `gradini_botanice`;
CREATE TABLE IF NOT EXISTS `gradini_botanice` (
  `id_gradina` int(11) NOT NULL AUTO_INCREMENT,
  `suprafata` int(11) NOT NULL,
  `nr_specii` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id_gradina`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gradini_botanice`
--

INSERT INTO `gradini_botanice` (`id_gradina`, `suprafata`, `nr_specii`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(1, 52, 8900, 16, 12, 7),
(2, 912, 350, 25, 16, 3),
(3, 400, 800, 24, 15, 3),
(4, 720, 829, 23, 14, 3),
(5, 74, 500, 46, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gradini_zoologice`
--

DROP TABLE IF EXISTS `gradini_zoologice`;
CREATE TABLE IF NOT EXISTS `gradini_zoologice` (
  `id_zoo` int(11) NOT NULL AUTO_INCREMENT,
  `atractie` varchar(40) NOT NULL,
  `suprafata` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id_zoo`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gradini_zoologice`
--

INSERT INTO `gradini_zoologice` (`id_zoo`, `atractie`, `suprafata`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(1, 'red panda', 55, 11, 9, 6),
(2, 'Lup alb', 20, 6, 4, 3),
(3, 'King Vulture', 107, 10, 8, 6),
(4, 'red panda', 10, 27, 17, 3),
(5, 'Dragonul cu barba', 6, 26, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `limbi_oficiale`
--

DROP TABLE IF EXISTS `limbi_oficiale`;
CREATE TABLE IF NOT EXISTS `limbi_oficiale` (
  `id_limba` int(11) NOT NULL AUTO_INCREMENT,
  `limba` varchar(30) NOT NULL,
  PRIMARY KEY (`id_limba`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `limbi_oficiale`
--

INSERT INTO `limbi_oficiale` (`id_limba`, `limba`) VALUES
(1, 'engleza'),
(2, 'portugheza'),
(3, 'romana'),
(4, 'thailandeza'),
(5, 'turca');

-- --------------------------------------------------------

--
-- Table structure for table `monumente_ale_naturii`
--

DROP TABLE IF EXISTS `monumente_ale_naturii`;
CREATE TABLE IF NOT EXISTS `monumente_ale_naturii` (
  `id_monument` int(11) NOT NULL AUTO_INCREMENT,
  `altitudine` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  PRIMARY KEY (`id_monument`),
  KEY `id_obiectiv` (`id_obiectiv`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monumente_ale_naturii`
--

INSERT INTO `monumente_ale_naturii` (`id_monument`, `altitudine`, `id_obiectiv`) VALUES
(1, 452, 14),
(2, 450, 15),
(3, 1470, 40),
(4, 960, 41),
(5, 357, 42),
(6, 195, 47);

-- --------------------------------------------------------

--
-- Table structure for table `muzee`
--

DROP TABLE IF EXISTS `muzee`;
CREATE TABLE IF NOT EXISTS `muzee` (
  `id_muzeu` int(11) NOT NULL AUTO_INCREMENT,
  `tip` varchar(30) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id_muzeu`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `muzee`
--

INSERT INTO `muzee` (`id_muzeu`, `tip`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(1, 'etnomuzeu', 3, 3, 2),
(2, 'muzeu de arta', 5, 5, 4),
(3, 'muzeu de arta', 13, 11, 5),
(4, 'muzeu de istorie', 35, 24, 7),
(5, 'muzeu de istorie', 36, 25, 1),
(7, 'istoric', 49, 37, 5);

-- --------------------------------------------------------

--
-- Table structure for table `obiective`
--

DROP TABLE IF EXISTS `obiective`;
CREATE TABLE IF NOT EXISTS `obiective` (
  `id_obiectiv` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(40) NOT NULL,
  `descriere` longtext NOT NULL,
  `coordonate` varchar(50) NOT NULL,
  `id_oras` int(11) NOT NULL,
  PRIMARY KEY (`id_obiectiv`),
  KEY `id_oras` (`id_oras`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obiective`
--

INSERT INTO `obiective` (`id_obiectiv`, `nume`, `descriere`, `coordonate`, `id_oras`) VALUES
(1, 'Castelul Peles', 'Castelul Peles a fost construit la initiativa primului Rege al Romaniei, Carol I, in afara perimetrului comunei Podul Neagului, localitate cu o suprafata de 24 de km2 in anul 1874, an in care, din initiativa suveranului, comuna primeste numele de Sinaia. Un an mai tarziu, in centrul localitatii sunt construite primele case boieresti, iar in 1876 incepe construirea caii ferate Ploiesti – Predeal, care strabate si Sinaia. Concomitent, intre anii 1873 si 1875 a fost edificata fundatia castelului Peles. Ceremonia de punere a pietrei de temelie a resedintei a avut loc intr-un cadru festiv la 10/22 august 1875.', '45.3600, 25.5426', 1),
(2, 'Manastirea Sinaia', 'De peste trei secole Manastirea Sinaia strajuieste pitoreasca vale a Prahovei, fiind situata in cadrul Masivului Bucegi, la poalele Muntelui Furnica, la altitudinea de 860 de metri, aproape de confluenta raului Prahova cu paraul Peles, la 122 km nord de Bucuresti si la 49 km sud de Brasov. Face parte din orasul Sinaia si are in imediata vecinatate vestitul Castel Peles, resedinta de vara a familiei regale romane intre anii 1883-1947. ', '45.3558, 25.5490', 1),
(3, 'Complexul National Muzeal ASTRA', 'Situat in centrul Romaniei, la Sibiu, Complexul National Muzeal ASTRA este cea mai importantaa institutie etnomuzeala din Romania. Conceput sub egida Asociatiunii Transilvane pentru Literatura Romana si Cultura Poporului Roman – institutie infiintata in 1861 – Muzeul ASTRA – pe atunci Muzeul Asociatiunii – a vernisat prima expozitie in 19 august 1905. Muzeul s-a naascut din dorintta romanilor ardeleni de a-si defini propria identitate etnoculturalaa, in conglomeratul etnic al Imperiul Austro-Ungar si pe fondul emanciparii culturale a tuturor popoarelor din centrul si sud-estul Europei. ', '45.7555, 24.1161', 4),
(4, 'Parcul Natural Dumbrava Sibiului', 'Parcul Natural Dumbrava Sibiului cu o suprafata de 933 ha, se afla la limita sud-vestica a Sibiului, in Padurea Dumbrava, cu o altitudine maxima de 606 m. in Varful Obreja situat in partea nordica a padurii, fiind traversata de Raul Trinkbach, care, in parcursul sau prin aria protejata formeaza trei lacuri de natura antropica.\r\n', '45.7499, 24.1086', 4),
(5, 'Metropolitan Museum of Art', 'Metropolitan Museum of Art este un muzeu din New York situat in capatul estic al Central Park. Exponatele cuprind cronologic de la obiecte din epoca de piatra pana la expozitii speciale ale artistilor contemporani.\r\n', '40.7798, -73.963', 3),
(6, 'Gradina Zoo Sibiu', 'Gradina zoologica compacta cu lac, cu numeroase animale, de la ursi la zebre, plus loc de joaca.\r\n', '45.7618, 24.1240', 4),
(7, 'Pestera lui Bogdan', 'Pestera lui Bogdan este pozitionata in Masivul Piatra Arsa, la o altitudine de 1020 de metri si 6-7 km de Sinaia. Se poate ajunge la ea din Busteni - Poiana Tapului, pe traseul care duce spre Stana Regala, si, apoi, pe un drum forestier nemarcat, Valea Babei, dar „format“ din marcajele naturale, o poteca din copaci cazuti. Drumul duce deasupra unei vechi cariere de calcar, iar la cativa pasi in dreapta, ascunsa in salbaticia padurii, este Pestera lui Bogdan. Intrarea in pestera se afla chiar la limita padurii, nefiind vizibila din cariera.', '45.3772, 25.4866', 1),
(8, 'Salina Slanic Prahova', 'Mina Unirea (Salina Slanic Prahova), situata la o adancime de 208m, pe o suprafata de 53.000mp, a fost deschisa vizitarii dupa anul 1970. Circuitul turistic parcurge un traseu care permite evidentierea unor elemente spatiale de interes turistic in structura interna a masivului de sare, reprezentate prin cute cu dezvoltare pe zeci de metri, marcate prin alternante de benzi divers colorate, cu nuante de gri si alb, diverse caracteristici mineralogice (structura, textura, mod de cristalizare) si prin puritatea deosebita a sarii.', '45.2363, 25.9411', 6),
(9, 'Salina Turda', 'Salina Turda este cel mai spectaculos subteran modelat de oameni, din lume. Salina Turda este printre cele mai spectaculoase atractii turistice din lume. Este subteranul pe care oamenii l-au creat intr-un mediu natural deosebit, in adancul Transilvaniei, sapand in sarea depusa dupa evaporarea marii care acoperea toata regiunea in urma cu milioane de ani. Acum, sarea din Salina Turda ar putea asigura necesarul de sare pentru toata Planeta timp de 60 de ani, daca ar fi cazul.', '45.2293, 25.9366', 5),
(10, 'Bronx Zoo', 'Bronx Zoo este o gradina zoologica din Bronx, New York, Statele Unite. Este una dintre cele mai mari gradini zoologice cu un total de aproape 4000 de animale din aproape 650 de specii pe o zona de 107 de hectare.', '46.6368, -75.6345', 3),
(11, 'Gradina Zoologica Faruk Yalcin', 'Gradina Zoologica Faruk Yalcin este prima gradina zoologica membru EAZA din Turcia. Peste 170 de animale.', '40.7852, 29.3688', 2),
(12, 'Castelul de lut “Valea Zanelor”', 'Castelul de lut “Valea Zanelor” este un proiect privat care-si are inceputurile in martie 2014. Proiectul invaluie unitatea de cazare in regim hotelier, restauranrrt, locuri de joaca si multe alte activitati fauritoare de povesti. Valea Porumbacului, la poalele Muntilor Fagaras, adaposteste un castel construit din materiale naturale. Fiecare camera sau apartament are intrare individual si beneficiaza de magia privelistilor catre raul Porumbacu si Muntii Fagaras.\r\n', '45.6950, 24.4963', 4),
(13, 'Muzeul National Brukenthal', 'Muzeul National Brukenthal este un grup de muzee din Sibiu. Nucleul acestui grup il reprezinta colectiile baronului Samuel von Brukenthal de arta europeana, stampe, numismatica si carti, dar si cladirea ridicata de baron pentru a le gazdui, Palatul Brukenthal. Dupa nationalizare in grup au intrat rand pe rand muzee de profil diferit, cum este Muzeul de Istorie Naturala (1957), Muzeul Cinegetic „August von Spiess” (1966), Muzeul Farmaciei (1972), Muzeul de Istorie Casa Altemberger (1988) si Muzeul de Arta Contemporana (2006). Galeria de Arta Romaneasca in formatul ei actual este de asemenea o aparitie tarzie (2008), dar bazele colectiei acesteia au fost puse in 1950 prin inglobarea fondurilor Muzeului Astra', '45.7970, 24.1507', 4),
(14, 'Canionul Mihaileni', 'Canionul Mihaileni (monument al naturii cunoscut si sub denumirea de \"Rapa lui Brod\" sau Paraul lui Brot), este o arie protejata de interes national ce corespunde categoriei a III-a IUCN (rezervatie naturala de tip geologic), situat in sudul Transilvaniei, pe teritoriul judetului Sibiu.', '45.9805, 24.3533', 4),
(15, 'Calcarele eocene de la Turnu Rosu', 'Calcarele eocene de la Turnu Rosu - Porcesti (monument al naturii cunoscut si sub denumirea de \"Calcarele de la Porcesti\") alcatuiesc o arie protejata de interes national ce corespunde categoriei a III-a IUCN (rezervatie naturala de tip paleontologic), situata in sudul Transilvaniei, pe teritoriul judetului Sibiu', '45.6363, 24.3161', 4),
(16, 'Gradina Botanica Brooklyn', 'Gradina Botanica Brooklyn, ce a fost infiintata in anul 1907 si la amenajarea careia au lucrat multi designeri, printre care si celebrul Takeo Shiota.', '46.7627, 23.5883', 3),
(17, 'Pestera Tunelul Apelor', 'Pestera Tunelului Apelor se afla la o altitudine de 1020m si gazduieste animale precum: ursi, lilieci, lupi.', '45.3987, 25.4936', 1),
(18, 'Central Park', 'Central Park este un parc din Manhattan, New York, deschis in anul 1859. Are 315 ha si este vizitat anual de circa 25 de milioane de persoane. Este considerat cel mai frumos parc din New York. Central Park este un parc urban in Manhattan, New York City.', '40.7837, -73.9659', 3),
(19, 'Parcul Yildiz', 'Parcul Yildiz este un parc urban istoric din districtul Besiktas din Istanbul, Turcia. Este unul dintre cele mai mari parcuri publice din Istanbul. Parcul este situat in cartierul Yildiz, intre palatele Yildiz si Ciragan.', '41.0593, 28.9911', 2),
(20, 'Biserica Sfanta Maria', 'Biserica Sfanta Maria din Blachernae, cunoscuta in romana mai cu seama ca Biserica Vlaherne, denumita si Sfanta Maria Maica lui Dumnezeu, a fost sanctuarul cel mai sfant din Constantinopol.', '41.0593, 28.9911', 2),
(21, 'Parcul Tineretului Turda', 'Parcul Tineretului, aflat in centru langa primarie ste un parc mare iar locul este drept. Sunt locuri de joaca pentru copii: groapa de nisip, topogane, hinta si amenajari pe care copii se pot catara. Puteti sa va plimbati printre copacii maiestuosi, pe marea alee centrala a parcului sau pe digul de pe malul raului Aries. Este un parc in care se poate face jogging, puteti inchiria terenul de tenis de camp al asociatiei sportive Santei sau terenul de fotbal cu gazon artificial.', '46.5652, 23.7990', 5),
(22, 'Parcul Sultanahmet', 'Marele Parc Sultanahmet se afla intre cele mai faimoase monumente din Istanbul, Moscheea Sultanahmet (cunoscuta mai frecvent sub numele de Moscheea Albastra) si Hipodromul din capatul sudic al parcului si Hagia Sofia (Aya Sofya) care marcheaza nordul.\r\nMici gradini plantate in mod formal sunt amplasate intre piete pavate, in timp ce o fantana se afla la mijlocul parcului. In timpul Festivalului Lalelelor de la Istanbul, primavara, gradinile de aici sunt o revolta de infloriri de lalele.\r\n', '41.0593, 28.9911', 2),
(23, 'Gradina botanica Nezahat', 'este o initiativa sociala a Fundatiei Ali Nihat Gokyigit (ANG) care are drept scop conservarea diversitatii biologice si informarea publicului cu privire la acest subiect. Ali Nihat Gokyigit a inceput un program de plantare si reimpadurire pe insule de pamant, format dintr-o intersectie importanta de autostrada pentru a comemora pe raposata sa sotie, Nezahat Gokyigit. In primul rand, solul (care fusese distrus de constructia drumului) a fost imbunatatit, apoi aproximativ 50.000 de copaci si arbusti au fost plantati in suprafata de 32 de hectare. Deschis oficial publicului in 2002 ca parc memorial, in 2003 a devenit Nezahat Gikyigit Botanik Bahçesi (NGBB). \r\n', '41.8390, 29.2959', 2),
(24, 'Gradina Botanica Dimitrie Brandza', 'Are o colectie de orhidee spectaculoasa si cele mai vechi sere tropicale din tara. In total, Gradina Botanica Dimitrie Brandza adaposteste circa 5000 de specii de plante, provenite atat de pe teritoriul Romaniei cat si din alte parti ale lumii, avand o suprafata de 17 hectare si jumatate. Gradina a fost deschisa in anul 1891 si a suferit, de-a lungul timpului, diferite daune majore cauzate, in special, de inundatii si de razboaiele mondiale.', '44.4282, 26.1069', 8),
(25, 'Gradina Botanica Alexandru Borza', 'Inaugurat in anul 1920, splendidul parc din Cluj-Napoca este considerat a fi una dintre cele mai frumoase gradini botanice din Europa. Se intinde pe o suprafata de 14 hectare si gazduieste specii de plante care cresc in mod natural pe intregul teritoriu romanesc, de la crestele inalte ale Carpatilor pana la zonele dobrogene. De asemenea, Gradina Alexandru Borza are cateva sere cu plante tropicale, dar si sectiuni cu specii din flori din Caucaz si din muntii Himalaya. Impresionante sunt si gradina japoneza si gradina romana, decorate splendid cu elemente specifice, prima cu o casuta in stil japonez si cu un parau fermecator, iar cea de-a doua cu vestigii arheologice si cu ornamente din perioada Imperiului Roman.', '46.7731, 23.6387', 9),
(26, 'Gradina zoo Bucuresti ', 'Gradina Zoologica Bucuresti se afla in sectorul 1 din Bucuresti. Parcul a fost infiintat in anul 1955 sub forma unui serviciu al Sectiunii Gospodariei Comunale din cadrul Sfatului Popular al Capitalei.', '44.5176, 26.1044', 8),
(27, 'Gradina zoo Brasov', 'Gradina zoologica veche pe 10 hectare, cu vedere unica in cusca leilor, casa a reptilelor si loc de joaca.', '45.6513, 25.6331', 7),
(28, 'Castelul Bran', 'Castelul Bran este un castel din Bran, la 25 de kilometri sud-vest de Brasov. Este monument national si reper in Transilvania. Cetatea se afla pe partea transilvaneana a granitei istorice cu Tara Romaneasca, pe drumul DN73.', '45.5152, 25.3673', 7),
(29, 'Castelul Banffy', 'Arhitecturile baroc, renascentiste, romanice si neogotice ale acestei constructii sunt atat de spectaculoase incat a fost denumit „Versailles-ul Transilvaniei”, fiind deopotriva cunoscut drept „cel mai bantuit loc din Romania” (nu ridica neincrezator spranceana ratiunii inainte sa vezi cu ochii tai ce si cum). Se spune ca fantomele faptase care baga vizitatorii in sperieti ar apartine de drept celor care au murit in timpul celui de-al Doilea Razboi Mondial, cand cladirea a jucat rolul de spital militar. Ei, oricare ar fi adevarul, nu s-a auzit de niciun petrecaret de la Electric pe care l-a trimis acasa frica de fantome.', '46.9450, 23.8137', 9),
(30, 'Biserica Romano-Catolica Franciscana', 'Manastirea si Biserica Romano-Catolica Franciscana (Piata Muzeului nr. 2) reprezinta unul dintre edificiile cele mai vechi si semnificative din oras. Initial, pe acest loc a existat o biserica romano-catolica mai veche, prima din Cluj, ridicata in secolele XI-XII, dar distrusa in timpul primei invazii a tatarilor (1241). Dupa distrugerea acesteia, pe locul ei a fost ridicata in perioada 1260-1290 o biserica in stil romanic tarziu, refacuta in secolul al XV-lea in stil gotic.\r\n', '47.8033, 23.5539', 9),
(31, 'Sinagoga Neologa', 'Sinagoga Neologa este un lacas de cult mozaic din municipiul Cluj-Napoca, situat pe Str. Horea nr. 21 (mai demult Zsido Utca, \"Ulita Evreilor\"). In prezent este cunoscut si sub denumirea de Templul Memorial al Deportatilor Evrei.\r\n', '46.7774, 23.5869', 9),
(32, 'Biserica Neagra', 'Biserica Neagra este biserica parohiala a comunitatii evanghelice luterane din Brasov, situata in centrul municipiului Brasov. Cladirea gotica a fost partial avariata in incendiul din 1689, cand zidurile ei s-au innegrit si a primit numele actual.', '45.6411, 25.5881', 7),
(33, 'Pestera laptelui', 'Pestera Laptelui din Poiana Brasov este deosebita prin peretii de culoare alba. Denumirea pesterii vine de la mineralele care acopera o suprafata intinsa a peretilor, care sunt de o consistenta asemanatoare cu laptele, de culoare alba. Pestera se afla la o altitudine de 1350 de metri, pe versantul nordic al masivului Postavarul, in apropiere de Poiana Drester, pe traseul dintre vechea trambulina de schi si Partia Bradul.', '45.5910, 25.5647', 7),
(34, 'Pestera Rasnoavei', 'Pestera Rasnoavei este situata in Muntii Postavarul, aproape de localitatea Rasnov, judetul Brasov.Este situata in Muntii Postavarul, aproape de localitatea Rasnov, judetul Brasov.\r\n', '45.5757, 25.4891', 7),
(35, 'Muzeul Antipa', 'Muzeul National de Istorie Naturala Grigore Antipa este un muzeu din Bucuresti, amplasat in Soseaua Kiseleff nr. 1. Patrimoniul muzeului este format din peste 2 milioane de piese, grupate in diferite colectii zoologice, paleontologice, de minerale, roci si etnografice.', '44.4537, 26.0842', 8),
(36, 'Muzeul Locomotivelor cu abur', 'Muzeul Locomotivelor cu Abur este un muzeu din Sibiu. In cadrul muzeului sunt expuse motoare si locomotive cu abur. Un alt muzeu cu profil identic din Romania este Muzeul Locomotivelor cu Abur din Resita, a fost sub sechestru in anul 2016.', '45.7970, 24.1668', 4),
(37, 'Castelul Sturdza din Miclauseni', 'Castelul a fost construit de familia Sturdza, una dintre familiile romanesti bogate, cu descendente seculare nobile si una dintre putinele care isi permiteau sa imbrace modele occidentale la inceputul secolului 20. Daca atunci cand te gandesti la trecutul tarii ti se perinda prin fata exclusiv o plebe de oameni muncitori, deloc straini de stramtorarile vietii si carora le place cam prea mult sa-si fericeasca zilele cu vin din recolta proprie, in Castelul Sturdza o sa ti se infatiseze cealalta categorie – personaje ale lui Caragiale care isi schimbau de doua ori pe zi tinutele comandate de la Paris si care raspundeau cu „biensûr, on mange dans quelques instants”, cand erau intrebati despre ora mesei. ', '47.0970, 26.9234', 9),
(40, 'Cheile Zarnestilor', 'Cheile Zarnestilor (monument al naturii) alcatuiesc o arie protejata de interes national ce corespunde categoriei a III-a IUCN (rezervatie naturala de tip geologic) situata in judetul Brasov, pe teritoriul administrativ al comunei Moieciu. Aria naturala se afla in extremitatea sudica a judetului Brasov (aproape de limita teritoriala cu judetul Arges), pe teritoriul vestic al satului Magura, in imediata apropiere a drumului judetean (DJ112G) care leaga orasul Zarnesti de localitatea Pestera.Rezervatia naturala cu o suprafata de 109,80 ha, a fost declarata arie protejata prin Legea Nr.5 din 6 martie 2000, publicata in Monitorul Oficial al Romaniei, Nr.152 din 12 aprilie 2000 (privind aprobarea Planului de amenajare a teritoriului ', '45.5286, 25.2663', 7),
(41, 'Muntele Tampa', 'Tampa (in maghiara Cenk, in germana Zinne, alternativ Kapellenberg) este un munte care apartine de masivul Postavaru, localizat in sudul Carpatilor Orientali (mai precis in Carpatii de Curbura) si inconjurat aproape in totalitate de municipiul Brasov. Muntele este alcatuit in principal din formatiuni calcaroase formate in urma procesului de incretire a scoartei terestre. Inaltimea maxima atinsa este de 960m (dupa unele surse 995m), la aproape 400m deasupra orasului', '45.6375, 25.5929', 7),
(42, 'Cheile Baciului', 'Cheile Baciului alcatuiesc o arie protejata de interes national ce corespunde categoriei a IV-a IUCN (rezervatie naturala de tip mixt), situata in judetul Cluj, pe teritoriul administrativ al orasului Cluj Napoca.', '46.7795, 23.5200', 9),
(43, 'Pestera Liliecilor', 'Pestera Liliecilor adaposteste, asa cum explica si denumirea zeci de specii rare de lilieci si tocmai de aceea este lasata la indemana turistilor oricand ar fi dispusi a o vizita, devenind astfel un veritabil punct de atractie pentru zona branenilor.\r\nChiar daca este inca neamenajata, aceasta este cunoscuta de mai toti localnicii din zona, acestia fiind mandri sa indemne turistii intr-un asemenea loc, o atractie din punctul lor de vedere. Pestera se afla situata la o altitudine de 950 metri, in satul Pestera, ce apartine comunei Moeciu. Potrivit documentelor care ii atesta originea in zona, aceasta, se pare,  a fost cunoscuta inca de mai bine de cateva secole.\r\n', '45.5078, 25.2925', 7),
(44, 'Salina Praid', 'In Dealul Sarii, la poalele muntilor Gurghiului ne asteapta Salina Praid. Baza de agreement amenajata in interiorul salinei are toate dotarile necesare: sistem de iluminat, wireless si televiziune, terenuri de joaca pentru copii, capela ecumenica, cafenea, cinema 3D.', '46.5512, 25.1208', 12),
(45, 'Salina Targu Ocna', 'Una dintre atractiile turistice din perimetrul orasului Targu Ocna este Salina din Targu Ocna. In cadrul acesteia gasim amenajata o sala de spectacole si conferinte, un spatiu destinat expozitiilor fotografice, o pista de carting, sala de calculatoare si internet, mese de tenis si billiard si jocuri electronice. Cu siguranta nu te vei plictisi in Salina Targu Ocna.', '46.2880, 26.6035', 11),
(46, 'Gradina Tropicala Nong Nooch', 'Gradina botanica tropicala Nong Nooch este o gradina botanica de 500 de acri si o atractie turistica la kilometrul 163 de pe Sukhumvit Road din provincia Chonburi, Thailanda. Se poate ajunge cu autobuzul, taxiul sau transportul terestru privat. ', '12.7657, 100.9351', 13),
(47, 'Cascadele Iguazu', 'Una dintre minunile naturale ale lumii, cascada Iguazu se afla in punctul in care Brazilia, Argentina si Paraguay se intalnesc. Seria nesfarsita de cascade se intinde pe 3 kilometri, fiind astfel cel mai mare sistem de cascade din lume. Nu mai putin de 275 de cascade iti vor oferi o experienta fascinanta.\r\nPe langa admirarea acestor cascade turistii au optiunea de a se plimba cu barca foarte aproape de caderile de apa, precum si de a face drumetii in padurea tropicala care le inconjoara.', '-25.6944, -54.4367', 14),
(48, 'Parcul Pasarilor Iguassu', 'Aflat in proximitatea Parcului National Iguazu, Bird Park a fost infiintat in 1994 in scopul ocrotirii speciilor de pasari tropicale aflate in acest areal. Printre speciile vedeta ale parcului se gasesc 37 de specii de Toucan, o mare varietate de papagali si chiar minusculii colibri. Parcul ce se intinde pe o suprafata de aproape 5 Ha este alcatuit din specii de flora tipic subtropicale. Turistii, ornitologii, fotografii sau ecologistii au extraordinara oportunitate de a urmari, studia si fotografia circa 160 de specii de pasari indigene si din alte zone ale lumii in habitatul lor natural. O serie de specii sunt expuse in 8 voliere uriase in care sunt reproduse intocmai conditiile habitatului din care provin. In parc pot fi urmarite si specii de caymani, serpi si fluturi multicolori din zone tropicale. Facilitatile parcului sunt completate cu un snack-bar si un magazin de suveniruri.', '-25.6829, -54.4548', 14),
(49, 'Muzeul Memorial „Alexandru Ioan Cuza”', 'Monument istoric si arhitectural construit in perioada 1800 - 1811 in stil neogotic, dupa planurile arh. Johan Freiwald. A fost castel al familiei Sturdza (1811 - 1862), resedinta domneasca a lui Al.I. Cuza (1862 - 1866), in continuare castel al familiei Cuza (pana in 1895), apoi a apartinut familiei Moruzzi-Bratianu. Intre 1936 - 1944 a functionat Spitalul TBC al CFR, fiind distrus in 1944.', '47.2663, 26.8512', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orase`
--

DROP TABLE IF EXISTS `orase`;
CREATE TABLE IF NOT EXISTS `orase` (
  `id_oras` int(11) NOT NULL AUTO_INCREMENT,
  `nume_o` varchar(30) NOT NULL,
  `nr_atractii_turistice` int(20) NOT NULL,
  `id_tara` int(11) NOT NULL,
  PRIMARY KEY (`id_oras`),
  UNIQUE KEY `id_oras` (`id_oras`),
  KEY `id_tara` (`id_tara`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orase`
--

INSERT INTO `orase` (`id_oras`, `nume_o`, `nr_atractii_turistice`, `id_tara`) VALUES
(1, 'Sinaia', 50, 1),
(2, 'Istanbul', 71, 2),
(3, 'New York', 150, 3),
(4, 'Sibiu', 15, 1),
(5, 'Turda', 35, 1),
(6, 'Salnic', 11, 1),
(7, 'Brasov', 500, 1),
(8, 'Bucuresti', 400, 1),
(9, 'Cluj', 304, 1),
(10, 'Iasi', 500, 1),
(11, 'Targu Ocna', 10, 1),
(12, 'Praid', 6, 1),
(13, ' Chon Buri', 600, 4),
(14, 'Argentina', 1000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `parcuri`
--

DROP TABLE IF EXISTS `parcuri`;
CREATE TABLE IF NOT EXISTS `parcuri` (
  `id_parc` int(11) NOT NULL AUTO_INCREMENT,
  `tip` varchar(30) NOT NULL,
  `anul_infintarii` int(11) NOT NULL,
  `suprafata` varchar(20) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  PRIMARY KEY (`id_parc`),
  KEY `id_obiectiv` (`id_obiectiv`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parcuri`
--

INSERT INTO `parcuri` (`id_parc`, `tip`, `anul_infintarii`, `suprafata`, `id_obiectiv`) VALUES
(1, 'rezervatie naturala', 2000, '933', 4),
(2, 'urban', 1880, '1', 19),
(3, 'urban', 1859, '315', 18),
(4, 'urban', 1965, '1', 21),
(5, 'urban', 1700, '6', 22),
(6, 'rezervatie naturala', 1984, '67620', 48);

-- --------------------------------------------------------

--
-- Table structure for table `pesteri`
--

DROP TABLE IF EXISTS `pesteri`;
CREATE TABLE IF NOT EXISTS `pesteri` (
  `id_pestera` int(11) NOT NULL AUTO_INCREMENT,
  `lungime_max` int(11) NOT NULL,
  `formare` varchar(30) NOT NULL,
  `altitudine` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  PRIMARY KEY (`id_pestera`),
  KEY `id_obiectiv` (`id_obiectiv`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesteri`
--

INSERT INTO `pesteri` (`id_pestera`, `lungime_max`, `formare`, `altitudine`, `id_obiectiv`) VALUES
(1, 46, 'calcar', 1020, 7),
(2, 167, 'calcar', 1021, 17),
(3, 175, 'calcar', 1350, 33),
(4, 390, 'calcar', 1956, 34),
(5, 162, 'calcar', 950, 43);

-- --------------------------------------------------------

--
-- Table structure for table `preturi`
--

DROP TABLE IF EXISTS `preturi`;
CREATE TABLE IF NOT EXISTS `preturi` (
  `id_obpret` int(11) NOT NULL AUTO_INCREMENT,
  `id_obiectiv` int(11) NOT NULL,
  `cod_categorie` int(11) NOT NULL,
  `pret` varchar(11) NOT NULL,
  PRIMARY KEY (`id_obpret`),
  KEY `id_obiectiv` (`id_obiectiv`,`cod_categorie`),
  KEY `cod_categorie` (`cod_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preturi`
--

INSERT INTO `preturi` (`id_obpret`, `id_obiectiv`, `cod_categorie`, `pret`) VALUES
(1, 3, 1, '35 RON'),
(2, 3, 3, '15 RON'),
(3, 3, 4, '7 RON'),
(4, 3, 2, '15 RON'),
(5, 35, 1, '20 RON'),
(6, 35, 2, '10 RON'),
(7, 35, 3, '5 RON'),
(8, 36, 1, '2 RON'),
(9, 5, 1, '$30'),
(10, 5, 2, '$22'),
(11, 5, 3, '$17'),
(12, 13, 1, '35 RON'),
(13, 13, 3, '9 RON'),
(14, 13, 2, '15 RON'),
(15, 16, 1, '$15'),
(16, 16, 2, '$8'),
(17, 25, 1, '15 RON'),
(18, 25, 3, '7 RON'),
(19, 24, 1, '5 RON'),
(20, 24, 3, '2 RON'),
(21, 24, 2, '2 RON'),
(22, 46, 1, '500 baht'),
(23, 46, 3, '300 baht'),
(24, 1, 1, '50 RON'),
(25, 1, 2, '25 RON'),
(26, 1, 3, '12,5 RON'),
(27, 12, 1, '20 RON'),
(28, 28, 1, '25 RON'),
(29, 28, 2, '15 RON'),
(30, 28, 3, '10 RON'),
(31, 29, 1, '8 RON'),
(35, 37, 1, '20 RON'),
(36, 37, 3, '15 RON'),
(37, 37, 2, '15 RON'),
(38, 11, 1, '395 TRY'),
(39, 11, 3, '195 TRY'),
(40, 11, 2, '215 TRY'),
(41, 6, 3, '5 RON'),
(42, 6, 1, '10 RON'),
(43, 6, 2, '5 RON '),
(44, 10, 1, '$39.95'),
(45, 10, 3, '$29.96'),
(46, 27, 1, '20 RON'),
(47, 27, 3, '10 RON'),
(48, 27, 2, '10 RON'),
(49, 26, 1, '15 RON'),
(50, 26, 3, '7 RON'),
(51, 26, 2, '7 RON'),
(52, 8, 1, '45 RON'),
(53, 8, 3, '30 RON'),
(54, 8, 2, '35 RON'),
(55, 9, 1, '50 RON'),
(56, 9, 2, '30 RON'),
(57, 9, 3, '30 RON'),
(58, 44, 1, '50 RON'),
(59, 44, 3, '35 RON'),
(60, 45, 1, '45 RON'),
(61, 45, 2, '40 RON'),
(62, 45, 3, '35 RON'),
(63, 2, 1, '5 RON'),
(64, 2, 3, '2 RON'),
(65, 32, 1, '20 RON'),
(66, 32, 2, '15 RON'),
(67, 32, 3, '15 RON'),
(68, 31, 1, '10 RON'),
(69, 31, 3, '5 RON'),
(70, 31, 2, '5 RON');

-- --------------------------------------------------------

--
-- Table structure for table `programe_de_vizita`
--

DROP TABLE IF EXISTS `programe_de_vizita`;
CREATE TABLE IF NOT EXISTS `programe_de_vizita` (
  `id_program` int(11) NOT NULL AUTO_INCREMENT,
  `zile` varchar(30) NOT NULL,
  `ora_deschidere` time NOT NULL,
  `ora_inchidere` time NOT NULL,
  PRIMARY KEY (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programe_de_vizita`
--

INSERT INTO `programe_de_vizita` (`id_program`, `zile`, `ora_deschidere`, `ora_inchidere`) VALUES
(1, 'l-d', '08:00:00', '18:00:00'),
(2, 'l-d', '09:00:00', '17:00:00'),
(3, 'l-d', '09:30:00', '16:00:00'),
(4, 'j-ma', '10:00:00', '17:00:00'),
(5, 'mie-dum', '09:00:00', '16:30:00'),
(6, 'l-d', '10:00:00', '16:30:00'),
(7, 'l-d', '10:00:00', '17:00:00'),
(8, 'j-d', '10:30:00', '17:30:00'),
(9, 'mie-dum', '10:00:00', '18:00:00'),
(10, 'l-d', '10:00:00', '17:30:00'),
(11, 'm-d', '09:00:00', '16:00:00'),
(13, 'l-d', '10:00:00', '19:00:00'),
(14, 'l-d', '11:00:00', '18:00:00'),
(15, 'l-d', '08:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `saline`
--

DROP TABLE IF EXISTS `saline`;
CREATE TABLE IF NOT EXISTS `saline` (
  `id_salina` int(11) NOT NULL AUTO_INCREMENT,
  `adancime` int(11) NOT NULL,
  `id_obiectiv` int(11) NOT NULL,
  `id_adresa` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  PRIMARY KEY (`id_salina`),
  UNIQUE KEY `id_adresa` (`id_adresa`),
  KEY `id_obiectiv` (`id_obiectiv`),
  KEY `id_program` (`id_program`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saline`
--

INSERT INTO `saline` (`id_salina`, `adancime`, `id_obiectiv`, `id_adresa`, `id_program`) VALUES
(3, 208, 8, 7, 5),
(4, 120, 9, 6, 2),
(5, 120, 44, 27, 15),
(6, 240, 45, 28, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tari`
--

DROP TABLE IF EXISTS `tari`;
CREATE TABLE IF NOT EXISTS `tari` (
  `id_tara` int(11) NOT NULL AUTO_INCREMENT,
  `nume_tara` varchar(30) NOT NULL,
  `Cod_ISO_moneda` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tara`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tari`
--

INSERT INTO `tari` (`id_tara`, `nume_tara`, `Cod_ISO_moneda`) VALUES
(1, 'Romania', 'RON'),
(2, 'Turcia', 'TRY'),
(3, 'Statele Unite ale Americii', 'USD'),
(4, 'Thailanda', 'THB'),
(5, 'Brazilia', 'BRL');

-- --------------------------------------------------------

--
-- Table structure for table `tari_limbiof`
--

DROP TABLE IF EXISTS `tari_limbiof`;
CREATE TABLE IF NOT EXISTS `tari_limbiof` (
  `id_tara` int(11) NOT NULL,
  `id_limba` int(11) NOT NULL,
  KEY `id_tara` (`id_tara`,`id_limba`),
  KEY `id_limba` (`id_limba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tari_limbiof`
--

INSERT INTO `tari_limbiof` (`id_tara`, `id_limba`) VALUES
(1, 3),
(2, 5),
(3, 1),
(4, 4),
(5, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biserici_si_manastiri`
--
ALTER TABLE `biserici_si_manastiri`
  ADD CONSTRAINT `biserici_si_manastiri_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biserici_si_manastiri_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `biserici_si_manastiri_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `castele_si_cetati`
--
ALTER TABLE `castele_si_cetati`
  ADD CONSTRAINT `castele_si_cetati_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `castele_si_cetati_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `castele_si_cetati_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cazari`
--
ALTER TABLE `cazari`
  ADD CONSTRAINT `cazari_ibfk_1` FOREIGN KEY (`id_oras`) REFERENCES `orase` (`id_oras`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cazari_ibfk_2` FOREIGN KEY (`id_tipCategorie`) REFERENCES `categorii_cazare` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cazari_ibfk_3` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cont_tari`
--
ALTER TABLE `cont_tari`
  ADD CONSTRAINT `cont_tari_ibfk_1` FOREIGN KEY (`id_tara`) REFERENCES `tari` (`id_tara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cont_tari_ibfk_2` FOREIGN KEY (`id_continent`) REFERENCES `continente` (`id_continent`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gradini_botanice`
--
ALTER TABLE `gradini_botanice`
  ADD CONSTRAINT `gradini_botanice_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gradini_botanice_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gradini_botanice_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gradini_zoologice`
--
ALTER TABLE `gradini_zoologice`
  ADD CONSTRAINT `gradini_zoologice_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gradini_zoologice_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gradini_zoologice_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `monumente_ale_naturii`
--
ALTER TABLE `monumente_ale_naturii`
  ADD CONSTRAINT `monumente_ale_naturii_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `muzee`
--
ALTER TABLE `muzee`
  ADD CONSTRAINT `muzee_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `muzee_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `muzee_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obiective`
--
ALTER TABLE `obiective`
  ADD CONSTRAINT `obiective_ibfk_1` FOREIGN KEY (`id_oras`) REFERENCES `orase` (`id_oras`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orase`
--
ALTER TABLE `orase`
  ADD CONSTRAINT `orase_ibfk_1` FOREIGN KEY (`id_tara`) REFERENCES `tari` (`id_tara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parcuri`
--
ALTER TABLE `parcuri`
  ADD CONSTRAINT `parcuri_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesteri`
--
ALTER TABLE `pesteri`
  ADD CONSTRAINT `pesteri_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preturi`
--
ALTER TABLE `preturi`
  ADD CONSTRAINT `preturi_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preturi_ibfk_2` FOREIGN KEY (`cod_categorie`) REFERENCES `categorii_preturi` (`cod_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saline`
--
ALTER TABLE `saline`
  ADD CONSTRAINT `saline_ibfk_1` FOREIGN KEY (`id_obiectiv`) REFERENCES `obiective` (`id_obiectiv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `saline_ibfk_2` FOREIGN KEY (`id_adresa`) REFERENCES `adrese` (`id_adresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `saline_ibfk_3` FOREIGN KEY (`id_program`) REFERENCES `programe_de_vizita` (`id_program`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tari_limbiof`
--
ALTER TABLE `tari_limbiof`
  ADD CONSTRAINT `tari_limbiof_ibfk_1` FOREIGN KEY (`id_tara`) REFERENCES `tari` (`id_tara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tari_limbiof_ibfk_2` FOREIGN KEY (`id_limba`) REFERENCES `limbi_oficiale` (`id_limba`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
