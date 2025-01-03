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
INSERT INTO `users` VALUES ('manjunath','manjunath','manjunath','tmksmanju13@gmail.com','9535866270','#223,Rajaji nagar,Bangalore','05/06/1987','Male','Owner','����\0JFIF\0\0`\0`\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����(\0��\Z�����M*CK��F\n�1ԓ�=�U����\0��~��)o�3\\��-����o\r�m���e��@�I�$Rz���|\\�9�Y����孒]�w��I�K1�}^2Q��˷��OƟ�(߂~I-���x�U�r-�%�?��z�\0�U��?��\0�QO��B�ڏ���hI�\0_���.�p�\0�0@�X��\0^���/?�j�g2�v)��������W.�)�sK������Q�׮~������[�����,_��)�|�}��������{z�V5��uv?����T���޾��R˔U������4���l���������\0\n�K�	�����k�Լv�?�K��N������\0/��\rW��?xO��o�MsןL-�+2K�����\0��k˵��HߥsZ��e|��?ƪ��ßV|\'�\0��|Q�p?�|e�Kd8:~���ѿ�G$��\0\0a_j~ʿ�_O	��S���\'��7�\'�Mf���2G�쀝�p}��P�u�tv�k�\0L���be�v\0_C����־�*�l�$�Tn?��_��\r�qq�X%.�Y��{�x��ĚM���wo{cv�X. �I�FAV\\�>�v�%��ڿ�]i<[�WV��itȏ�44��A�\"��rr�������W�M~�fQ�ac����]�S��/�<4����(���<(��\0+�7���5]W�����T��[��\rb[`L�O��,�1�,R��fs�_�U����i}��[E{��c-��$�X�0��6\r��k��:j��c]�)_�_���8��q��E]����\0����;���u����n4ېs����&����[�F\'ڻ=3P�񥟝��\0h:��k��������?j/�!.����5O���~�y<ã��Ӊ�\0�r�2��Ê�����������jZլ���l�c��|�ҿ\0��¶�?T~�O6�z_��@�6����[�x�;/��k~(��m�Kg=���^){�Ɵu�ͨx����,�V-�\0~����o/�\ZJ��7N�ݐ� ��Ma]\'%�O�GG���W��\0ɝ��\0��cĪ?�B��\rTI���\0u�����~���x��>�V������\0n8���\0g��m�c�\0�u�G���\'�O=z{��:��˲%�I��ߐ��<;��o�ϧ����\0=g�����`��f����*���K�;_O��ky4��_\'�;]��\0����i~�g��ǒ��\0��B���1���q��9e��V�L�EY�F1u�wҳ�/:�-w���C⯈�%�[Y4�{B�!��ޭ�\"���ýU��>�T��s�AW����_���ܿ?���%�k	���#/oy�]O�i���P��d\n��y�8�_�W:�^��m�-%I�\\�t`�O� t���O���������e�sK��Bq�,�+�ǳ\n�O�jZ�J7�4���?8�H^�:��k���5Q_x|@QE\0W������x����YA���rO����*����I�ORG$��U@��<y��2��?�I?M�\0C��:���rf-�K�ek��;V��]�3+�x�=:�\'U�^kj���_���m���G��Kk�<����_��TVO�ҳ�~�W��]�?羉m/������S�І�\0�d��a1J�7��&�9G�����\0��y�X�\0��-�ӧ�x@�����=#N�\0�k(a�\0�V�;��Âk.�_qXc1�&�jRO]L��\Z/�Iϯ����;�oq��կ�9n���\0jqh�t�W���6�󌪪�?��C+���G���o�������ש3+D|Swd>_�!H��c^��w���MO��7��i�=q�Q�����+����3���G�X7���؃��T9�_�}�*ܱH�T��drk���\0�}�$��O�����C�7��>��5��jr�=�,h�H�\Z����*��\0{�����?�?��x<?��i�O�`H�\0�Z��øʤ�Y/���+��\nQ��;\Z(�������(\0��~5�������̎1�2��k�j�?ڻFm?�:v��0��R:��ш����<�e��?bI���Q��YG1�o�ů���9+Kr�k;�\'5�i��;�Գ�8�_��1\'�X�1�Z��#&�Ǩm9$�栾��MX�����8�-�\"��cbk�\0r3T��	�P{�zU��3܌�5��[�K	g�����k�?o�j���|s>�e�j~\"�,��[[@��5���,�C�7EUbq�}~����.�vА�\"�\0������\'�w����))�=m����+�>�����^�-�o�P�������/���@���<���z��\0��|𯌿d]~X�-6��A�.�.m-c�����;ds�W�>\'գe��S��j��~���w���������G����a[�5�b#9=�b�R�BJ(���\0�f|�����~x@#�W^&���`�۰�l������[��\"UU\0*p��W�\'�\Z��K�?��6��@˧xr�O���)-���[���1F���?���3��_��g���m~]���G>!A?�[��(���(��\0+���������J�n|�rI�ew8+����H�����N\Z�zR�U^2V3l=yѫ\Z�ݜ]�����U��ʒE,LC��1����[6z��]��[�R{;��Y�[�F]��(���|�P_�3�x���<�V�H��z��5������L�OT�}\Z���2�҆c�U��U��G�C��5/����B�^W�Ƭ�\0o\'��=bd�熏C�:�:�Ue�3��9����\"D��i:�{8x�ͫ�IGV5�k^ 	՘�V��Vf�W/�����\0V^O�y�\n.N�*uc�$���:]�ğn��W�_C�|i�{�\r�+`����,���H��\0�� �$<r�&��09�9���:��؇\'���Ӧ3�5��\0���i�~ѐ|Z�@K�wF���7�&��}�灙�+\Znv4e��q�<5�K��8/v:���O��� �!��J��)i��\0\0�`���M��?d�\0�5���_iꚍ�E�J�ϙqq���io`@�^�E�� ���g7)9KvQEQ!E�p���%q�l���ߊ�~0~������W��i��	e��\0v43��A�����~�~���^-ԗ\Zy~1�\0=$�+�\0�j�������cq���R��\0S�;A�8���p������u�#��aR������Mn����?c���<_�c�t������Od��N�I�������|e��<+�A�q}�H\Zy��v���\nҶ���,�x�q\\��y�n��C����\0���m�ec��RO�����]w�^��in���&����s��\0��\0�\n�V����f!�\0k����{��M���C��\rl��$⵻o�ն��Z��n��I���r^	\"���k\'��R��ᝓ��M�k�H��M�V�������\rED3�$n�ž�ژ͜�	�L��\0�U���B�y��S^Z��b#_Q��A�]�������1��FF��ҟ��?��5���%��b?��\0\nX�g�spU�����������p0�j\Z�Hٿ:�|3��-L�#�u.q���3Y8����sַa%��������Q2W��|������F����1�\0-�[-�F	U�	�7�a�izj�\0���f)��~oE��k�&��>�#�|Qw%��Cuq��\'���\n���_�O���W�uK=[M�Ra���L��N3ϷZ�w�]�Oź��5+������+�Wm�9~��6��|@��ծ-v&�e���I@#�v������a���t�կ���~�Y�u1�u�!��_�ӥ�^��&@�pA8l֟_4�Ŀ�Q�\n�ֶ�i��z/�#�|�k˺;���X���@oj�G�k�@<u�q_�eY�2�����U�ɭ����d�ܯ,>�����]\ZkF�F�h���0+���\0�M�	�T�>���D|���e\'�q�H�\'����(wW�������-�i8M\'¡f�(�]�\'\r�\Z���=��q���(��_�`����-[��S��7�ę�,���ꏴo6ڊ��C柋?����\0��M�]�-E�>8XW�y\'��\'%��@*���*-�ֿ�q���ʵy7)6�{��m��}%\Z�B�Ta�Kd��%�S�\n�~��W������VTm�B��g�\"�8d�>[*;����\r��xo��#�w:^����Gt�_��I�]�G�����H%��uѭ���I��+����`p���Z��J_����O��<e����\0�k��/�5�s�kZ��?�5���ʑP�Ef����G\"�+��X��ӫ\'�&�\0S�]E�Q��zE/�NH�ƨ��Q�^\0�wU�0Á]�j�%�n�V���iR��Z#���7t����`Wc%��j��`~�Wm,E�8g��w1<�k��0_X\\��]Z����)=T�\0	��+���	��\0����7��Oq^4���� *j�\r \\�\"�n^����̚a��V����\r|Qc��w����ҭż�<n�w��;����N/�d�ň�����I�K��3�ˀ��C��%u�R7t�mb�����Y���B�\r>���G�����~h�)_*�P��6�+mt�l�{gg:t�_�8m,]bh;�i4����)����bja11�98�vi��\0���R����\Z׈����a5����I*2@,q�	$t��Ox���^*�5�RW��\0T�{ˆ�C��Ӱ�ӯ�+7�V�w�q`��m~�\"d�qצ�c�{��/����f42��v�y����\0~,���9䑣�b36���_��[q?�޵�޵��L�z��-Pg�c���`l��O��Ͻz����x�����P�E��{�6�ql��\"%��\0{�G��Mh?�Z^�v�.�n�w���\0*@���ҿO�4{}N���4���_*(�H����߭~��<O5O�����K�;]���E��?�7�z�+�_���I]�ꢞ�]d��D�>g�?��^\r�O�\"�<�߷x`O��a�ڇ�·_�Y�?���	�����Kg\0�x���?JkH�Ѓ�����/��_���\0&�\03��G)s�r_tm����\0�*�}.�Y|5�+MX��\0.���m#}wW˾6�^���ė:F�as��V����0s���qǽ~�I3�\n�#�!J��\\���^A�c��v_�G�;��B�&� i�˕2�\0,�-��O�</�΄��i�qז��ݟg�F}�xŎ�*3��Nv\\�I��v�I��m����G�I��4�wArк�H���q�O4z��ꕏ�U+��M�Sڗ����}kHѓ&�ʋҙ�x��Q��Z_3�V��&&ϱ����\0&�?���]Ω����Ά6n��W�d��\'��=���_��\0~#]�-������f�C�a���������F5����Yx�@���d���A�$��2���+�o�����j`*;�-5�k�����ǟHX\\�iN6U�g�8u�������\0����xn9`���d�H�g�\0!�?�U���_M�\0�_<B���s\'v���ک�L�&�\0�K�Ҿ`�ǡ���E�<Wb�=m.U�\0n��O�����|)��kÙ�͹�RC��qI�}j�֗x�������}��\0�Ҁ�񞢈�c�����Iv��\n3_i���O�Z�E�ŗ�~[�YbO_�0p�����:���\n>�\"�����3�����׉qR��������B��?tۯ���Q�Β�g���	��+��ǥ|���5�Z�\0���\Z�S�W�����Ã�S���)���\0\\I��?�W�����\'���������[!�*�OWN���}~����C�x��>?��j6K����C,�yS\\B3��OBrq�W�<��l\n�6�é�ϵ5\\�K($u������~\r���Nnn)&���Y��e��+W\nj����[F����D��h��iem���uQ�%�7ex�+�.˝��_�	���\0U~��C��>|V�.uxCG�/���g��$�:1e �4?h�\0�|,����h�M����{u��P�{�k��?���(�������M>�����>=��P�\n�jS�o�k;Z-��{��ϧ�/�r��]��)<�����;��s2���P}���|����*}��I!�0+�W�	��� ��>��l�m���@�;��\0N��Ǽ�W�\'�#�o�~�^#�dfs�x�Q�e�7�y���#�*9Ӥ���\Z��5�3���J�\r�֕H�����|w�\0&�d�mo��XY]A�U�x���+�?n��\0�~ؿfbv�jH�z�U@�F���oZ��W>k���R�S_���	�S�0t�JT��I9}��ު�oQI淭yQ�s��g�����Y~��R��k�z��� A����~�����a��m�x`�k�?P:�Q��f�	�5}i�����#ֿ�x2q�I�p�?U{�\'�j��Z��y��\ZV>_���\0D�>|P��?o��OT�J�{Y.D�/1���3�|U]/�\n��ٿ���Z���x������������^k���6\Z���m���yq�/v�Awz�u/�$�$�\0�/�����_�����kMД%ݶVW�u}���V�\n�zk\n�����z�_T�ΏO�\0���-��\0X|Gk�\0]l�\0���?�(h�#e�xn�=GJ�,�N��ܽP����+�m[��\0n���m�\0_6`�\0�-_I~�_�݇�����v��:��s-���̓<��\n8U�t��[�����8��Z��M�<N*�p�<$jdU�*�Kݕ����X������U��Qk�?����U�	��R}����Z5�j��zM������RM3��?�Nk���!�\0��Ś���Q���wcp#0Ͼ���Bq�8z=n��%�g�x%B��V!�c�w�Wy���Z���ܟQ_��}���	�Z7Z��{�<�qU��y��D��zĳC�>��1�i�J��qr��\Z��FO����\0��Z���o�zz6֛I����sH���}�\0��>��^e��_����\\��xK�E�T�����m��~�ʌ��.s�zf����\\W�w���K����iq�\0dx�S��я����f^p~�����si�������3���ֹ�ǅ��f2�|T����ֱ���M��������S8�)�0p�Z��F.�W�Rm/�7�v��Ч��T{��D�2>�V\r�i�w\Z��|��K��uGi�S�>��\'�.��m\Zb��L���c�(��ҿL�g�\0�#��.�[L�m,uo/7Z]��OA��+�\'�_��g���CWY��x���a�#~��|5�X����)A��v�s��ǁp9�U&�*�YM$ݻI;&�i�������=�_�@U�VV�q���C���O\r������V��T�?�\n�4�\0�3⦏�\0�?�4���xn?�n���x����BW�h������\0�u���R_�g뫆O�c�:l��m�$��ՓR����n��\0�ϧ}�\Z����L���\\��_���O�kam�x�S��}�?.��\0z8UU�*ޯ�8Kӥ6��R��/ɜ�|�]D�צ�ծi?������\0�;��ҵ���߃u��r!�u� �\0�do���G���Y>���1�H,��P\0��דO��~_��u�LK��ӢKd�~l�ӆ�{	���\n��{��v�k+tH���y���G�Q���כ\Z��g���7�>���4HJ���h��N��Fk��!N����T*Xy��\\F�V��>n�־i��?e����0M�\Zr�&�2[���������\0[ڿ\\?c�\'煿c}[�(�W�ڍ����e%\ZDʱ�5�${�N���_��{����<u8���ODݚ���]��g�/qv[�ɫ�5\'�^�IAZ�T�����uwVMjd~ןnu�2y-�i�\0��~U��߳O���Ms}m��+����J2~=�\0\Z�缱��6M\ZH��3^_�7�R��o0Z�,������*�(T���i�4�h�4�Vt�Sm4�vi��I��w��!��ڊ�on�\\����{;�?��f�p�0�\0�lvI�W����&���\Z���\0_1�L�\0�f���y�Y:��+�\0����u�^W�n���`��^���qK��?x�e֥�[O��M/���\0����|�q��la�����{���u�z����	G�#\\\\��ۄ,<W1�|/ִ�y�|͟����y��y�\r����]`�wqz��d~1��b�gUћ�SE)$�oW�r�{z\Z_5�j��\rտ޶��\rR\nGQ��W��V��	rW���$��~���pظ��*Ƣ}c%%����A���ޘSo�`?3�����jTbu=7�{�淭F��_�T�De�P}XS�Sv[�NJ*��O=�\r\"�<���-���9d�\0uI�f�]�O�J�Ʒo��>�.��o	�潅��/u~\'��~\"p�V�����<��<�e拒ƶ��}ԱY��\0=\'m���5ǽ-o�Vo�~\0���\0J���G�~ ]oԤ��O��#��W��(�\0�z��\'q�v>�Y�W����z-U�\'��!�zJ^�I�����v�b���$�9ݝKy%x����}1�|^�������7o*��z�y>�\0�~�|/������`�����0Լ\" �W_�����<,���!���ֿT�J���IF*�-Kd�D�#�Z��V�*���);���}[}[�oQE����0\n�״�o��o�\n(�0�π4[���u��kǼa����Ģ������niA\'Z)�5�$yۦ���⟅��Ǜ�ؿ�:(��ENuc%t�d�niZr�MN��}֏�8����af�h�����\\�\0</��J-�\0��\0\Z(�:9Fs�==���\0#��q.oJ�X������n̂�zq��k���\0\Zд�c��*��?�E�	B�*PQ~I/���,�^�cZ���97ۻ:?|>�r�[lq�^��O��9�\0�M���E�NM��8�\'���G�xᏇ��\0 �?����ρ4{3��>�>�E�G�h�|\0�bH��v5�E��','5p8i1y1z4m8h3h7u8n2n8s3i8b9y1t2c','15/06/2016'),('tmksmanju','tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#123,Rajaji nagar,Bangalore','05/06/1987','Male','User','����\0JFIF\0\0`\0`\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0o\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����(;ľ,�|�]�:�����e����b�%���\0I5����\0�����y����$�1���6�r�\0f���Y�d��U�5��p/��Iy�x\"\rn�J��c%�Z^jp��j�).ͻ�tY\n)B����_i?/4��^\Z���D杺�����?�U��_g���M���d�-�}:s���d��Tu�R���\'kϺ����n�F�2d���D�Uc�N�#��=J�O�CZ���Z�g��Uy,0�G�FE-�n�tt0|{����\0���L֮݉?���<\r�q|d�m\"K���\0Z�Fۚ�R٨A(��	��R��޼�8�dqR4���[�N����\0s��&�����\0�-�7�߸����s��y)8Tm�0�m�el��+�x�YPr\r?��!FY,L@!�3�����/�&w��ύ߲F�w�]�毡��׳9%�x�v\'�4{	=�4�}E�\0(��\0(<QMv�(�?�*���?�Cᆍ��\0�\ZO������qO��)J�Q�3\n{�+�_�7c���췿,@�����-���o�mO�g�5�f->�+0=�27�������+�s}U��������I���#v�>!��\0��?t���� (ꯩِߕ�?�tZw�k����ma�9�@�\0]6�r�\0��?�̑��OJ��u�v��H�aGz��j�l���p��|A��->�\'�F�x������=���VfH�Жe瑎G�z��=/�W�Vz���k�X9���H1$:�9��A ����O���`�s�3�j���\0��hh?\Z��R򎳦l�\0�;�!��V@��\"zW����g_��]�<��,�\n^ޚ��;�����ڔo�mil�D�w$�Տ�~��<puo\0��\0G$4iwc�B��Z6��p�U��s���X�q�_���n�?�������[\0���e�j�3��:(PEP\0x�ܠ�\'��j9��ΦN�|��=Ww��8\'�BE9=6�����W�e�L��\0d�^O�{\\��㏌ yX�y��0~����X0 c_�b�V�(���l���=SP�4J�f?3\\_���=�o-���,�+�7�Z�ּI�[����R��;�K�C�\Z��>OZ�[�\n#�w�?�*�^��\ZbOmi���W��!��-\"�V~I\'np��}��=s(�oָ_�n�d�$3��;q��j0�ǆ��A_E/e=����O~�~1��</i�j�:n���H-���W\"�\\}�V\0�ppq_���m����]I����Q�������W����&��u�(S}�]^���#8e�̚@=�}���� ���/�o�9�k�\Z+�\\G<!���Hc��8�	���8��r,m\\Vԫ��Y����l}���Җ���\n(���j9yARR��&�w��\n���H�\0����G�PЅ?��o\\���\0\0��m�\0��xm+W�a�����=���̱d���W�p����_�gPt��\"ך���d�U��k��q���+��\0QX�����͟Ƹs�����ɬ��o\'��^T����GA�x��7$c=��:�i�\0\Z�S�7E��О���{z��.�u��1ث݉�V����\n��D�&��CϘï������+�j;-C����>*��|e�iw��}ݧ�\\���gqP���7��(�	�׿xf������Q��Yİ�h#E\0*�:\0\0��=�8����=Wp���V��V(?�5��_�`#a�\Zj�ɟ�c*N�yJ����E�s�Q@����40g�����>���36Ԗ�����c:|ѷ�0�&��Kg��\'���>��:��3[���0��C�sЂz���5�MO���x�-�м�L�5I\'�+�3�\n{��W�z���M��g��WrV\rUTaF�2B��a�`�k������F����k(�:{�x�Z/�>a}y�n��Un����#�N+K���������K����e7�3�A�?�Yk���{�)�Lq*�$lS��ͫajЩ*U��%џ���4��U���/h׶�\0�?�u<�T��Ն�20�9���⋏���3��J�=�w�0���Fy$��e�G.�}I?��y��z�k8���jҾ�����\n���g�|	��@i7��6�Ws�n`r]T�VRH��C�]~�_�㺲����Q�%�ã�b8����+���If���-�W�<���\0~f���ec��3��4\rN�H�*�H#���8�$G������p�j�M*����g���\0��fS�k��ު�lqN��\0j�o�Q�&�=�L1\n�o}�\0\\��\0�}3^Β�;W���U�ϒ��=6*�x��wC��X�Uu+���i��3�P\0�I�U�����w�\nc���|6���E�x�2���Al�o9�X��L��\\4��J=NlV%P��3�l_������i�����5	�����\0-[�ɟ�\ry�\0�t!���O<�7�D��rc^���(L���5�[������[~\'噎:�z��f�߳k���򭆓e��F?�\Z�o�<o��z��M����&�іx�c}�k:s�;pqߵx7��<��9#��P�|δ�VM�K-����$��g�?o>\'��->�	$�|�0\\���5�^�!�?��%����T\r��r����::�Wٿ?f-�g����y�>���#㝠�Q۽wpO��q1�UZ�wo������0�^����s?�?�ؾ�K��u�t��$1�q^��UF���}���5��vb�W��7\ZT����?�+NUf��wm�ü�֝��7�/R�g����Z�:|�q����k��\0f�\0�ڞ���}�yQu�uٷ�x����\0\"����\rp��l$�s׊��7§���.-�6�#�K��!ĉ*W��8\0�}�x��_D=������c�Bz=�O����o�+���v�j��*���C��T��ٔ��a��#�z���9�FT���t~�F�j�N=A�C�8������|@��u�$2�hκl�O�|��_��!ԗJ�.�\\�Kh^F>�)5����u�O�GSrY��%�s�䳓�k�8J����+}���%nZQ�ݝg��H�:W�x&�,9���)�l�ed׬x.�U��g==k��{3�ʻ���?��zퟍ\"������WexeP��Pc �j-c�J�w-�\\����=�K�����d��V��q��9p���s�U\0~կ�~%�l�8�^_o��\0^��ȧ�ƺr�wl�ef���UI�r=:�M�K-��NӠ�R!TBzd��m��=ҙms��c�IstrAϽ~�����ST�+%���������wo�^�A�=\0�Z-v:�V\r�ߕ\'�D�r�?���A�s���8-�<+��59!�R�GO�k*�P,1�T��<�Zݷ��s]\rzm�^Z��G\Z����6x�o/M�$C� �}ˏ������Q��C�c5���R�o������LV]6���\0CC������j�dW��6r1_�q^B�*��?E����I��{7�xo��;�h�ؚk�t˅��x/\'��G�q_��ZO�_���o�3+��2pA�����.`tp\n� ��_&~؟�t>?����F�@�-���� �!�������w�O:oT|s��D)ϥzw�5!�<s���\"��5?x�M;S����!����ԃ��g�mx\'����W�z��.���&��+KC쏃,�g��N�g\n�R�����A?�+��<D��=ӓ��r��GaN׼x�7½>�#�}^�k��h���g�W;g����CҼ>\Z����y6z�G�s����:XﲼR���XK�q�<_1^�Ҿ���>g�B����*����� {f��_����W9�x�cV9�ںcM%����n��Pr��W���\n�dݍrz�����3��͍�xc��?�eV�c��N��7i=Eu�9d�0�w��o����$�K\n񏌚о�D�9�v?�N�w�4��/�=6���)\\�xM�q�/��⺣�����:n�F1���_mn}��e��b��wVq���(���ھF���\rx������*����eq �zҿC�Awi�Ed]�{k��渜#�ԾG+-���#�?1��j�E��oi�8�C��3�:��<Z@\\}�����\r�m&�\0�1���y�?��~\Z���a=ƞ�A�B~���2�\"�R�����Iԥ;��?����=3N��\'nv>(����9[��\"%Fx�=��+�ԿgMn��]cO`;�/��׿+���u�<g������dj>.ݻ,1\\���}Đ�]{��z���[WӔ�D��uwM��ou��6��FG���5��Ɣ�k�f��x�|F���X���Z�,Gm��.s_hx�	��^{�Rk���ǃ�W�x�2�g�DO��.0̠�\0J��gA����ף���VV>\r�i�-���V��=��9�PF��}��.~���8�ι�|�MzΏ�=�@��P*���Lfe[�Q�۱��<,2�4��',NULL,NULL),('manju','manju','manju','tmksmanju13@gmail.com','9535866270','#345,Rajaji Nagar,Bangalore-21','05/06/1987','Male','Owner','����\0JFIF\0\0`\0`\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0�\0j\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0��(��gX����/n��X������\ZM�\"k�B�N�{���(��1��^{��O;�=\"�p8���(�;^�\r�/�.DC�\\*~T��Y5�bs9�����,R��f�ߌu��w�2�=��ҳ%���9��叼��\0Z�Ey��R_�:�\"�D�}v�v�q����m�mjЃ�r1ٟp�k*�J�����i�u;wWQ�*6?��z��]7_�u�ؕG����w�\Z�Y^ϧ�Eum!�h�U��>�߇̪�v��9��!%��Ϣ�����+�hַ�`ʀ�����B��2RI��j��(��b���ּu�q�ɵ�&8��[���\0J�_j�~��y\"!?�<�ׁ1,ē�NI�6��T�]N�;�6%�G��K3p\0k~��ڍ����=�!^��Nz�鮼�B���)���Z�-����q��\n7Ȩ�����Af\'\0�����#B��Q�k��t3e���<r�����+ب���Ï,��D��,�\'���}A�B+��p�\'�m�[A�HD��p?0��{-��w�p��r��u>�W�e��iO��#����2�OEW�r��g+���8�*ּe��(%���װ�I��\"m�ǝ�=��j\\8�����\0h����_��G������\r-2�E\rrÖ#;}�tpj�5L�^;w;%v��Zu��F;�VE�H�}=*�~(/Eٞ�%w�h�����d]��j�x%U��{��b�vL��|̸�2�I�ӗ�\r�ݹc�ԯS9��Ks�\n�g�`xw�����،�v?��Ǆ�U�Zh�\0\0x�\rr��ǅ�t,���m�1��#r����_)mV������~�mEW�I��K�|;}lT34,P���יx\ZE\r{n��`���\0ƽ��W�cS�>��l�]G�m�Ҽ\\ڕ�j/C�=�u\\�jEj\'Q\",��g#���ϵc�^�l=��7ԋ���D�M/Q��T`�Z\\��A�����z�J捨����}�@�����}9?Һ�\0\0ڛO�i�K�����U��/� ��hռ�W�9����W��@�ֱA�q�U��즓�u>G����=�%��+�<�#5���Ã^��\0r\0��扽}W����>\"����Z[�n��Gu��&6�*t[���\\R�%>�vs~�|���޶Ҥ�lݏ�Mt��q\\���;w�O�6۔���j���K�!�ŪC#�����W�B�*�{x<Z�%�ꎌ�\Z7T������a�$=v�~;Y�y�7z*�z��cM�k@YEܶ~�����|������G+���m�g�W==k\'ĺ�v6�af��0Y��\0\Z��x�k�z<2s�>ߙ���Ԗ^��T��k��Y���\0x�5rNs����b�N<���x:x|9xnuKW��\n.:�����z�S$Ѭ���0�e9W�I�Ue�C!*GTZN�/�o�J��90oj�ʳU��V]���O�9Uw��?�~G�QL��D�r��#���ԝ�?��w�C�H�\0��_���O¸/\rB#�iߙ]�I��\0�I���{�X��f+e�y?ҫ����;��j�����p[#��������z�:%W�����e�K\"��Cڙ�{�y���5GR��7�ayC[�4\\�\0ݏǭ^O��$Si����9�?V��z����c �bM�G]����k�s��l��=>iV/�n����\Z\'2\\�j��O���<mIV���2�[8o־�FY#�a�Ey7�[}(x�LE���[��Jo���s�_C[.�N*p�O�ɫR�YӯmV�c��{kk�\0�W�Z�Fp$e�:�j?͝Y�������n-nl\"��h�n@��v�lt�V���Na���W>wjxHS��1�U�������3̪��.me����0��M�_��ھUh�<9I4�7��=��E�f[q������p���mĶ��p���\0u<7�^�HA����>֍������t�t�t<:�sw�+���J����)Q�\'�:\Z���wu0�\0Ǫ�+�\r�����ۻ�vkA|�(\n��6�\0z�U5b9�Q�r+�ñ�\Zϩ�_ޛ�UQ.h.}3Sb�Σ����%[K��\0Gc�1���ef���,HU�\'��?ƺ=�����%���KH���\'������q��?��[m�G��V2��N������qⶓTM>r����1�̠?\\?S�?�+�?y��k�t��ӵ(.�l4n��ץG�XFF*3:��a��\0�\\o�Tq�Mi$���\0\'�;in�*Ŏ�\"��y�(�[�j�ÎH�H�|D�h[%����h�>��ܱ�k9�O�`NJG�+�ʪ�	�Q�*X��y�(�:g�.��$�$R}�\0��Az�<����彶M�6��\0哸�:��\\���9�����i�t�7����L����,��*�GR�˹���O���H#��jqr2Z�X��̏��a��\0���~��o��=��{�o�Q[a�*U����ŀ�C%t���V<����IR�B?z��o�zO�.�m&r�v7�q�����֣�L����~8��^�c��ag��4���f>�9�r���8����iS�����y\n�#��x�++Zգ�����a�?��ח�쏂��J.S���]��t��� ���O�\0����K���\ngˍS?A��|�$��ڼBg�>���zN�j�,�	��sIni�a�R�Qk-��+��U�y<��tU���x��½��ף��¼yf�C����,�\0���U\\�z�)���1Ͽ�l��:0e=���V�֗�)�]��;J�+�ƹ��7���uM��PG�?¾k�U��=Q������ז�:x��K������A:����\0�U^�\0Y��4���\0]�ח<\"Hu��-|��<EX��k��i����\0\Z����+x����G���.8��ጟ���U�u;!��O�s��R\'��Ay��K�&[��l~i0�R�t��;W����K$�M��Ɖbg�)�Ϳ�|��ޣ\'�4�i���e�.��x���\\m���\'����]͖�i�E�Y��\nz\"�5n��&QJ��՛R�o%<D�����5�\"�P0\0���)h�\\���','0w5s0j0i2z1h6c6n4j4d2b5p1e0d6n1d','15/06/2016'),('Vasu','Vasu','Vasu','Vasu.123@gmail.com','9535866270','#Vijaya Nagar,Bangalore-10','05/06/1987','Male','User','����\0JFIF\0\0`\0`\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0�\0h\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0����Q�\'�ډ%*���W��\0���\n��߃�/�>�n<-�8S�:���\0��o��#�N@�+���f�kݭ�[�u�U1U=�#�/��!�O��;����z��*�wh��쩝�~��9���\0�&�+Mo�\'�~.�PB�F��Ź��w�=�W�o�����T��V�n�;Ɏ^k���7�Y�May�d�99ǥ~K��+U�	���}����ֳrr?H> �\0�ƿu3*xk�>�#˒��du\nу�¸��\0\n|x��a����.?�&�%��D�X���u8�9�������G%��of�g�\'��8����+x�¾մ�`i�Kg4K�ii$~�W���}�\0�s�e�o��U��b�\ZE�,w���.N��\\��p��Q�H����>4�|C��F�K�t����\\�#)�n���k�ɸ�1��K/i���3�øj�n����Ԕ3,���O�\r�\0���Zg��;i>+�xc�E��h�}��Tn�����\Z�b@\'���\\M<Eפ�+�����NnVhZ(��\n(��\ZW=��k������O������:n��\'ȝ�	un����>t$���5���?���m2�d\no.�{���d�ʸ3/g�i�D���Tt�)W���?4<W�\0x�6�;I�k�&ґ���I�j;U�\065��\0�F}t���?�*�̏V ;��N����~[W\"���:h��⪭����g��~��<e:��W���ZR�v�h��ǘ���\0��M|�qe;ٵ��U�YfR�&��wt�9ǧ5���]>�Ķf��+����T:� �#�j��\n	�;x��߆�\rY���\Z���wR܄&r�1偐���w������~�J:.�rIKs��tm�Ͼj���)�C��?h߅�|���/�U�J���\\�<׍\\���Ҽ��s�����q�,�GK���\0��u����U�����\'�4�woc�sg���}v�J����\"�����\0��#���\n��H����\"Ӥ]�ܳ�\'�.=��MA����\n��_��[�u>�)(���C袊���\n(��\n�o��֚��zE���.z�\'���n�J���\n3��O������\0�F�\0\n���l�W�z�2�)|�5�\\��f�\r_wC��!֊�Kt��QkįS_����:��s�o֣��;�Rܕ;�z�U���ޟ���ΰ��Z��X���\n�;Y���kZ&�5߈<[���+�$�)��OE��$����\0�b��_+��	�����m\n!��DE��<��/$q_��~^�h�Jw!��\\v�gk�:H<�\"�i%=#U��\05�V�BS��M����\0������_lc����ĶsL��\'Ydϡ3�W��;F}+��\r��+���G�?6����7��˕G��g�ƿu�9Q�+�\r�:8II��|UR�(��uQ_`xAEP\0FE|e�\0I����~��?�6�[6ze]H�\0��}�_=�\0�I>I���]J���ó�����$$��\r�\0�/:��`���ڞ�SUS�A���υ�Չ�=j徭�9�\\���S�y\Z�o���3�}��y,uq�7^Y��\0~:湘5j�Îi64�Ox������Rso�i�ws\"�sj���98\0�Wƿ�W������o�zէ���ƶ���I�;y8e<}�n�ʂI澵���|a�^h�	�j��[H�2]J�����_�\0H����~&i2����šYܮ\Z�ʑ�M��#� ��J�˰�W��trc�kK��|�\0��\0a���?d=2�PB<I� 5\rH���vFy�?V5��@)�(E�\0�\0t����j�J4��?;�VU&�KvQEnfQE\0G�z��tk�>�����2�z:� ��\Z�Mr���M&�VcNڣ�\'�»߁�5��)i1ki�4\r�m�\"��[ݸ�M?k��{��\0�?�L���Z&�����~P`���P�pO����\0��2^��[������n3�pv�Ё�_�f�5\\<�R\n����̳5����ݧ۹N�����V$��Hy\\�\n9�)<W=څ�-@�S�?�kkê�H�12���z\n�\\�=��m�z����b��nB�����D�\0e�Yn�i�.Yo4�DS�c9?0?Nq�W�߳/�\'��x��,��-�6>��W�h~3���������H�v�?�Fy�k�_/�8�MM�^]ϒ�<\\*�a���_��j�\nZ��\0���ό>\'��������*\Z�I[�7V�����f�9fV���Q�t����	����:�3EIaEPH��J�o���\n�?�\'��[�x���l��i6��W�#�I�29�G\'�����\0���d���$����Ŵ�|;h�s�ܾ>Hc�#�Grk�`��m��ߟ�/���C�1�K��[�ֹ�����f�͒{W��eo;�H-�\0�{��N��oe����ٷ�����\0����_�7r�?��q�9��Ga��ͪM�g��db_�FJ�����h���\0�I�|��c��%��?�\"�����;p�H���䪁�}�����r��M/�VK�-g��IN�4���}<of��AF<�[\0\0�y�\0����x7�\nk��\Z�����]�5K˗2Mq��hY���3)�O��ߘ�K\n�J������瓖q\'�eE7�VrNO�oo���+y����6PIu}w\"��4��\0��$���\0�\0��7�MCƷ�����m�����$�����ֲ��+�`���O�>/���|\'ỹ5\r:\"~H̟1\'x�����������ÿ�?�\rǾ�Y�_[�Љ�Ya`J�n;:��G���r�J.�*7I�v��\0���gĩ�X|4�m]�����Z��?û#[{-;O��A�(�$�\0��&no�)����Z��|us�x>x$���Rn���H�=q_G�s�l�M���ᾇvc��h�>��Im`���2�+��~Zhr�\0c�p1_���GE�������x�*F���ҵ�7���k�Wz�m�X]]Y^YH����)bu ��!��#���m�\0����Y�4����������ku}�n?��\'���+h��j��aǭ}f#/���%h������Y�/S�af��\0���t��<�T�?�Ğ�bԬ%�f���R`��G��#��X�e��_�����Ix��K��o�jRZ\\FB�Z9&�Q� �R�B���~�~ş�_�l�\0���\'�����RӤ`fӮ;���V0#����Y�O�GX>��~�eG5^§�U-�5�~���)�Q^	�������vI�K�^��CD�\r�x�Ե���ۍFH��Ϩ�\'Ϧ�q��ls]oǟ���ƿ��PB��)�n5��1,��s�ʐ+��=�`W�v\ra�F�����g8�bq2����@����[�ں�\0���x;⯆�h��}3T��V�0c�Xsۑ\\她f+F��!�\\��נ�).N��NR�>��\0��~ߓ�Ӿ>�\0�/���|�<��&�t�\r!��T�	����c�O�7o������z���d����O�ĥ��]�������{�����$d�ɭ�\r�7������,�h������R��8e$PMrT�)K�Hh�^�m.+�R̿�\'�꼻��l��7?�\'�O���p����4ztm��ZFvD��UCR����D�@5�mjX=�J�2A^�\Z�N4�V>3�N�iV��M���{�p-�nZF�Ҹ]��@&�R�j�,y�Z�ƪ[T��{������?co�3J�M���#Z��-v�d;%�c��oB�I��ƭX2cާk`���Xס\n��)�ǅ����!���(������4]f�^�m��%Y�o\"Y�yY�!�� �E|��\0[����G���	��g�\r\"P���\r���nS���_�c0��וn��i�f4��:x�[M\'�k������υ�-���\0����Y�e0��\\��apNA�^��[����ֿ��\0�?��~2Zy^\'�o��F��R�!�����Yr	�9�|��W����k6�\0��I \0>�u5�\\˸�\n�\ZWG�^��C�q�	��t*\'�t~�[�a� �^���~��C�\0�w�\ru,�xsž,�rr\"��ī�\0;Q��,~��^;�\0�|G������5�\"��γZ;㬽=����zs��+���ޞ�����>��kF�۵{���\0���\0\Z><��.��\'��eK��U;�{q�j��G�<p��ִ��vrC���E{�1�z�Ú3�3�Aڵ)G�3�q�z�mmӭ:��7<`�����0�һ��>j�F���q[zUф���Y�[�U�x�޴QOS˫Q���H��\0\'��,��r9���P�q�ڱ֌*��:]��*�3�W�\'��ѿh/��vKD[�:�e^	\r��\0�C���?x��`�Ͳ�.�@�b�I\n��v���h�ȸ�P�a>_+�����ҕXd���ܚ�oC�>�NK��s����\'(��Z�j)���Wϟ|r7b�؜�t�M[�ZLȤ�;rk�_o�@-����\\���_��\"�[,�������{��V�{����4\'m�⚳>H������ca�xA�f����U�R0�>�W�������Zf:~���L[9��wP=�]�}Nk��߼+\"��Y��9�.���I|�\'�e���z����˯�\0�n��I��������d��7��y_�����|2�;MYD���a`?�p9>���}ѫ\n��o�k٣Ź�=��ꏒ��]�b5�7��?����w������?\0j�C\0L� �}��GМWӿ���3W���]G�6�����`Y��Q���ܓ�+�7�rנx/�\\�i���uXrF�����|&�p�UZ��-�OO�[���i�\0</e�iV6�v��İ[[B�X�@\0��\\�Eu�7ܢ�Y����l!EF*���',NULL,NULL);
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
