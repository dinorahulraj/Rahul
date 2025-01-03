CREATE DATABASE  IF NOT EXISTS `kulr` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kulr`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: kulr
-- ------------------------------------------------------
-- Server version	5.0.17-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `aname` text,
  `apass` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('cloud','cloud');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `okey`
--

DROP TABLE IF EXISTS `okey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `okey` (
  `oname` text,
  `okey` text,
  `dt` text,
  `task` text,
  `current` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `okey`
--

LOCK TABLES `okey` WRITE;
/*!40000 ALTER TABLE `okey` DISABLE KEYS */;
INSERT INTO `okey` VALUES ('manju','0w5s0j0i2z1h6c6n4j4d2b5p1e0d6n1d','14/06/2016','New','Current');
/*!40000 ALTER TABLE `okey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkg`
--

DROP TABLE IF EXISTS `pkg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkg` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkg`
--

LOCK TABLES `pkg` WRITE;
/*!40000 ALTER TABLE `pkg` DISABLE KEYS */;
INSERT INTO `pkg` VALUES ('pkg','pkg');
/*!40000 ALTER TABLE `pkg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `reqby` text,
  `reqto` text,
  `fname` text,
  `stat` text,
  `okey` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES ('tmksmanju','manjunath','KeyGen.jsp','[B@2f8116','5p8i1y1z4m8h3h7u8n2n8s3i8b9y1t2c'),('Vasu','manju','connect.jsp','[B@9300cc','0w5s0j0i2z1h6c6n4j4d2b5p1e0d6n1d');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretkeys`
--

DROP TABLE IF EXISTS `secretkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secretkeys` (
  `fname` text,
  `dt` text,
  `aeskey` text,
  `stat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretkeys`
--

LOCK TABLES `secretkeys` WRITE;
/*!40000 ALTER TABLE `secretkeys` DISABLE KEYS */;
INSERT INTO `secretkeys` VALUES ('KeyGen.jsp','14/06/2016 15:24:55','[B@1f0b7d3','User'),('connect.jsp','14/06/2016 17:20:48','[B@dfcb47','User'),('NUpdate.jsp','14/06/2016 17:21:30','[B@1c1c92b','User');
/*!40000 ALTER TABLE `secretkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stateless`
--

DROP TABLE IF EXISTS `stateless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stateless` (
  `si` int(10) NOT NULL auto_increment,
  `fname` text,
  `sk` text,
  PRIMARY KEY  (`si`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stateless`
--

LOCK TABLES `stateless` WRITE;
/*!40000 ALTER TABLE `stateless` DISABLE KEYS */;
INSERT INTO `stateless` VALUES (1,'KeyGen.jsp','[B@1f0b7d3'),(2,'KeyGen.jsp','[B@e5355f'),(3,'KeyGen.jsp','[B@10e434d'),(4,'KeyGen.jsp','[B@c06258'),(5,'KeyGen.jsp','[B@2f8116'),(6,'connect.jsp','[B@dfcb47'),(7,'NUpdate.jsp','[B@1c1c92b'),(8,'connect.jsp','[B@425743'),(9,'NUpdate.jsp','[B@15b8520');
/*!40000 ALTER TABLE `stateless` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `uname` text,
  `utype` text,
  `fname` text,
  `sk` text,
  `task` text,
  `dt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('manjunath','Owner','KeyGen.jsp','[B@1f0b7d3','Upload','14/06/2016 15:24:55'),('tmksmanju','User','KeyGen.jsp','[B@2f8116','Download','14/06/2016 15:40:16'),('tmksmanju','User','KeyGen.jsp','[B@2f8116','Download','14/06/2016 15:40:50'),('manju','Owner','connect.jsp','[B@dfcb47','Upload','14/06/2016 17:20:48'),('manju','Owner','NUpdate.jsp','[B@1c1c92b','Upload','14/06/2016 17:21:30'),('Vasu','User','connect.jsp','[B@9300cc','Download','15/06/2016 17:27:58');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `fullname` text,
  `username` text,
  `pword` text,
  `email` text,
  `mobile` text,
  `address` text,
  `dob` text,
  `gender` text,
  `otype` text,
  `userpic` longblob,
  `ownerkey` text,
  `okeyupdation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('manjunath','manjunath','manjunath','tmksmanju13@gmail.com','9535866270','#223,Rajaji nagar,Bangalore','05/06/1987','Male','Owner','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0Ã\0Ž\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(\0ª×\Zµ½¥¼“M*CK¹ÞF\nª1Ô“Æ=úUšüËÿ\0‚~Ñþ)oÚ3\\ðî«-¾™¡Áo\rŒmÖâÖeÊÌ@ËI‚$Rzü§‚|\\û9†Y…úÌâå­’]ßwÑ¾I”K1Ä}^2QÒí¾Ë·™õOÆŸø(ß‚~I-†ˆÒxŸUˆr-Ø%¬?ïÈzÿ\0ÀU«æ?‰ÿ\0ðQOøæB–Úö©êšhIÿ\0_õ¯•.üp’\0‰0@…Xÿ\0^£ñªž/?ßjüg2ãŒv)´çÉÑÓñÜýW.á)òsK»×ðØõüQ¿×®~Ó¨ßßÝÏ[‰Ùßþû,_õ¬)¼|Ð}ÂÃþò¼ÞûÆ{z»V5÷Žuv?—ø×ÉTÌÜÝÞ¾§ÓRË”U’·¦‡¦ê4ïÙõlÖ¯ñäûÅû…ÿ\0\nóKâ	þûŸËükžÔ¼vç±?KÆÊNí¿½šÇ’²ÿ\0/Èõ\rWâ¶?xOûÙoæMs×ŸL-æ+2Kýõ‡ÿ\0¾ŽkËµˆºHß¥sZ‡e|á¤ý?Æª™÷ÃŸV|\'ÿ\0‚|Qøp?°|e«Kd8:~¢âòÑ¿ÝG$Çÿ\0\0a_j~Ê¿ð_O	ø÷S³Ðþ\'é§Â7×\'ËMfÙüÝ2Gþì€ñp}ëñ‹PñuÃtv¬kÿ\0Lû’beØv\0_CýáíÇÖ¾—*âlÃ$éTn?Êõ_‰ó¹§\ràqq½X%.éYþõ{¢x’ÃÄšM½þŸwo{cv‚X. IÊFAV\\‚>•v¿%¿àÚ¿Û]i<[ðWV»žitÈˆ44›‚A¹\"¸rr”ü®ÄàŒWëM~í”fQÇac‰Šµ÷]ŸSñ¼×/–<4í³îžÌ(¢Šô<(¢Š\0+ó7þý–5]WÀÞøçáT–ß[ð›\rb[`L§O‘Ã,Œ1ó,RçƒÑfsí_¦Uç¿î¬àøi}¦Þ[E{¼c-¼Ê$ŽXÝ0áê6\r¿ŽkÃâ:jåÕc]Ú)_æµ_‰ëä8Š´qô§E]ÞÖîžÿ\0üôø;öµÒu£—‰­n4Ûsý¡§Ä&‰×ûò[äF\'Ú»=3P·ñ¥Ÿáÿ\0h:óÏkÁß÷ÄÁô¯¢?j/ø!.‡ãû¹5O…úì~»y<Ã£êæÓ‰ÿ\0¦r¨2ÃôÃŠø“ãüã÷Áö•®¾jZÕ¬òõ¡lÔc§”|ÏÒ¿\0©“Â¶­?T~áO6öz_äÏ@ñ6â›½[„xÚ;/æÂk~(¹±m·Kg=¥ùë^){ñÆŸu±Í¨x«Â—Ÿóë,×V-ÿ\0~Ûµ¬¿o/‰\ZJí‡Ç7N¿ÝÅ üÙMa]\'%òOõGGö÷÷WÞÿ\0ÉÕÿ\0ˆåcÄª?àB±õ\rTI“ÿ\0uÁþµÌß~Þ“ïxšß>ÖVÍü’²îÿ\0n8çÅÿ\0gÇ÷mícÿ\0ÚuÑG†Ýþ\'÷O=z{‹ï:ÉÝË²%–Ið¨Üß¤Ô<;ªÁoæÏ§ÞÚÃÿ\0=g…¢‹þû`õ®fÃÆßþ*ÇåØKñ;_Oîéky4÷Ä_\'þ;]‡ÿ\0àŸ´Äi~ÑgðÃÇ’¹ÿ\0—B³¿ç1ºéäqŽò9eœÊV´LíEYÍF1uÚwÒ³¯/:Õ-wáæ¿ðCâ¯ˆ¼%â[Y4½{B‘!½¶Þ­ä³\"¸ºÃ½U½»>´TÁªsäAW´Š‘ô_üÛãÜ¿?à µù%¶k	¥Ýí#/oy˜]O°i¾€÷Pôèd\n yý8Í_ÛW:Â^ØÊm®-%Ií\\”t`ÊO§ t¯ë§áO‹âøðÓÃÚôežsKµ¾Bqó,±+ƒÇ³\nýOjZ…J7Ñ4×ÍÀ?8ãH^­:«ªkî·ù5Q_x|@QE\0W†þÐÚóÝxÞÊÐäYA»ûìrOýòãš÷*ù¿ãÓIñORG$˜äU@•ñ<yˆ”2øÁ?ŠI?Mÿ\0Cêø:‚©Žrf-þKõek¸’;Vöž]Ö3+±xº=:ç¬\'UÏ^kjÎãë_žàåm·ÆG˜ßKkí<ÛÜÁÔ_óÎTVOËÒ³î~øWé¾ð]æ?ç¾‰m/þ††¬ÙÞSšÐ†ÿ\0Œd×Öa1JÍ7ˆ¡&÷9Gý˜¾Øÿ\0©øyàXÿ\0ÝÐ-þÓ§Úx@ðßü‚ô=#Nÿ\0¯k(aÿ\0ÐVº;«ðÃ‚k.ò_qXc1Þ&ØjRO]L»É\Z/ºIÏ¯Ëƒ¨ã;”oqùÕ¯¨9n†¹ÿ\0jqhút×W£ŠÞ6•óŒªª–?¾C+³éðGóÕûoøœø£öôø×©3+D|Swd>_Ü!Hõùc^µåw—‡®MOãß7‹üiâ=qåQý·¬Ýê+°ÃùÓ3“‘ìGãX7ÁðƒØƒüëºT9ª_Ñ}É*Ü±H—T¼ÛdrkúÃÿ\0‚}É$Ÿ°OÁ˜°œøCó7ýì>çß5ü‘jrÏ=›,hòHÙ\ZŒ¼§Œ*Žå‰\0{šþÄþø?†?¼á¨x<?¡Úi¨Oñ`Hÿ\0öZûžÃ¸Ê¤ºY/ÄøÎ+ª¥\nQó’;\Z(¢¾ìøÀ¢Š(\0¯š~5¹±ø³©™°ÌŽ1Ü2óèkéjð?Ú»Fm?Ä:vª¬0ýžR:îÑˆ¯‰ãì<ªežÒ?bIü¶ýQõÜYG1öoíÅ¯žô9+Kr­k;Î\'5Êiú†;šÔ³¼8ë_’á1\'éXœ1ÔZÞã#&®Ç¨m9$šæ ¾ÁêMXþÓ¦½Ê8ë-Ï\"¦ïcbkÿ\0r3Tîï	ÅP{ðzU¦Ô3ÜŒÖ5±×[—K	g°ûËÁêkÂ?o¿jþý“|s>…e¨j~\"Ô,—¥[[@ÒË5Õä‚Ú,ÑCÈ7EUbqÆ}~òðúÖ.§vÐë\"ï\0Œ·¨ÁÇ\'‡wëÁ¯¦))©=m­»žÅ+å²>ýˆ¿à^ø-á»oüP·¶ñ‰šÑé/†°Ó@û¨Ý<ÇõzÙÿ\0‚¤|ð¯Œ¿d]~X´-6ÊûA.¬.m-cãù‚í;dsúWÖ>\'Õ£eŒ•S¢ãjëŒò~µò·üwÇá¿ÙÆòª¬Ö·þ¤Gù¾Áõa[à±5«b#9=Øb¨R§BJ(üÃÿ\0‚f|“ö•ý¿~x@#ùW^&µ¾»`£Û°¸lî‹õíÍ[ñÄ\"UU\0*p£ÐWá\'ü\ZûKâ?‹þ6øë©@Ë§xrÒOèÁÁ)-ÝÁŽ[©Ð÷1F¨€Ž?ÒåÂ3û»_¸äg†çþm~]ÇóüG>!A?…[çÔ(¢Š÷(¢Š\0+‘øÍàãï‡÷ÖJˆn|ÛrIùew8+®¨Ò…HÁÈù½ëN\ZzR£U^2V3l=yÑ«\ZÔÝœ]×ÈøžÇU¼‘Ê’E,LC£€1÷³ôï[6zÅ]§í[ðR{;¹¼Y¢[–F]úŒ(¤œŽ|ÕP_â3Íxµ‡‰<ÅVÅHÝøzûþ5üí›äõ²ÌL¨OT¶}\ZèÏÝ2¬Ò†c‡U¡¿UÙõG¡Cª¹5/ö‡¹®Bß^WèÆ¬ÿ\0o\'©¯=bdŽç†C¦:Ž:“UeÕ3–¬9µäþñª\"DêÌi:Ó{8x­Í«ÝIGV5Ëk^ 	Õ˜ÖV±â£VfúW/¬ø…§ÿ\0V^O÷y§\n.Nò*uc’$×õß:]ˆÄŸn•òWü_C×|ið{Á\r¼+`ú§Œþ,øž×H°³\0’ñ ó$<rª&Ž’09è9úóÂ:¼áØ‡\'‚¼–Ó¦3ô5ïÿ\0³Ïìi¤~Ñ|Zñ@K­wFÒ‹á«7Ë&“§}Üç™¥+\Znv4eÏÎqõ<5—K…8/v:ÉöÓO¼ùÎ Ì!„ÂJ¬¾)içÿ\0\0ï¿`ŸØßMý†?dÿ\0ü5Òç‚î_iêšúEåJõÏ™qqŽÁæio`@í^ÕEû¬ £ìÆg7)9KvQEQ!EÃp¡ˆÉ%qŸlÐØ˜ßŠã~0~ÐÞøá‡ÕüW¬Ûiƒî	eœÿ\0v43Ÿ÷Aõç¶Ÿí¥£~Ê~Ëê^-Ô—\Zy~1ÿ\0=$Ç+õ\0ŸjüøÛñ—Äücq¯ø‹Ržÿ\0S¸;A–8û‘®p‹ì¸ú×äüuâ–#›ÁaR©ˆê¯îÇüMnü•¼Ú?cðçÂ<_Ácñ²t°Ý½é÷åOdžŽNþIôúûâ×ü­|e·…<+èA±q}©H\Zyõˆv©ú³\nÒ¶¾Òþ,èx“Â—q\\­òy‹nµC±Ÿ¸ÿ\0ìšüñm«ecŒŸROò®ÛàŸÆ]wà^¸“in²éÏ&û›˜´sûÿ\0²ÿ\0í\nüVˆ¸¬f!ÿ\0kÔç‹ÚÉ{½ì—M®·ÓC÷ÇÂœ\rl’Ÿ$âµ»oŸÕ¶ìûZËÉn¾¼I¥¼‰r^	\"ûèãk\'ÔéRœá“ýãMøkûHøãM”V—³ÚØßËÖ\rED3÷$nó®Å¾éÚ˜Íœ—	÷L‘ÿ\0ßUõ´£B´yðòS^ZŸ—b#_QÑÅAÂ]š·ÝßÕ„ž1ßÒFFóÄÒŸ»æ?û£5ÛÉð%âêb?‰ÿ\0\nXüg spUûÌßÏ¬ùáƒ‹æêp0Øj\ZŸHÙ¿:ê|3àì-L×#Œu.qñü3Y8ý¤üð¢sÖ·a%âõµ¶ÍÅÂýQ2WñÅ|ïñöñÔüF¢éÂÆ1ÿ\0-î[-øF	Uü	¯7›aéizjÿ\0ÚËòf)þâ›~oE÷Ÿkü&ý¥>ü#ñ|Qw%„ÑCuq³\'¾ÑÎ\núçÁ_´OˆÞWÐuK=[M¹Raº´LÇN3Ï·Zþw¼]âOÅºÛ5+û»«‘Ýß+ùWmû9~×þ6ý˜|@—ÞÕ®-v&ƒe½ÚúI@#ÙvŸö«ÝáÏa—µ‡t£Õ¯Õô~†Yïƒu1ðuÖ!ªý_»Ó¥÷^º¯&@âpA8lÖŸ_4þÄ¿ðQ\nþÖ¶‘i³¼z/Œ#‡|ÚkËº;ýèXýáì@ojúGík‚@<uäq_¾eY¶2ÃÇƒšœUÓÉ­Óî™üóœdØÜ¯,>›„ãÑõ]\ZkFŸF‰h¢Šô0+ƒøÿ\0ñ³Mø	ð¯Tñ>¨ÛØD|¨®e\'÷q®HÉ\'ô»–œ(wWæ§ü—ö‚›Æ-üi8M\'Â¡f¸(Ù]¸\'\rí\Z…ÌÌ=ÏÆq÷¬‡(©_÷`¿¼öù-[ô·Sîü7áÄ™å,¿†½ê´o6ÚŠõ¿CæŸ‹?õ¯Œÿ\0¯¼M®]õ-E÷>8XWþy\'¢×\'%‚¿@*æáê*-ÃÖ¿„qšÕêÊµy7)6Û{¶õmŸè}%\Z£B„Ta’Kd–‰%èSû\nú~•ØWûµ¥”÷¨VTmÄB÷àgó¥\"8d¶>[*;úîóÎ\rµÒxoÇþ#ðw:^¿«ÙîGtþ_ýòI¬]éžG÷±…üÍH%±•uÑ­ˆ¤ïI¸¿+¯ÈçÄ`pÕãËZšóJ_ÎÆÚOâ½<e¯ßÕÿ\0âkŽñ/5ÏsªkZ¶¢?¹5Óù÷Ê‘PÇEf£Ÿþ½G\"è+¡æXºŠÓ«\'ë&ÿ\0S‚]EóQÃÁzE/ÐÂ—NHáÆ¨Š½Qô^\0üwU«0Ã]Ðj«% n€V°©æiRŽ–Z#˜ºÒ7t³¦Ñû`Wc%†î›j¤š`~€Wm,E´8g‚æw1<âkïë0_X\\ÝÙ]Z¿Öò•–)=Tÿ\0	÷ý+õçþ	Åÿ\0·ý¦¼7†üOq^4´„˜å *jñ§\r \\ñ\"œn^ž„×äÌša€ V×ÃÏê¿\r|Qc«éwóÙßéÒ­Å¼ñ<n¿wþê;÷¯±áN/Äd˜Åˆ¤ïñÆúIòK£ù3â¸Ë€°ÜC—¼%uËR7tçmbû…½×ÍY£úûBà\r>¼£öGý  ý¦~hÞ)_*éPÛê6ñ°+mt‡l€{gg:t¯_Ø8m,]bh;Âi4üš¹ü)À×Ábja11å98ÉviÙÿ\0™ÌüRñí¯Ã‡\Z×ˆ¯­¶‡a5ëãˆI*2@,q€	$t¯ÄOx¦ëÇ^*Ô5­RWšÿ\0T¸{Ë†ÎCÈí¹‡Ó°¯Ó¯ø+7ÄVðwì§q`Žâm~þ\"d¥q×¦ùc¼{×ó/Ž¹¬ëf42ø¿vœyŸø¥ÿ\0~,þ¶ú9ä‘£•b36½ê³å_á‚ý[q?šÞµšÞµóíLÃzŠü-Pgôc‹Û`l­÷O÷¿Ï½zïìéûx³öˆ·“PˆE£è{¶6£ql™½\"%‡¹\0{ÖGì‹ðMh?Z^‘vÒ.•nw©²ÿ\0*@ò½‰ÏëÒ¿O¬4{}N†ÊÆ4·³·_*(HÓûªÝß­~¥À<O5OŽ¿²‹²Kí;]ßû«EÝô?ñ7Äz¹+Ž_—¤ëI]Éê¢žÖ]dí×Dµ>gÒ?à•^\rOê\"ñ<÷ß·x`OûçaªÚ‡üÂ·_ê¼Yâ?ôÚÞ	¿ ¯ªÕKg\0‚xÁô÷?JkH«Ðƒøãù×ì/€²_ªÇÿ\0&ÿ\03ð•âG)sýr_tmø£âÿ\0Á*õ}.ÎY|5â+MXÅÿ\0.·¶Ím#}wWË¾6ð^¯ðãÄ—:F»as¥êV­±à0sêàqÇ½~ÁI3\nƒ#”!J‘–\\ãüƒ^AûcþÎv_´GÃ;Bž&Ò iôË•2ÿ\0,ã-±æ¾OŠ</ÁÎ„«åiÂq×–í§ä®ÝŸg·F}ßxÅŽ†*3¦§Nv\\öIÆïv’I®ýmªÚÏóGŒI•ô4ÙwArÐº²H„†ŒqŠO4z×àê•éU+ÁïMòSÚ—Ï†£Ü}kHÑ“&è—Ê‹Ò™öxýçQùßZ_3ÜV±£&&Ï±¿àŽÿ\0&ð?Æûï]Î©¦ø¶ÛÎ†6n—±WèdÌ\'óÍ=ñú…_ÿ\0~#]ü-ø•¢øžÐfóCÔa¿ƒØÀ²Ÿª‚¿F5û¿áÏYx¯@±Ôìdó¬µæÞA‚$Ô2°ú‚+úoÁœáÖËj`*;º-5þk§¤¯÷ŸÇŸHX\\âŽiN6Uãgþ8uùÅÇæ™ùóÿ\0³ñ³Éãxn9`µ¸ÔdˆHëgÿ\0!Ê?àUð¾ãë_Mÿ\0Á_<BúŸís\'v•£ÙÚ©ÏL™&ÿ\0KÏÒ¾`óÇ¡¯ÃüEÄ<Wbê=m.Uÿ\0n¤¿OÄþ†ð¯°|)¥kÃ™úÍ¹þRCüÏqIç}jÇÖ—x÷¯ÏÐî}ÿ\0–Ò€½ñž¢ˆ…cŠÖÙ¾öIvçÛ\n3_iïõòOüZÈEð»Å—…~[­YbO_’0pïàüëë:þ¤à\n>Ï\" »¦þù3øÛÄÚþ×‰qRìâ¾èÇõ¹ñŸüB‰÷?tÛ¯Éá¨ìQ­Î’Õgù÷ï	–Ï+ŒŽÇ¥|ùÅïŒžá5ÏZÿ\0½çŸæ\Z¿SÞW„‚€¢¼ÃƒŸSƒó®)²¹ÿ\0\\Iú…?ÌW™›ðÅã\'Œ¥ŒœÝí½¼•¤[!ñ*žOWNª¦­}~¾ìµùžCûxãÆ>?ø§j6K§ÕÄðC,ÑyS\\B3µÙOBrqøW±<­ól\nŒ6Ã©õÏµ5\\åK($uù¹úŽöù~\rá°ÔèNnn)&ÞîÝYùÖe‹†+W\njšœ›å[Fý¡ùûDéÐh¿¼iemÇ®±uQí%•7exê+Š.ËÀ©_¼	Æßÿ\0U~°üCý–>|VÖ.uxCGÔ/îÇïgÃÃ$Œ:1e æ¿4?hÿ\0Ø|,øóâÏhòMýŸ¤Þ{u›å¨PÝ{žkùó‹¸?•Íâ§(Ê›µ®ž·’M>–Ðþ«à>=ÂçPŽ\n”jS„oÍk;Z-¦›{Ùê—Ï§ç/½rûÕ]Íê)<Öõ¯;Ÿ£s2ÎáëP} ûÓ|Öõ¦Õ*}…ÎI!Þ0+öWþ	¯ñ¾ þÅ>—lúm‘Òä@û;Ôø\0NµøÇ¼ûWê\'ü#Åo¨~Î^#Ódfs¤x‚QêeŠ7þy¯Õü#­*9Ó¤¿åä\Zù«5ù3ðï°J¯\rÇÖ•H¿”¯ø´|wÿ\0&ÖdÕmo¼ŒXY]A÷U‰xŽáê+Ô?nÛÿ\0·~Ø¿fbvjHðzáU@þF¼›ÍoZüïˆW>k‰›ëRúS_¡ú§	ÁSÉ0t×JT×þI9}èó—ÞªîoQIæ·­yQ§sÞægèÇü®ÄY~Í×R²îk­zéò¼‚Á Aùüü~–¯‘à“aºøm¯x`¹kÝ?P:„Qñ“‰fëž	ú5}i“–”Áã#Ö¿§x2qžI†pé?U{þ\'ñˆjÓâZª­y¶½\ZV>_ø±ÿ\0DÐ>|PÔü?oáíOTƒJ¸{Y.DÂ/1ÓïÎ3|U]/þ\náàÙ¿ãóÃZý¡öxßù¸®ïâ¿ü×áçÅï^k×Ñë6\Z®¤ÞmÓØÞyqË/vØAwzàu/ø$ƒ$ÿ\0/ø’×ýô‚_æµàâèñ„kMÐ”%Ý¶VWÓu}ªÀVà\n˜zk\n±¨¢¹·zÙ_Tí½ÎOÿ\0‚§ü-½ÿ\0X|Gkÿ\0]lÿ\0èÕî?¾(h¼#e¯xnú=GJ¿,±N ¨Ü½Pƒ‚ðî+äm[þÿ\0nãËÇmÿ\0_6`ÿ\0è-_I~Í_³Ý‡ìãð²ÛÃv·—:œs-íåÔÍƒ<¯×\n8Uàt÷¯[‡ëññ­8ÆÝZ÷ÓMó<N*Âp<$jdU§*®KÝ•ÚåÖïXÇÊÚü™èUùûQkÛ?´—ŽîU‹	µë¥R}Œ£ô¿Z5Ýj×ÃzMÕõÜé­œRM3çˆÖ?¼Nkñ“Åþ!ÿ\0„›Åš¾¥—Q½žéwcp#0Ï¾¯œñBqö8z=nßÉ%þgÙx%BøœV!­c›wýWyö¨÷Z‹Ì÷ÜŸQ_ª}‘ýí	÷Z7Z­æ{Š<ÏqU‹™yžâ¿DàƒzÄ³Cñ>À°1£i—J§±qrŒò\Z×çFO¨¯»ÿ\0à„Z«¯Åoˆzz6Ö›I³—žùsHþ­}—\0ÉÃ> ×^e÷Â_­Ìü\\§íxKŸE÷T‹üœ¿m¢Ò~ÖÊŒï×.súzf¼±œ¯\\Wèwü‡öKðŒµë¯iqÿ\0dxŽSºéÑÙîØõf^p~•ùû«èsi·ÂÍ²Á÷Ò3¹‡áÖ¹¸Ç…ñùf2¥|T³œ¤ÔÖ±÷¤ÚMý—®ÒÕÙÚëS8ç)Î0p¸Z–­F.ÒWŒRm/µ7‹vºæ³Ð§¼ûT{­DÒ2>ÖV\réŽiªw\Z­|¢‡K£©uGiðSã>±ð\'â.âm\Zb—–L±ˆîcþ(ÛÛÒ¿L¿gÿ\0Û#Á´.Š[LÕm,uo/7Z]ãæ†OA¸…+ô\'é_’þg¸¥ŠCWY¦ŽxþìŠØaô#~µõ|5ÅXœ¡¸Á)Aï½v‡sàøÇp9òU&Ü*ÅYM$Ý»I;&¾i®‡íäˆÑ²=È_çŠ@U¹VVüqüëñŸCøéãO\rø—ø¯ÄVõÃT?“\né4ÿ\0Û3â¦ÿ\0þ?ñ4Ÿõñxn?ônúûøx—…·¿BWòhü¢¿‚˜ÿ\0ùuŠƒõR_’gë«†Oácú:lòÇmé$ŽûÕ“RÀø×ån•ÿ\0øÏ§}ï\Z´ßõÓL³ý¥\\—Ä_ÚÃâOÅkam¯xÃS½²}–?.Òÿ\0z8UU¿*Þ¯‰8KÓ¥6üùRûï/ÉœÔ|Í]Dª×¦£Õ®i?ºÑüÑôÿ\0ü;öæÒµïáßƒu»–r!Öu† ÿ\0—doâÝüGù×ÄY>¢ªË1‘H,ÍÇP\0ö·×“Oó­~_›æuóLKÄ×Ó¢Kd»~lýÓ†ø{	’àÖ\n¼Û{É÷vÓk+tH—Ì÷yžâ«å½GëQý û×›\Z¼Ùgæõ7Ì>µÚ½4HJîõÅh©ÌN·ÆFkíø!NªöñT*Xyþ’\\Fà·V ê>n£Ö¾iýž?eþÒþ0MÃ\ZrÉ&ß2[«‡òí­Óûîàø\0[Ú¿\\?cø\'ç…¿c}[(WÄÚ¸·¾Õe%\ZDÊ±Ž5ä${•NÑýÑ_ ø{âñ•<u8þî›ÖODÝš²Ñß]íµ¬Úgä/qv[ƒÉ«å5\'Í^ªIAZëTù¥üªÛuwVMjd~×Ÿnu½2y-£i½\0Î•~UþÑß³O‰­üMs}mö‹+¥û²ÄJ2~=ÿ\0\Zýç¼±Šý6M\ZHžŒ3^_ñ7öRÐüo0ZÇ,½ÇÀü«ú*¥(T‹„Òi«4öhþ4¥VtæªSm4îšviŸ‚IâÍwÃè!ñšÚŠùon¾\\¿—õ­{;Ý?ÅÞf›p²0ÿ\0–lvIùWé¯Åïø&Œ£ý\ZÎüÿ\0_1üLÿ\0‚fÞÙÝyY:Ÿï+ÿ\0÷Ðùžuá^WŠn¦ºí`ßø^‹þÝqK±û?xãžeÖ¥˜[OûÚM/ñõÿ\0·”›î|Ëq–²laÉúúÔ{›Ðþuéz¯ì§âß	Gå#\\\\ÁýÛ„,<W1©|/Ö´¼yš|ÍŸîà×æyŸ‡yÞ\r¶©ª±]`úwqzŸ¹d~1ðÖb”gUÑ›éSE)$ãoWär¾{z\Z_5½jäú\rÕ¿Þ¶˜À\rR\nGQþöWùâ¾V¾¥	rWƒƒí$×æ~ƒÌpØ¸©á*Æ¢}c%%÷¦ÄûA÷£íÞ˜SoÞ`?3ü©åêäjTbu=7¼{Ñæ·­F®¡_ÌT‘DeèP}XSŒSv[±NJ*òÐO=½\r\"ã<¯™-ÊÇÒ9dÿ\0uI¨f“]ÔOüJôÆ·oùë>¿.•ôo	æ¸æ½…“ë/u~\'Åç~\"pöVšÄâ¢ä¾Ì<¾è½<¯eæ‹’Æ¶–Þ}Ô±YÁÿ\0=\'m‹ù×5Ç½-oìšVoþ~\0‹ùÿ\0J¸Ÿ³GŠ~ ]oÔ¤¸ºOùç#ýñŒW©ü(ÿ\0‚zÝê\'q±v>žYùWéÙ…¸z-UÍ\'íò­!ózJ^–IùôüŠüvÆb”°ù$½9ÝKy%xÇÖïä}1û|^¿´³´‚Ö‰7o*Š³zžy>ÿ\0¥~ |/ñš÷‡‘ä`î½ëáÙö0Ô¼\" ¾W_½þ÷‡<,žÒ¸!›¹Ö¿T¥J ©ÓIF*É-Kd—Dº#ðZõêV©*µ¤å);¶ÝÛ}[}[îoQE¡Ðä0\nÇ×´Œo´·oª\n( 0ñÏ€4[Ÿõšu³ÀkÇ¼aðÃÃÜÄ¢Ïþø¢Š¨niA\'Z)ž5âï‡š$yÛ¦ÛÀ×âŸ…¾»Ç›£Ø¿Ö:(¬êENuc%t­dúniZr£MN“å}Öð8à÷†afhŸîîÈÖ\\ÿ\0</ÇüJ-ÿ\0ï§ÿ\0\Z(¯:9Fs—==·Šÿ\0#ÒÅq.oJöXª‘½öœ—nÌ‚†zqý—k¡ÿ\0\ZÐ´øc Ð*×ò?ãE¦	B*PQ~I/Èóó,Ï^¬cZ¬¤»97Û»:?|>Ñrâ[lqí^‡áO…þ9ÿ\0‰MŸýóEÕNM¶›8å\'í§ŠÖG±xá‡ñÿ\0 ›?ûâ½çáÏ4{3û­>Ù>‹E©G­hÚ|\0ˆbHÁôv5ñEÿÙ','5p8i1y1z4m8h3h7u8n2n8s3i8b9y1t2c','15/06/2016'),('tmksmanju','tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#123,Rajaji nagar,Bangalore','05/06/1987','Male','User','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0Ž\0o\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(;Ä¾,Ó|£]ê:µí®›§ØÆe¸º¹•b†%™˜€\0I5ðíÿ\0×ðƒõyô¿†ú$þ1¹…Ê6«rÿ\0fÓãþYðd—¸Uã†5çðp/Ž¼Iyã¯x\"\rnÏJðæ«c%ûZ^jpéðj—).Í»¥tY\n)B·³Œó_i?/4À×^\Z»âýDæºŠèúŸÆ?ðUŽ_g‘£ñM¯†­dÎ-´}:s÷¤•d—Tu®Rý¨¾\'kÏºëâŒ¤n¬F«2dý€®DÐUcûN—#ž‚=JÚOýCZ­ ÜZ©g·‘Uy,0ÊG®FE-Ìnëtt0|{ø…îÿ\0„óÆLÝ‰Ö®?ñúì<\rûq|døm\"K¦øÿ\0Z˜FÛšßRÙ¨A(þë	•˜RŒ§Þ¼º8ÊdqR4…ôµ[N‡è§ìƒÿ\0sÒþ&øšÃÂÿ\0ì-ü7­ß¸¶´Ôàsýy)8TmÇ0»mÉel¸+íx¦YPr\r?ºš!FY,L@!Ž3’õô¯Ø/ø&wÆËÏß²Fw©]µæ¯¡³è×³9%åxÔv\'«4{	=É4Ä}EŠ\0(¢Š\0(<QMvÚ(å?ø*·ì»à?ÛCá†ðÿ\0Ç\ZOö¬×ßÚqO†«)JîŠQÊ3\n{Ü+á‹_ø7cà¤ƒì·¿,@íµ§ï-Ø×èoÆmOûgã5øf->Þ+0=È27þ†¿¬­ƒ+ãs}U‰—³•’Ðúì¿Iáãí#võ>!Óÿ\0àƒ?t‚¾½ñ (ê¯©Ùß• ?­tZwüká‚¢Ýmaâ9î@ÿ\0]6½rÿ\0ßª?õÌ‘‚ÝOJÅñuäv¶ŒHØaGzó§˜×jîlô©àpéé|Añö->ó\'ðF­x®œ¶«Þ=ÌçøVfHÛÐ–eç‘ŽGÎz÷Ç=/ÃW—Vz…®«kªX9†æÒH1$:†9ÛÜA ‚à×èOŒœÄ`¶s’3jüêÿ\0‚”hh?\Z´RòŽ³¦l¸\0à;Ã!ñêV@¤ú\"zW¡‘æõg_êõ]Ó<Ìë,¥\n^Þšµ;øƒñ†ëÅÚ”o™milÂD‹w$ƒÕ­~¸Á<puo\0øÿ\0G$4iwc¬BàˆZ6éöpàUø‹s®ÅÌX€që_­Ÿðnï‰?´µ¿Àý‡­[\0õòæeòjû3äÕ:(PEP\0x˜Ü Ï\'öèj9ÔúÎ¦NÀ|­ã=WwÅ»8\'ûBE9=6€£ô¦W¶eËL¸ÿ\0dó^Oñ{\\–ÇãŒ yXõy¸Î0~†¡±ñX0 c_˜b±V¯(ù³ôl÷—’=SPñ4J‡f?3\\_ŠµŸ=Ëo-ÔÖ,Þ+Ý7óŸZÁÖ¼I½[ççžõÉR­ô;£K±CÅ\Z€>OZø[þ\n#ðwÆ?¾*ø^ÓÃ\ZbOmi§Ì÷WÓÈ!·¶-\"íV~I\'npŸ¥}…â=s(ÙoÖ¸_ÝnÓdŸ$3ËÜ;qœýj0øÇ†«í¡«A_E/e=™ù±ûO~Ë~1ýœ</i®j—:n©¢ÞH-ÞîÊW\"Þ\\}ÖV\0€ppq_¨ßðmœ÷‹â]IƒƒÃöQ†íûÙÇæ¾Wý»îá&ý”uŸ(S}â]^ÆÒÇ#8e“Ìš@=’}õ¯Òø çìñ/ÁoÙ9õk¸\Z+\\G<!ƒöHcòá8ì	ÞÃÔ8¯Ñr,m\\VÔ«¹ðYÖžìél}Ü´‹Ò–½£È\n(¢€èj9yARR¥&çwíŸž\ný§üH„\0ºŠÁ¨GÏPÐ…?øôo\\¯‹ÿ\0\0÷¯mÿ\0‚¶xm+Wð¿Œa„½¼¨ú=Ó€­Ì±dûþðWÈpø³½_”gPt±µ\"×šùŸ§d³U°k¦Ÿqê’ø·+÷ÿ\0QXúŸŠÏÍŸÆ¸sâÏÝýãÉ¬Ûßo\'çé^Tªžš‚GA¯xŒº7$c=ëÅ:Êiÿ\0\ZêS•7EøŽÐžƒ“÷{zÖæ·.£uÏ1Ø«Ý‰àVíãàÏ\nÚØDÊ&µƒCÏ˜Ã¯áÉüª¡ï+²j;-Cý‡à>*ý³|eãiw¾ø}Ý§Ø\\ƒ÷‘gqP‡‘æ7¹Œ(Î	¯×¿xf×ÂÚ­œQÛÛYÄ°Åh#E\0*€:\0\0®ö=ñ8ñ¿ìÅà=WpÞèVŒÎV(?¨5éã_°`#aá\ZjÊÉŸ”c*N¥yJ£ÖâÑEÖs…Q@“Š°40gœþÔ­þ>üÖü36Ô–òö²Ÿùc:|Ñ·Ð0ö&¿¼Kg¨ø\'Ä×ú>§Ö:Ž—3[ÜÛÈ0ÑÈCíŽsÐ‚zýÃÖ5«MOžîòx­-­Ð¼³Lá5I\'€+ó3þ\n{áÚWâz—‚íM¶¯gŠïWrV\rUTaFÀ2Bãýaç`ŽkçóŽÄæ¾ÁFòŽþk(â:{öx™Z/ó>a}yúnÇéUnµÀ¼–#žN+KþãÇçËÛáö˜Kœ²¥Ôe7Ü3‚AŠ?áYkÞŒÏ{ö)ÇLq*þ$lSî¯Í«ajÐ©*UãË%ÑŸ¡áñ4«ÁU ï³/h×¶ÿ\0ì?¶u<¹Tý‚Õ†§20ì9¯ø©â‹ê²ÝÝ3ÌJ¨=¥wž0‘¤žFy$•ØežG.ì}I?çúy—‹z¶k8´ýÔjÒ¾§é¯ü«þ\náø¿g˜|	âý@i7ž¸6¶Ws«n`r]T¸VRHçæ¿C´]~×_Óãº²¹‚îÚQ¹%…Ã£b8¯ÁŸÙ+Â÷¶IfÄë-ì†WÈ<äàô\0~f¾þøec¬ü3Óí®4\rNãH¾*²H#ùíç8é$Gƒõàû×ôp½jùM*ÜÞý¶gà™ÿ\0ÒÃfS£kÆçÞªùlqNâ¿ÿ\0j»oëQè&‚=ÄL1\n³o}ÿ\0\\˜ÿ\0ª}3^Î’«;WŸ‰ÃUÃÏ’ª³=6*xóÓwCè ÑXUu+ôÒíži”»3°P\0’IúU†û§šùwþ\ncñùþ|6·ð­„ÒEªx 2ÈÉÃAl¤o9ìX¿LÖø\\4±£J=NlV%P¤ê3Âl_Úæ÷ãï‹¦Ðôiæ¶ðŒ¦5	‘ý¤ëÿ\0-[§ÉŸº\ryÿ\0…t!°Œç’O<×7áDÂÀrc^¡àÝ(LññŸ˜þ5û[€¥†¤©Ó[~\'å™Ž:¥z¼óföß³k÷ÖËò­†“eƒ’F?‹\Zðo<oîÏz÷­MšßÆÞ&•Ñ–xíc}§k:sÓ;pqßµx7ÆÒ<ÙÏ9#ŠþPã|Î´ßVMð’K-¥ÑâÎ$“ñ®gÂ?o>\'øÎ->Ö	$Œ|ó0\\…éõ5ê^ø!â?Þ%þÏÐìšT\rþ‘rà¬ëêïŽ::œWÙ¿?f-àg‡ †Úy©>æñÔ#ã ôQÛ½wpO×Íq1©UZ’wo¿¡æñŸÑË0ò…^¬•’ìs?³?ìØ¾¶KëÛuŽtÀ$1øq^Û˜UFô«š}ªç¶ï§5¢ÚvbäWôÕ7\ZT ¬’²?›+NUfêÔwmÜÃ¼ðÖãÝ7û/RÌgúâü²ZÊ:|Ýqž‡¨ìkÐÿ\0fÿ\0Úž›â§ø}ãyQuÛuÙ·îxÕâçÿ\0\"÷¹î\rp×Ðl$‚s×Š¯ñ7Â§âÃè.-¤6þ#ÐK§Ý!Ä‰*Wæô8\0þ}xù¾_D=å£üü§µ“cåBz=öO½õêòoÙ+ãêüvøj“Ý*ÛëÚCý‡Tƒ¦Ù”°ÝaÏ×#µzºç¿9­FT¦éÏt~F´jÁN=AùCŽ8¯ËßÛËâ|@ý©u°$2ÚhÎºläOü|·å_¦Þ!Ô—JÑ.î\\…Kh^F>€)5øëâÍuüOã­GSrYïï%¸sœä³“ýkê8J’öò¬ú+}çÏñ%nZQ§ÝgƒíƒH½:Wªx&Ø,9ô÷¯)ðlØed×¬x.áU£àg==kôº{3óÊ»žÕð?ÃÖzíŸ\"¾¶ŠöÚçWexePÈÛPc ýj-cöJøw-ë\\ÏáØå=ÖK»†„úædÛúVçÀq‹â9pŸ­ÎsôU\0~Õ¯‰~%lã8š^_oð§ÿ\0^¿þÈ§Æºr‚wlýef’Àà£UI­r=:ÃM´K-ÊËNÓ ùR!TBzdŠmå˜Á=Ò™ms°äc­IstrAÏ½~‘„ÁÓÃST©+%Øü»Œ©Š¨ëÕwo¹^ÒA¸=\0ëZ-v:àV\rÅß•\'ŠDÕr£?©®÷AËs“˜·8-Š<+©˜59!¸R®GOæk*óP,1ÍT²Õ<ZÝ·óòs]\rzm^ZŠæGÂ\Z¿À¯Û6xâo/Mñ•¶$CÂ™¹ }Ëø¯³ôÛêQüÎCÜc5ùéûRêo¥ø£ÃúÔLV]6èËÔ\0CCù×ÒþñújšdWÀ‡6r1_žq^B¬*¥º?Eáªüô¥Iý–{7Çxo¦ø;âhôØškùtË…·x/\'”ÛGâq_’ZO¥_½µÄoð3+£Œ2pA«öžæÝ.`tp\n° ƒï_&~ØŸ°t>?óõï¬Fö@€-Á›ßë› Í!†Ÿ³«´™¾w–O:oT|sàýD)Ï¥zw„5!¾<sÁô¯\"¹Ñ5?x†M;S²’Êî!£“ŒÔƒÐ×gámx\'—ŒýìWé˜z±œ.™ùö&”£+KCìƒ,šgÃíNæg\n‡R»”úü®A?Ž+ƒÕ<Dúæ¯=Ó“‰›rƒÕGaN×¼xš7Â½>Â#¶}^âk–ÇhüÖþgùW;g¨¬¹ÇCÒ¼>\ZÊùëÏy6z¼GŽsäÃÅè’:Xï²¼RÉ•ï‘XK¨qÍ<_1^ÇÒ¾“êÖ>gŸBåÕðò*Œº•É {f«Ý_ˆ”³ÜW9®x…cV9çÚºcM%©šÜènµ•Prâ¹íWÄâ”\nÜdÝrz§Œö¶×3©øÍÌxc‚ø?eV¬c‘ÑNÚ7i=Eu†9d”0çµw¿³oŽïÁ$ŽKÂ\nñŒšÐ¾ÄDœ9Ív?²N›wâ4šÖ/³=6šø)\\øxMŸqÃ/’¼âº£ôðôõ¦:nÆF1õ§Ñ_mn}¡åŸeübÓÌwVq‰³‘(á”úƒÚ¾Føû\rx§áÅäóé*ú’¬eq üzÒ¿CÍAwiÄEd]ê{kÒÀæ¸œ#ýÔ¾G+-Ãâï#ó?1µïjªE¥öoi†8æCÕãž3’:ÓÒ<Z@\\}ñã¾ñ¼\rîm&ÿ\0â1Œ¥y?àŸ~\Z¿Éa=ÆžÝAŽB~•õ¸2„\"¡R½˜Æð¤ªIÔ¥;úŸ?Ãã“·=3N›Æ\'nv>(ý‰®ô9[ìÞ\"%Fx–=Øý+ŽÔ¿gMnÍÈ]cO`;´/ŸÐ×¿+Á´¯uò<gÂØÄô·Þdj>.Ý»,1\\¶µâ}ÄË]{þÎzåü›[WÓ”ÔDùþuwMýŠou¦Ù6½çºFGó¨«ÄØ5ÝýÆ”økÍf—Þxˆ|F¬ÙëX“ÝêZ‚,GmÙÂ.s_hxþ	©£^{ýRk°¼ÇƒúW¸xö2ðg‚DOÓ.0Ì ÿ\0JùügA¯ÜÁ³×£ÃŒíVV>\røiû-øËãVª²=Ô9–PFóÅ}Ýû.~ÊÖü8—Î¹”|ÌMzÎá›=¤@ „P*øšùLfe[ïQéÛ±ôø<,2µ4ÿÙ',NULL,NULL),('manju','manju','manju','tmksmanju13@gmail.com','9535866270','#345,Rajaji Nagar,Bangalore-21','05/06/1987','Male','Owner','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0\0j\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0÷ú(¬ýgX¶Ðôé/n›¼Xö”¤¢®ö\ZM»\"kíB×Nµ{‹¹–(—«1Çå^{«üO;š=\"Õp8ÏßÜ(®;^ñ\rïˆ/×.DCý\\*~TãïY5àbs9ÉòÒÑ•,R¼õfíßŒuûÂwê2¨=£ÂÒ³%Ôïæ9’öå¼¤ÿ\0Z«Ey²­R_›:Ô\"¶Dë}vŸvêqôŠ½mâmjÐƒ§r1ÙŸpýk*ŠJ¬ã³½ÑÜi¿u;wWQ÷*6?éÅz…â]7_‹u¤Ø•GÏðëøwâ¼\Z¬Y^Ï§ÞEum!ŽhÎU‡ò>Õß‡ÌªÓv›º9êá!%îèÏ¢ÁÍŸ¡ê+«hÖ·À`Ê€°›¸üëB¾Ž2RI£ÊjÎÌ(¢Šbô¯ñÖ¼uqáÉµµ&8Àè[¹üÿ\0Jõ_jÙ~¾»y\"!?Þ<Ô×1,Ä“’NI¯6¬ÒT—]Nü;·6%äG‘ÕK3p\0k~ËÁÚÒ”¥¸=ò!^ÐôNzŠé®¼¨B…¡–)¸ÎÊZç®-§´”ÅqÄã³\n7È¨¢Šª¬ìAf\'\0œÒÇÊá#BîÜQ’k­Ñt3e¶æà<r«ýÏþ½+Ø¨ÅÉÙÃ,¶çDœ–,´\'ûËÜ}A¯B+Äõpú\'ˆmµ[A´HD£Óp?0ü­{-Ôw–pÜÄr’ u>ÄWÒe˜iO‘î¿#ÈÅÒäŸ2êOEW¦rŸÄg+àù€8Ý*Ö¼eÂ(%˜àÜ×°üIÏü\"mÇó¯=ðŠÝj\\8ÊÀ»€ÿ\0hô¯œÍ_ïþG«‚þÌèô\r-2–E\rrÃ–#;}…tpjª5L­^;w;%vª·Zu­ôF;˜VEìHä}=*È~(/EÙž§%wàhæÚíãød]Øüj²x%U‡›{‘ßbvLÕš|Ì¸£2ÏI³Ó—÷\rÝÝ¹cøÔ¯S9¨“Ksª\nÆg‰`xwÍÇÍÀçØŒ…v?®Ç„­UŽZhÿ\0\0xý\rrúØÇ…¯t,¸üÅmü1Ïü#rç§Ú¯_)mV·‘åãÒå~§mEWÒI•âKÔ|;}lT34,Pï‘ú×™x\ZE\r{nÃç`­üÿ\0Æ½…†W¼cS·>ñ³‘lì]G¬mþÒ¼\\Ú•Ôj/C¿=àu\\£jEj\'Q\",ñò¤g#¸¨×Ïµc×^ò¹l=ê¾ú7Ô‹”½DÍM/Q³ÐT`ÕZ\\æ¬ÚAæ¾öû«ÐzÓJæ¨«³ÅÓ}›@Šßø¥}9?Òºÿ\0\0Ú›OÚi‹KøÇéŠóÝU¤ñ/‹ Óí¾hÕ¼°W9ù›üúW²Û@–Ö±AÄq U°½ì¦“æu>G‹žŠ=õ%¢Š+Ý<à#5ÌøÏÃƒ^Òÿ\0r\0¼‡æ‰½}Wñ®”ô®Å>\"žîøèZ[ín—÷Guù×&6­*t[«±•\\RÃ%>½vs~×|Ÿø•Þ¶Ò¤¬lÝ÷Mt³Ûï§q\\ö¡á;w´O²6Û”³ëèjžŸâK½!þÅªC#¢ðýåÔWÈB¤*ì{x<Z«%£êŽŒ±\Z7TöºŽŸ©¦a™$=vž~;YÄy7z*´z¢cMêk@YEÜ¶~´Éç²ÓÓ|òÅ¦ãÏåG+­°ÈmˆgùW==k\'Äºôv6íafßé0Yå˜ÿ\0\Z§¨x®k×z<2s´>ß™¾ƒúÔ–^’ÂT¹Õk—ÄYÎÜÿ\0x÷5rNs¶ˆáÅb£N<óû‡x:x|9xnuKWí\n.:ˆÁõ³Åz¼S$Ñ¬‘ºº0Èe9WŸI¶Ue‘C!*GTZN¯/†oŸJ™°90ojíÊ³U¨ÕV]òÒÇOÚ9Uw‹ü?à~G¥QLÖD§r°È#¸§×Ôç?âýwûC’Hÿ\0ãâ_ÝÅìOÂ¸/\rB#†iß™]°Iüÿ\0­Iãëó{âXìÃf+e´y?Ò«è·“É;‡¿jøüëêÕp[#çª×ö¸ÆÞÑÑzõ:%Wº··¼eÄK\"ûõCÚ™æ{Òyžõá­5GRªâî™‹7…ayC[Ý4\\ÿ\0ÝÇ­^Oøª$Si±‘É9Æ?VüÏzÔÑõ£c ŽbM»G]¾õéàkÒsäÄlúö=>iV/–nèçåð§Œ\Z\'2\\çj“´OÉö¯<mIVô­Ì2å[8oÖ¾•FY#¤aEy7Ä[}(x¿LEµ®[÷—Jo˜¹àsƒ_C[.¥N*püOªÉ«R¯YÓ¯mVéc­ø{kkÿ\0äW‘ZžFp$eÃ:ç‚j?ÍY×ûŠùüë¨Ón-nl\"’Ïh‡n@ÆÜvÇlt®V¸ê×NaðãúW>wjxHSÉ1›U¼›µ®öíä3Ìª÷ˆ.me‰¹¤…0ÉïM’_óÚ¾Uhô<9I4Ó7¾ë¯=´šEËf[q˜‰îžŸ‡õ®ïp¯²»mÄ¶—ªp¥†ÿ\0u<7é^ØHA¯¶Êñ>ÖžèëÊë¹Òtå¼tùt<:þswâ+ùÏñJøüñý)QÚ\'‡:\Z®¦­wu0ÿ\0ÇªÎ+å±\rº³À¤Û»ëvkA|³(\nþ•6ÿ\0zÄU5b9¤Q‚r+•Ã±Û\ZÏ©¤_Þ›æUQ.h.}3Sb¹Î£Ãú÷Ù%[K–ÿ\0Gcò1þþæefñÝá,HUŒ\'°Ø?Æº=íýÚäµè%¾×åKHÖÁ“\'®ÑÓòíàq“?«Ë[mþGÚðV2Ø×NÊí÷£­øqâ¶“TM>rÁ¥‰÷1èÌ ?\\?SÍ?™+¹?y‰ýkÌt»×Óµ(.£l4náÐ×¥GåXFF*3:²”aÒÿ\0¡\\o„TqçMi$þõÿ\0Â†\'¥;inµ*ÅŽÕ\"ÇÍyÅ(³[jÂÃŽH¯HÓ|D—h[%¼”Ï×h¯>ñËÜ±­k9ßO¶`NJGä+ÜÊªÊ	ò˜Q©*X‰òyž(³:gŒ.”Œ$Ž$R}ÿ\0¯šAzî<áöÔôå½¶M×6À’\0å“¸ü:×¦\\¬Éå9ýâú÷Ži†t«7Ñê¨ûL©½¥ª,éâ*œGRëË¹¢ÇOÔëµH#©¹jqr2ZßXÝÄÌµ€aÆÿ\0õšî„~Õî›o¨Ú=½Ì{ãoÌQ[aë*U™ëäØÅ€ÆC%t®Ÿ£V<šòê¦IR†B?zî“êo¥zO‡.æ‡m&rÁv7ÔqþÈÉà»äÖ£´L½³üÞ~8ïï^‹c§Åag´¶4úû×f>½9År»³ë8«ƒÄáiS¢ùî¼—Ÿùy\nž#©Äxê++ZÕ£°‰¡Œî¸aÆ?‡Ü×—äì‚¨ãJ.SØÄÖ]¯õtµƒæ ˆÔìOÿ\0ª½ŠÓK‚ÞÎ\ngËS?AŠá|á©$¹þÚ¼BgÈ>ñþõzNßjû,§	ìésIni•aÛR¯Qk-½Æ+ÎüUày<öÔtUÃýçxçÕÂ½Œ×£ˆÃÂ¼yfC…§ˆ‡,ÿ\0á´ÕU\\Áz†)”à’1Ï¿¥lÆÐ:0e=Á®ïVðÖ—­)û]º™;JŸ+Æ¹¯‡7–²ÒuM òPGê?Â¾k’U‹½=QäË‰£¥¹×–ä:xŽªK¤ø®ÀñA:Žá×ÿ\0­U^ÿ\0Y‡‰4ø³ÿ\0]ø×—<\"HuãŽ-|<EXñßk³åiÑßÅÿ\0\Z·Ÿâë®+xï¹úôGˆžÑ.8ˆËáŒŸÈÑóUîu;!™îO÷s“ùR\'üAyÅî¯KÜ&[ôâµl~i0÷RÍtÝÁ;WòþµÙK$ÄMûÊÆ‰bg¤)ÛÍ¿Ñ|úõÞ£\'Ù4‹i›Àe¿.ÕÐxáó™–÷\\mïÂç\'ý£ßé]Í–›i§EåYÛÇ\nz\"ã5n½Ü&QJŽ²Õ›RËo%<D¹šéÑŽ5\"…P0\0è)h¯\\õÿÙ','0w5s0j0i2z1h6c6n4j4d2b5p1e0d6n1d','15/06/2016'),('Vasu','Vasu','Vasu','Vasu.123@gmail.com','9535866270','#Vijaya Nagar,Bangalore-10','05/06/1987','Male','User','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0‰\0h\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¨å•Q€\'“Ú‰%*™ãÔWåÿ\0ü¿þ\nÏãßƒõ/†>Ón<-ö8Sí:äÑÿ\0¤ÞoØ•#í¿’N@Æ+ÇÎóªfâkÝ­’[¶uà°U1U=#ô/ãí!àO€ú;ÝøÃÅz‡ã*—wh’Éì©Ì~‚¾9øÏÿ\0ü&ð+Moá\'Ä~.¹PBºF¶–Å¹êîwã=ÂWão‹ü¬øÏT–÷VÔnõ;ÉŽ^k©ŒÒ7®Y²May’dž99Ç¥~Kñ+UÛ	ç«ýà}–…°ðÖ³rr?H> ÿ\0ÁÆ¿u3*xkÁ>Ò#Ë’ùæ¼du\nÑƒŸÂ¸áÿ\0\n|xÏÍaðñ‡ý‚.?ù&¾%‰ÍD÷XŽÕóu8»9œ¹½¼—¡êG%À¥of¾gé\'Âø8›â›®+xËÂ¾Õ´ç`i±Kg4Kßii$~ WèÏì}ÿ\0øsûeè¾o…õU·Õbé\ZEë,wñÔ.Nõ÷\\ŠþpÅèQ‚H­ï†¿õŸ„>4Ó|CáíFãKÕt©Öâˆ\\«#)Ïn ÷ÎkÙÉ¸ï1ÃÕK/i½÷ù3‡Ã¸jnŠå—á÷Ô”3,ÀííO¯\rÿ\0‚þØZgí£û;i>+´xcÕE®¯h¼}’éTnþéûÀú\Z÷b@\'Œ×î¸\\M<E×¤ï+£óú´¥NnVhZ(¢º\n(¢€\ZW=«ÈkïÙÓáÏÇO†—±øóÃ:n±¬\'Èã	unÄñåÊ>t$ã¡ÁÇ5ìã¶?‰™ám2Åd\no.…{ƒùdÊ¸3/gõiûDš¶ÏTtà¡)WŠŽ÷?4<Wÿ\0xð6§;I¤kž&Ò‘˜’IÌj;Uÿ\065†ÿ\0ðF}tñ¦°íÂ?þ*¾ÌV ;±íNþÒ¿­~[W\"Ëåï:hûØâª­™ù‘ûgþÅ~ý“<e:ø‹WÕõ­ZR–vÍh©ÕÇ˜îÀœ\0ÀîM|Éqe;ÙµÁ†U·YfR„&óÑwtÎ9Ç§5ûâ]>ÓÄ¶f¼Š+ˆ‰ÎÙT:ç ô#‡jùþ\n	û;x×ã•ß†ô\rYèö¾\Z±“íwRÜ„&r¥1å¨¥‡wöÀ¯Ìø~½J:.Èï¡ˆrIKsó’ëtmÏ¾j·öƒ)ÇCŠî?hß…±|ø¥áˆ/ßU—J†ÜÝ\\Ø<×\\ŒÉàÒ¼Òæsžšùõ†q—,·GK‘úÿ\0Üüu“ÃßüUà›‹†û\'‰4ÁwocsgÐ¶}vJýŸ…·\"ž™üÙÿ\0Áþ#Üøþ\nðÒH˜”¾Ö\"Ó¤]ØÜ³Ÿ\'ô.=«úMAÀ¯Úø\n³–_ì¥ö[üu>‰)(â¹×ÚCè¢ŠûƒÀ\n(¢€\nùoöôÖš×ÆzEÎÑÜ.zø\'ò¾£nŸJøçþ\n3¨›OŠšŒéÄÿ\0äFÿ\0\nñó×l½Wæz¹2¾)|Ï5ƒ\\úœf¬\r_wCŠâ!ÖŠ®Kt÷«QkÄ¯S_ç¡öŠ’:ÆÕsÁoÖ£šæ;†RÜ•;†zçUÞÉçÞŸ¥†äŸÎ°œ“ZšÅXù‹þ\nû;Y§ÂßkZ&›5ßˆ<[¬éÏ+…$’)ŽãOEŸ©$ô¯´ÿ\0‚b©ø_+Ïâ	äñ«ÂÒÁm\n!³ÞDEº±<ß/$q_ ÷~^£hÑJw!èë\\v¿gk£:H<¸\"´i%=#U‹è\05äVÁBSæ±×Mé©ùÕÿ\0§ðí÷ˆà¢_lc‰’æÛÄ¶sL§ª\'YdÏ¡3ùWôß;F}+ð«þ\râø+ÅßÛGÄ?6åôýí7–ìË•G•Ùg×Æ¿u£9QÆ+ô\rÂ:8IIý¦|URÄ(®ˆuQ_`xAEP\0FE|eÿ\0IÒÚÃÅ~ÔÓ?é6Ó[6ze]Hÿ\0ÐÍ}›_=ÿ\0ÁI>IãÙþ]JÚ–ëÃ³¥çË×Ê$$˜ú\rÿ\0¯/:¤ê`æ–ûýÚžŽSUSÅA½¶ûÏ…¡Õ‰Ï=jå¾­€9ë\\¾¢S‚y\Z»o©–¿3æ}ÏÐy,uqê¿7^Y†ÿ\0~:æ¹˜5jäÃŽi64OxòÃÀÔõ½Rso§iÏws\"©sj¥™°98\0œWÆ¿·Wíã¡øŸÁào†zÕ§‰õïÆ¶ÒÜØIº;y8e<}÷nÑÊ‚Iæ¾µ×ôè|a¢^h—	°j–ò[HŒ2]Jœþ¼Óþ_ÿ\0H¼²ñä¿~&i2ÚØéòÅ¡YÜ®\ZûÊ‘”M°ò#ã ž¿JìË°WÙÇtrc±kKŸ|ÿ\0Áÿ\0aõýŒ?d=2ÏPB<Iâ 5\rH•ÚévFyì§?V5õ×@)°(EÀ\0À\0t§×éØj£J4£²?;«VU&êKvQEnfQE\0GÄz¿‰tk­>ñ¶—´2Æz:° Ä\Z½Mr¹ÁÆM&“VcNÚ£ò\'ã·Â»ß¿5Ýï)i1kiƒ4\rÌmï‘Œã¸\"¹»[Ý¸æ¿M?kÙ{Âÿ\0´?„LšµìZ&¡¥åàÕ~P`ÕÉÆPäpO«ó›ãÂ‹ÿ\0‚ö2^ÝÜ[ßéæëì±Ín3žpv‘Ðë_œf¹5\\<¥R\nðïØûÌ³5¥ˆŠ„Ý§Û¹NÚø–ÀïV$Ö¾Hy\\í\n9®)<W=Ú…‚-@’S‚?ýkkÃª±H³12Èã™®z\nð\\’=ØÒmêzôö‚bÌ—nB€¼àö¿Dÿ\0eÝYnþiÖ.Yo4ÈDS£c9?0?NqøWÆß³/Ã\'ÖÐx‚ù,íÎ-¯6>÷ÐW³h~3¾ðˆ£¼²‘‘ó¶HòvÌ?ºFyêkí¸_/8¼MM¶^]Ï’â<\\*Éaéý_©õjŒ\nZòÿ\0„¶ÃÏŒ>\'¹ðþâ½ãÄÖ*\ZïI[µ7Vç¹çñœf½9fVÆæ¾ÊQ”t’±ñð«	«Á§è:Š3EIaEPHÛŸJðoÛóþ\nà?ø\'×Á[xÊížâlÁ¥i6ì¦óW¸#Iè29áG\'œÛþÔÿ\0´—†d¿€ž$øâÛÅ´Ñ|;h×sóÜ¾>HcÅ#¶Grkù`ýºmïþßŸµ/øÆîCç1‹KÓ÷[èÖ¹ÊÁéÀÁfêÍ’{W±”eo;ËH-ÿ\0à{ÇNÑÖoeú³îïÙ·ö¾ø³ÿ\0«ý½¬_Å7ré?üq¼9§»Gaû§ÍªMÎg™¥db_ŒFJ´¿hÍÁÿ\0¼I©|°Öc—â%®?Š\"ÓíÀ‘–;pÉHûŒèäª’}ÏæìáûréðM/ØVK›-gã‡ÅIN¥4¸Áá}<of˜ì’AF<Ð[\0\0Þyÿ\0£øõ«x7þ\nkàë\ZÅþ¡â]ì5KË—2MqöÄhYœž¿3)ÇO”•ß˜äK\n±JÔã—ž›ýç“–q\'ÔeE7ÍVrNO²oo¸ûÃ+y¯êöÖ6PIu}w\"Å¿4ŽÄ\0¸õ$×Øÿ\0ÿ\0à7ÂMCÆ·ÑÛÁ·ömŒ™“±Û$˜ÀîÌãÖ²ì¾ø+ö`ø§ãOŒ>/ÔáÓ|\'á»¹5\r:\"~HÌŸ1\'x«±¹ÇãôßÀ¿ÚÃ¿µ?Á\rÇ¾žY´_[ùÐ‰€Ya`J¼n;:ºG¨¯ÊrŽJ.¾*7IÙvùÿ\0‘úögÄ©ÔX|4’m]÷ù™®ZØø?Ã»#[{-;OˆáAÛ(É$ö\0¦¿&noø)¾³ñ¯ÄZ‡†|us¢x>x$»ŒîµRnäˆààHÁ=q_GÁs¿løMðÖÃá¾‡vcÖüh’>¤ÑIm`„¤ö2±+îªã½~Zhrƒ\0cŒp1_±ðÎGE‹©ð¯×üÁxëŠ*F«ËðÒµ¾7úŸÜkèWzµm¨X]]Y^YH²ÛÏ¦)bu ‡¸!ç#÷¯ìmÿ\0ÙøƒðY­4‰çÇþ„ª‹±ˆõku}þn?¿†\'ø«á+hÁŽjôÞaÇ­}f#/¡‰%hßóûÏÌðYÞ/SÚafâÿ\0êéötý©<ûTü?ƒÄžÕbÔ¬%ùfˆ—R`ÑõGäÃ#šôXÈeÈï_Íçì×ûIxÃöKø“oâjRZ\\FBÝZ9&ÛQ‡ ´R¯B¯Þ~î~ÅŸ¶_‡lÿ\0ƒöþ\'ÐÛÏýŸRÓ¤`fÓ®;£àõV0#¡ÈžçYðOÚGX>¿æ~ÍÂœeG5^Â§»U-º5Ý~¨öŠ)äQ^	öçàŸüóûvIñKã^›ðCD¸\r¢xãÔµ¦ŽÛFHŽÈÏ¨Š\'Ï¦éqÇåls]oÇŸŒ¿´Æ¿øãPB—ž)Õn5š1,…•sþÊ+šŠ=Ä`Wê™v\raèFšùúŸ†g8ùbq2ªöéè@«œ¸ž[×Úºÿ\0‚Úãx;â¯†µhßË}3Tµ»VÎ0c™XsÛ‘\\å¥¹f+FÞØ!È\\žœ× ©).Nç„ñNRêµ>Éÿ\0‚±~ß“þÓ¾>ÿ\0„/Ã×Î|á™<¢Ñ&§t§\r!ÇÞTÁ	‘ýãÜcèOø7oö³¿ñ·ÂÝzù¡Òd¶“ÄúOšÄ¥³Ä]¢ŽÀ¦ÇÇû{šüÀ†Ç$d“É­Ï\rë7Þ¦Óîî,¦h¤€É˜äRŽ¹8e$PMrTÉ)KõHh¿^çm.+ÄRÌ¿´\'«ê¼»¥ûlþÑ7?µ\'íOâïËpòØßß4ztm’°ZFvD ÆUCRÄ×áýDÂ@5mjX=«JÐ2A^Í\Z¥N4ã²V>3˜NµiV›ÖM¿¼ï´{±p-ÍnZFçÒ¸]üÀ@&»RŽj¹,yßZÒÆª[TñÅ{‡üßö¯Ô?coÚ3J×MÍÇü#Z‹‹-vÕd;%·cþ³oBñ“¹I÷ëÆ­X2cÞ§k`ýáX×¡\nÔÝ)ìÇ…ÇÕÂâ!Š í(»¯ëÌþ–4]fÛ^Óm®í%Yío\"Yá‘yY€!ô ƒE|ÿ\0[ý¤›ãGì«‡õ	üÍgÀ\r\"PÎä¶Ú\r»úãnSþÙÑ_c0ÒÃ×•n™ýi”f4ñø:xÊ[M\'þkäÏæÆßµÏ…Þ-¾ðÿ\0ˆ´»½YÓe0ÜÚ\\¦ÉapNA‡^†ª[ÙäôéÖ¿«ÿ\0Ž?³‚~2Zy^\'ðo†¼F ïRÓ!¹ÚØÆàYr	ç9ç­|—ñWþ™ðÆk6ß\0Á£I \0>•u5©\\Ë¸®\nû\ZWGþ^Á¯Càqœ	ˆ»t*\'ët~Û[•aÓ ã­^†ÛÍ~·üCÿ\0ƒw¼\ru,“xsÅ¾,Ñrr\"»ÞÄ«Ž\0;Qú÷,~•á^;ÿ\0‚|Gð÷˜Ú‰¼5®\"Œ¢Î³Z;ã¬½=ëØÃñzsÛÕ+àÜÞž±§ÍèÓ>µ·kFÒÛµ{¿Œÿ\0à˜ÿ\0\Z><¾ƒ.õâ\'çÓeK­ÀU;°{qŸjóáG‰<pÑëÖ´¹†vrCûéE{”1˜z¿Ãš3ã3·AÚµ)GÕ3ÞqŸz½mmÓ­:ÞÐ7<`‘ÜõêÜ0ç·Ò»¢Ó>j½F…¶q[zUÑ„ŒöéYð[ãUÛxñÞ´QOSË«Q­Ž«HÕÆ\0\'šè,¦¦r9ÂØÊPŽqŠÚ±ÖŒ*úÔ:]‰†*ú3ôWþ\'âöÑ¿h/èßvKD[Ž:†e^	\r§ÿ\0øC©Ïâ?xþî`ÓÍ²é.è@¹bâI\nžáv¨Èîh¯È¸žP–a>_+úØþªðÒ•Xd½ªµÜšôoCõ>ëNKž sßáç\'(Ÿ—Zèj)þøúWÏŸ|r7b™Øœût¬M[áZLÈ¤ö;rkÑ_îš†o»@-«üØÇ\\ð•Ìë_Öú\"“[,ÑçîÉåü{ÕïV¬{þ‡ëþ4\'m„âš³>HñÏüËáçŽca«xA»fÜ­˜†UÏR0Ã>ÄWøÇþ¿ðÃZf:~Ÿ­èL[9¶¾wP=–]ü}Nkïëß¼+\"ûýY®Ú9–.—ðêI|Ï\'e¸›ûz—ýºË¯ÿ\0Án­ËI øÌíˆ¯ôüdûº7÷Íy_‹¿à’ß|2ò;MYDÉÚ÷a`?Ùp9>•úû}Ñ«\nçýoâkÙ£Å¹=åÍê’Æø]b57ýÙ?ÉÝúwüããíù‚?\0jèC\0L Ï}ÅðGÐœWÓ¿²Çü3W×õ»]Gâ6¥¦‰•`Yåœ÷Q€£ýÜ“ê+ï­7ýr× x/ý\\ç½iŠâüuXrFÑôÜäË|&ÉpµUZœÕ-ÒOOš[›¿¾iÿ\0</e¤iV6úv›§Ä°[[B˜X‘@\0óÏ\\“Euº7Ü¢¾Y¶ÝÙúl!EF*ÉÿÙ',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webserver`
--

DROP TABLE IF EXISTS `webserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webserver` (
  `uname` text,
  `fname` text,
  `content` text,
  `sk` text,
  `rank` text,
  `dt` text,
  `keyupdate` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webserver`
--

LOCK TABLES `webserver` WRITE;
/*!40000 ALTER TABLE `webserver` DISABLE KEYS */;
INSERT INTO `webserver` VALUES ('manjunath','KeyGen.jsp','PCVAIHBhZ2UgaW1wb3J0PSJqYXZhLnNxbC4qLGphdmEudXRpbC5SYW5kb20samF2YS5zZWN1cml0eS5LZXlQYWlyLGphdmEuc2VjdXJpdHkuS2V5UGFpckdlbmVyYXRvcixqYXZhLnNlY3VyaXR5Lk5vU3VjaEFsZ29yaXRobUV4Y2VwdGlvbixqYXZhLnNlY3VyaXR5LlB1YmxpY0tleSxqYXZheC5jcnlwdG8uQ2lwaGVyLGphdmF4LmNyeXB0by5Ob1N1Y2hQYWRkaW5nRXhjZXB0aW9uIiAlPg0KPCVAIHBhZ2UgaW1wb3J0ID0gImphdmEuc3FsLlN0YXRlbWVudCIgJT4NCjwlQCBwYWdlIGltcG9ydCA9ICJqYXZhLnNxbC5SZXN1bHRTZXQiICU+DQo8JUAgaW5jbHVkZSBmaWxlID0gImNvbm5lY3QuanNwIiAlPg0KDQoNCg0KDQo8aHRtbD48c3R5bGUgdHlwZT0idGV4dC9jc3MiPg0KPCEtLQ0KYm9keSB7DQoJYmFja2dyb3VuZC1jb2xvcjogI0ZGRkZGRjsNCn0NCi0tPg0KPC9zdHlsZT4NCjxib2R5Pg0KPGNlbnRlcj4mbmJzcDs8L2NlbnRlcj4NCjxicj48YnI+PGJyPg0KICA8JQ0KICAJCSAgIFN0cmluZyBmbmFtZSA9IHJlcXVlc3QuZ2V0UGFyYW1ldGVyKCJmbmFtZSIpOw0KCQkgIA0KICAgICAgICAgIA0KICANCiAgDQogICB0cnkgew0KCSAgIA0KCQkgS2V5UGFpckdlbmVyYXRvciBrZyA9IEtleVBhaXJHZW5lcmF0b3IuZ2V0SW5zdGFuY2UoIlJTQSIpOyANCgkJIENpcGhlciBlbmNvZGVyID0gQ2lwaGVyLmdldEluc3RhbmNlKCJSU0EiKTsgDQoJCSBLZXlQYWlyIGtwID0ga2cuZ2VuZXJhdGVLZXlQYWlyKCk7IA0KCQkgUHVibGljS2V5IHB1YktleSA9IGtwLmdldFB1YmxpYygpOyANCgkJIA0KCQkgLy8gUlNBIHByb2R1Y2VzIDEwMjQgYml0cyBLZXkNCgkJIA0KCQlieXRlW10gcHViID0gcHViS2V5LmdldEVuY29kZWQoKTsNCgkJU3RyaW5nIHMgPSBwdWIudG9TdHJpbmcoKTsNCgkJDQogICAgIAlTdHJpbmcgc3RyPSJZZXMiOw0KDQogICAgICAgU3RhdGVtZW50IHN0MSA9IGNvbm4uY3JlYXRlU3RhdGVtZW50KCk7DQogICAgICAgU3RyaW5nIHF1ZXJ5MSA9InVwZGF0ZSB3ZWJzZXJ2ZXIgc2V0IHNrPSciK3MrIicgd2hlcmUgZm5hbWU9JyIrZm5hbWUrIicgIjsNCiAgICAgICBzdDEuZXhlY3V0ZVVwZGF0ZSAocXVlcnkxKTsNCgkgIA0KCSBTdGF0ZW1lbnQgc3QxMSA9IGNvbm4uY3JlYXRlU3RhdGVtZW50KCk7DQogICAgICAgU3RyaW5nIHF1ZXJ5MTEgPSJ1cGRhdGUgdHJhbnNhY3Rpb25zIHNldCBzaz0nIitzKyInIHdoZXJlIGZuYW1lPSciK2ZuYW1lKyInICI7DQogICAgICAgc3QxMS5leGVjdXRlVXBkYXRlIChxdWVyeTExKTsNCgkgIA0KCVN0YXRlbWVudCBzdDExMSA9IGNvbm4uY3JlYXRlU3RhdGVtZW50KCk7DQogICAgICAgU3RyaW5nIHF1ZXJ5MTExID0idXBkYXRlIHNlY3JldGtleXMgc2V0IGFlc2tleT0nIitzKyInIHdoZXJlIGZuYW1lPSciK2ZuYW1lKyInICI7DQogICAgICAgc3QxMTEuZXhlY3V0ZVVwZGF0ZSAocXVlcnkxMTEpOw0KCSAgDQoJICAgDQogICAgICAgICAgIA0KCSAgIGNvbm4uY2xvc2UoKTsNCg0KDQoNCg0KCSAgICAgICANCiAgICAgICAgICANCiAgICAgICAgICB9DQogICAgICAgICANCiAgICAgICAgICBjYXRjaChFeGNlcHRpb24gZSkNCiAgICAgICAgICB7DQogICAgICAgICAgICBvdXQucHJpbnRsbihlLmdldE1lc3NhZ2UoKSk7DQoNCiAgICAgICAgICB9DQogICANCiAgIA0KICAgcmVzcG9uc2Uuc2VuZFJlZGlyZWN0KCJwa2dnZW5lcmF0ZWtleS5qc3AiKTsNCgkJIA0KCQkgIA0KCQkgIA0KJT4NCg0KDQoNCjwvYm9keT48L2h0bWw+IE9LRVk6NXA4aTF5MXo0bThoM2g3dThuMm44czNpOGI5eTF0MmM=','[B@1bfa3d3','2','14/06/2016 15:24:55','14/06/2016'),('manju','connect.jsp','PCVAIHBhZ2UgbGFuZ3VhZ2U9ImphdmEiIGNvbnRlbnRUeXBlPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9SVNPLTg4NTktMSIgcGFnZUVuY29kaW5nPSJJU08tODg1OS0xIiU+DQo8IURPQ1RZUEUgaHRtbCBQVUJMSUMgIi0vL1czQy8vRFREIEhUTUwgNC4wMSBUcmFuc2l0aW9uYWwvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvVFIvaHRtbDQvbG9vc2UuZHRkIj4NCjwlQHBhZ2UgaW1wb3J0PSJqYXZhLnNxbC5Db25uZWN0aW9uIiU+DQo8JUBwYWdlIGltcG9ydD0iamF2YS5zcWwuRHJpdmVyTWFuYWdlciIlPjxodG1sPg0KPGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1JU08tODg1OS0xIj4NCjx0aXRsZT5JbnNlcnQgdGl0bGUgaGVyZTwvdGl0bGU+DQo8L2hlYWQ+DQo8Ym9keT4NCjwlDQoJQ2xhc3MuZm9yTmFtZSgiY29tLm15c3FsLmpkYmMuRHJpdmVyIik7DQoJQ29ubmVjdGlvbiBjb25uID0gRHJpdmVyTWFuYWdlci5nZXRDb25uZWN0aW9uKCJqZGJjOm15c3FsOi8vbG9jYWxob3N0OjMzMDYva3VsciIsInJvb3QiLCJyb290Iik7DQolPg0KPC9ib2R5Pg0KPC9odG1sPiBPS0VZOjB3NXMwajBpMnoxaDZjNm40ajRkMmI1cDFlMGQ2bjFk','[B@9300cc','1','14/06/2016 17:20:48','15/06/2016'),('manju','NUpdate.jsp','PCVAIHBhZ2UgbGFuZ3VhZ2U9ImphdmEiIGNvbnRlbnRUeXBlPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9SVNPLTg4NTktMSINCiAgICBwYWdlRW5jb2Rpbmc9IklTTy04ODU5LTEiJT4NCjwlQGluY2x1ZGUgZmlsZT0iY29ubmVjdC5qc3AiJT4NCjwhRE9DVFlQRSBodG1sIFBVQkxJQyAiLS8vVzNDLy9EVEQgSFRNTCA0LjAxIFRyYW5zaXRpb25hbC8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9UUi9odG1sNC9sb29zZS5kdGQiPg0KPGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PUlTTy04ODU5LTEiPg0KPHRpdGxlPkluc2VydCB0aXRsZSBoZXJlPC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPCUNCgl0cnl7DQoJCVN0cmluZyB1bmFtZSA9IChTdHJpbmcpYXBwbGljYXRpb24uZ2V0QXR0cmlidXRlKCJ1bmFtZSIpOw0KCQlTdHJpbmcgb2RhdGUgPSByZXF1ZXN0LmdldFBhcmFtZXRlcigib2xkZGF0ZSIpOw0KCQlTdHJpbmcgZGF0ZT0gcmVxdWVzdC5nZXRQYXJhbWV0ZXIoIm5ld2RhdGUiKTsNCgkJLy9vdXQucHJpbnRsbihvZGF0ZSsiICIrZGF0ZSk7DQoJCVN0cmluZyBxdWVyeSA9ICJVUERBVEUgd2Vic2VydmVyIFNFVCBrZXl1cGRhdGU9JyIrZGF0ZSsiJyB3aGVyZSBrZXl1cGRhdGU9JyIrb2RhdGUrIicgYW5kIHVuYW1lPSciK3VuYW1lKyInIjsNCgkJb3V0LnByaW50bG4ocXVlcnkpOw0KCQljb25uLmNyZWF0ZVN0YXRlbWVudCgpLmV4ZWN1dGVVcGRhdGUocXVlcnkpOw0KCQlyZXNwb25zZS5zZW5kUmVkaXJlY3QoIm9ob21lLmpzcCIpOw0KCX1jYXRjaChFeGNlcHRpb24gZSl7DQoJCQ0KCX0NCiU+DQo8L2JvZHk+DQo8L2h0bWw+IE9LRVk6MHc1czBqMGkyejFoNmM2bjRqNGQyYjVwMWUwZDZuMWQ=','[B@179d854','0','14/06/2016 17:21:30','15/06/2016');
/*!40000 ALTER TABLE `webserver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-15 17:37:30
