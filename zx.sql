/*
Navicat MySQL Data Transfer

Source Server         : 完美世界
Source Server Version : 50651
Source Host           : 192.168.200.100:3306
Source Database       : zx

Target Server Type    : MYSQL
Target Server Version : 50651
File Encoding         : 65001

Date: 2023-11-03 00:53:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth`
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`zoneid`,`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth
-- ----------------------------

-- ----------------------------
-- Table structure for `base`
-- ----------------------------
DROP TABLE IF EXISTS `base`;
CREATE TABLE `base` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `akkid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `occupation` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `mp` int(11) DEFAULT NULL,
  `posx` varchar(40) DEFAULT NULL,
  `posy` varchar(40) DEFAULT NULL,
  `posz` varchar(40) DEFAULT NULL,
  `pkvalue` int(11) DEFAULT NULL,
  `worldtag` int(11) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of base
-- ----------------------------

-- ----------------------------
-- Table structure for `cash`
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `userid` int(32) NOT NULL AUTO_INCREMENT,
  `zoneid` int(32) DEFAULT NULL,
  `cash` int(32) DEFAULT NULL,
  `fintime` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cash
-- ----------------------------

-- ----------------------------
-- Table structure for `cashlog`
-- ----------------------------
DROP TABLE IF EXISTS `cashlog`;
CREATE TABLE `cashlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` datetime NOT NULL,
  `fintime` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IX_usecashlog_creatime` (`creatime`) USING BTREE,
  KEY `IX_usecashlog_uzs` (`id`,`userid`,`zoneid`,`sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cashlog
-- ----------------------------

-- ----------------------------
-- Table structure for `forbid`
-- ----------------------------
DROP TABLE IF EXISTS `forbid`;
CREATE TABLE `forbid` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL,
  `forbid_time` int(11) NOT NULL DEFAULT '0',
  `reason` blob NOT NULL,
  `gmroleid` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`,`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of forbid
-- ----------------------------

-- ----------------------------
-- Table structure for `iplimit`
-- ----------------------------
DROP TABLE IF EXISTS `iplimit`;
CREATE TABLE `iplimit` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `ipaddr1` int(11) DEFAULT '0',
  `ipmask1` varchar(2) DEFAULT '',
  `ipaddr2` int(11) DEFAULT '0',
  `ipmask2` varchar(2) DEFAULT '',
  `ipaddr3` int(11) DEFAULT '0',
  `ipmask3` varchar(2) DEFAULT '',
  `enable` char(1) DEFAULT '',
  `lockstatus` char(1) DEFAULT '',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of iplimit
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fromuserid` int(11) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromrolename` varchar(255) COLLATE utf8_bin NOT NULL,
  `torolename` varchar(255) COLLATE utf8_bin NOT NULL,
  `mail_template_id` tinyint(3) unsigned NOT NULL,
  `maildate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `online`
-- ----------------------------
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of online
-- ----------------------------

-- ----------------------------
-- Table structure for `point`
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) DEFAULT '0',
  `zonelocalid` int(11) DEFAULT '0',
  `accountstart` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`aid`) USING BTREE,
  KEY `IX_point_aidzoneid` (`aid`,`zoneid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('1040', '1', '0', '0', '0', null, null, null);
INSERT INTO `point` VALUES ('1040', '11', '0', null, null, null, '2023-11-02 17:42:13', null);
INSERT INTO `point` VALUES ('1056', '1', '0', '0', '0', null, null, null);
INSERT INTO `point` VALUES ('1056', '11', '0', null, null, null, '2023-11-02 17:45:15', null);

-- ----------------------------
-- Table structure for `touchbuylist`
-- ----------------------------
DROP TABLE IF EXISTS `touchbuylist`;
CREATE TABLE `touchbuylist` (
  `orderid` bigint(20) NOT NULL,
  `userid` int(11) NOT NULL,
  `zoneid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `income` bigint(20) NOT NULL,
  `remain` bigint(20) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`,`userid`,`zoneid`) USING BTREE,
  KEY `roleid` (`roleid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of touchbuylist
-- ----------------------------

-- ----------------------------
-- Table structure for `touchmoney`
-- ----------------------------
DROP TABLE IF EXISTS `touchmoney`;
CREATE TABLE `touchmoney` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `income` bigint(20) NOT NULL DEFAULT '0',
  `remain` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`zoneid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of touchmoney
-- ----------------------------

-- ----------------------------
-- Table structure for `usecashlog`
-- ----------------------------
DROP TABLE IF EXISTS `usecashlog`;
CREATE TABLE `usecashlog` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fintime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `IX_usecashlog_creatime` (`creatime`) USING BTREE,
  KEY `IX_usecashlog_uzs` (`userid`,`zoneid`,`sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usecashlog
-- ----------------------------
INSERT INTO `usecashlog` VALUES ('1040', '1', '1', '1', '135000000', '15000000', '4', '2023-10-31 00:30:43', '2023-10-31 00:30:43');
INSERT INTO `usecashlog` VALUES ('1056', '1', '1', '1', '99999900', '11111100', '4', '2023-11-02 17:46:52', '2023-11-02 17:46:52');

-- ----------------------------
-- Table structure for `usecashnow`
-- ----------------------------
DROP TABLE IF EXISTS `usecashnow`;
CREATE TABLE `usecashnow` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`,`zoneid`,`sn`) USING BTREE,
  KEY `IX_usecashnow_creatime` (`creatime`) USING BTREE,
  KEY `IX_usecashnow_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usecashnow
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL,
  `Prompt` varchar(32) NOT NULL DEFAULT '',
  `answer` varchar(32) NOT NULL DEFAULT '',
  `truename` varchar(32) NOT NULL DEFAULT '',
  `idnumber` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `mobilenumber` varchar(32) DEFAULT '',
  `province` varchar(32) DEFAULT '',
  `city` varchar(32) DEFAULT '',
  `phonenumber` varchar(32) DEFAULT '',
  `address` varchar(64) DEFAULT '',
  `postalcode` varchar(8) DEFAULT '',
  `gender` int(11) DEFAULT '0',
  `birthday` datetime DEFAULT NULL,
  `creatime` datetime NOT NULL,
  `qq` varchar(32) DEFAULT '',
  `passwd2` varchar(64) DEFAULT NULL,
  `zoneid` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `IX_users_name` (`name`) USING BTREE,
  KEY `IX_users_creatime` (`creatime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1040', '1', 'e½CÙÊ¦à,™\n‚e-Ê', '', '', '·çÇé', '123', '', '1', '2', '3', '4', '5', '6', '7', '2023-10-31 00:21:11', '2023-10-31 00:21:10', '', 'e½CÙÊ¦à,™\n‚e-Ê', '0');
INSERT INTO `users` VALUES ('1056', '1234', 'í+FŒ_‘_?÷]phº®', '', '', '·çÇé', '123', '', '1', '2', '3', '4', '5', '6', '7', '2023-11-02 17:42:49', '2023-11-02 17:42:46', '', 'í+FŒ_‘_?÷]phº®', '0');

-- ----------------------------
-- Table structure for `viptable`
-- ----------------------------
DROP TABLE IF EXISTS `viptable`;
CREATE TABLE `viptable` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `userid` int(32) NOT NULL,
  `zoneid` int(32) NOT NULL,
  `viplevel` int(32) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `totalcash` int(32) NOT NULL,
  `newcash` int(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_userid` (`userid`,`zoneid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of viptable
-- ----------------------------
INSERT INTO `viptable` VALUES ('3', '1040', '1', '8', '2023-10-31 00:00:00', '2023-11-30 00:00:00', '150000', '150000');
INSERT INTO `viptable` VALUES ('4', '1056', '1', '8', '2023-11-02 00:00:00', '2023-12-02 00:00:00', '111111', '111111');

-- ----------------------------
-- Procedure structure for `acquireusercharge`
-- ----------------------------
DROP PROCEDURE IF EXISTS `acquireusercharge`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `acquireusercharge`(IN `uid1` INT, IN `zid1` INT, OUT `total` INT, OUT `LastTransactionDate` DATETIME)
BEGIN
	SELECT cash, fintime INTO total, LastTransactionDate FROM usecashlog WHERE userid = uid1 and zoneid = zid1 ORDER BY sn DESC LIMIT 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `acquireuserpasswd`
-- ----------------------------
DROP PROCEDURE IF EXISTS `acquireuserpasswd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `acquireuserpasswd`(IN `name1` VARCHAR(64), OUT `uid1` INT, OUT `passwd1` VARCHAR(64))
    NO SQL
BEGIN
  DECLARE passwdtemp VARCHAR(64);
  START TRANSACTION;
    SELECT id, passwd INTO uid1, passwdtemp FROM users WHERE name = name1;
    SELECT fn_varbintohexsubstring(1,passwdtemp,1,0) INTO passwd1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addForbid`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addForbid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addForbid`(in userid1 INTEGER, in type1 INTEGER, in forbid_time1 INTEGER, in reason1 BINARY(255), in gmroleid1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE forbid SET ctime = now(), forbid_time = forbid_time1, reason = reason1, gmroleid = gmroleid1 WHERE userid = userid1 AND type = type1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO forbid VALUES(userid1, type1, now(), forbid_time1, reason1, gmroleid);
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addGM`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addGM`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addGM`(in userid INTEGER, in zoneid INTEGER)
BEGIN
  DECLARE x INTEGER;
  START TRANSACTION;
    SET x = 0;
    WHILE x < 12 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 100;
    WHILE x < 106 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 200;
    WHILE x < 215 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 500;
    WHILE x < 519 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addmail`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addmail`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addmail`(IN `fromuserid` INT, IN `touserid` INT, IN `fromrolename` VARCHAR(255) CHARSET utf8, IN `torolename` VARCHAR(255) CHARSET utf8, IN `mail_template_id` TINYINT UNSIGNED)
    NO SQL
INSERT INTO `mail` (`fromuserid`, `touserid`, `fromrolename`, `torolename`, `mail_template_id`) VALUES (fromuserid, touserid, fromrolename, torolename, mail_template_id)
;
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addtouchbuy`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addtouchbuy`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addtouchbuy`(IN `orderid` BIGINT, IN `userid` INT, IN `zoneid` INT, IN `roleid` INT, IN `cost` INT, IN `income` BIGINT, IN `remain` BIGINT)
    NO SQL
BEGIN
INSERT INTO `touchbuylist` (`orderid`, `userid`, `zoneid`, `roleid`, `cost`, `income`, `remain`) VALUES (orderid, userid, zoneid, roleid, cost, income, remain);
UPDATE `touchmoney` SET `remain` = remain WHERE `userid` = userid;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `adduser`
-- ----------------------------
DROP PROCEDURE IF EXISTS `adduser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduser`(IN `name1` VARCHAR(64), IN `passwd1` VARCHAR(64), IN `prompt1` VARCHAR(32), IN `answer1` VARCHAR(32), IN `truename1` VARCHAR(32), IN `idnumber1` VARCHAR(32), IN `email1` VARCHAR(32), IN `mobilenumber1` VARCHAR(32), IN `province1` VARCHAR(32), IN `city1` VARCHAR(32), IN `phonenumber1` VARCHAR(32), IN `address1` VARCHAR(64), IN `postalcode1` VARCHAR(8), IN `gender1` INT, IN `birthday1` VARCHAR(32), IN `qq1` VARCHAR(32), IN `passwd21` VARCHAR(64))
BEGIN
  DECLARE idtemp INTEGER;
    SELECT IFNULL(MAX(id), 1024) + 16 INTO idtemp FROM users;
    INSERT INTO users (id,name,passwd,prompt,answer,truename,idnumber,email,mobilenumber,province,city,phonenumber,address,postalcode,gender,birthday,creatime,qq,passwd2) VALUES( idtemp, name1, passwd1, prompt1, answer1, truename1, idnumber1, email1, mobilenumber1, province1, city1, phonenumber1, address1, postalcode1, gender1, birthday1, now(), qq1, passwd21 );
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `adduserpoint`
-- ----------------------------
DROP PROCEDURE IF EXISTS `adduserpoint`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduserpoint`(in uid1 INTEGER, in aid1 INTEGER, in time1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
 START TRANSACTION;
    UPDATE point SET time = IFNULL(time,0) + time1 WHERE uid1 = uid AND aid1 = aid;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO point (uid,aid,time) VALUES (uid1,aid1,time1);
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addUserPriv`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserPriv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUserPriv`(in userid INTEGER, in zoneid INTEGER, in rid INTEGER)
BEGIN
  START TRANSACTION;
    INSERT INTO auth VALUES(userid, zoneid, rid);
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addvip`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addvip`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addvip`(in userid1 INTEGER, in zoneid1 INTEGER, in viplevel1 INTEGER, in starttime1 DATETIME, in endtime1 DATETIME, in totalcash1 INTEGER, in newcash1 INTEGER)
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE viptable SET viplevel = viplevel1, starttime = starttime1, endtime = endtime1, totalcash = totalcash1, newcash = newcash1 WHERE userid = userid1 AND zoneid=zoneid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO viptable (userid, zoneid, viplevel, starttime, endtime, totalcash, newcash) VALUES (userid1, zoneid1, viplevel1, starttime1, endtime1,totalcash1,newcash1);
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `changePasswd`
-- ----------------------------
DROP PROCEDURE IF EXISTS `changePasswd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePasswd`(in name1 VARCHAR(64), in passwd1 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd = passwd1 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `changePasswd2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `changePasswd2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePasswd2`(in name1 VARCHAR(64), in passwd21 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd2 = passwd21 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `clearonlinerecords`
-- ----------------------------
DROP PROCEDURE IF EXISTS `clearonlinerecords`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clearonlinerecords`(in zoneid1 INTEGER, in aid1 INTEGER)
BEGIN
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteTimeoutForbid`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteTimeoutForbid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTimeoutForbid`(in userid1 INTEGER)
BEGIN
  START TRANSACTION;
    DELETE FROM forbid WHERE userid = userid1 AND timestampdiff(second, ctime, now()) > forbid_time;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `delUserPriv`
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUserPriv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUserPriv`(in userid1 INTEGER, in zoneid1 INTEGER, in rid1 INTEGER, in deltype1 INTEGER)
BEGIN
START TRANSACTION;
  IF deltype1 = 0 THEN
    DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1 AND rid = rid1;
  ELSE
    IF deltype1 = 1 THEN
      DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1;
    ELSE
      IF deltype1 = 2 THEN
        DELETE FROM auth WHERE userid = userid1;
      END IF;
    END IF;
  END IF;
COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `enableiplimit`
-- ----------------------------
DROP PROCEDURE IF EXISTS `enableiplimit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `enableiplimit`(in uid1 INTEGER, in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET enable=enable1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,enable) VALUES (uid1,enable1);
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `lockuser`
-- ----------------------------
DROP PROCEDURE IF EXISTS `lockuser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lockuser`(in uid1 INTEGER, in lockstatus1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET lockstatus=lockstatus1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,lockstatus,enable) VALUES (uid1,lockstatus1,'t');
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `recordoffline`
-- ----------------------------
DROP PROCEDURE IF EXISTS `recordoffline`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recordoffline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite1 INTEGER)
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE uid = uid1 AND aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online WHERE ID = uid1;
    SET rowcount = ROW_COUNT();
    IF overwrite1 = rowcount THEN
      SELECT zoneid, zonelocalid INTO zoneid1, zonelocalid1 FROM point WHERE uid = uid1 AND aid = aid1;
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `recordonline`
-- ----------------------------
DROP PROCEDURE IF EXISTS `recordonline`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recordonline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite INTEGER)
BEGIN
  DECLARE tmp_zoneid INTEGER;
  DECLARE tmp_zonelocalid INTEGER;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    SELECT SQL_CALC_FOUND_ROWS zoneid, zonelocalid INTO tmp_zoneid, tmp_zonelocalid FROM point WHERE uid = uid1 and aid = aid1;
    INSERT INTO online (ID) VALUES (uid1);
    SET rowcount = FOUND_ROWS();
    IF rowcount = 0 THEN
      INSERT INTO point (uid, aid, time, zoneid, zonelocalid, lastlogin) VALUES (uid1, aid1, 0, zoneid1, zonelocalid1, now());
    ELSE IF tmp_zoneid IS NULL OR overwrite = 1 THEN
      UPDATE point SET zoneid = zoneid1, zonelocalid = zonelocalid1, lastlogin = now() WHERE uid = uid1 AND aid = aid1;
    END IF;
    END IF;
    IF tmp_zoneid IS NULL THEN
      SET overwrite = 1;
    ELSE
      SET zoneid1 = tmp_zoneid;
      SET zonelocalid1 = tmp_zonelocalid;
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `remaintime`
-- ----------------------------
DROP PROCEDURE IF EXISTS `remaintime`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remaintime`(in uid1 INTEGER, in aid1 INTEGER, out remain INTEGER, out freetimeleft INTEGER)
BEGIN
  DECLARE enddate1 DATETIME;
  DECLARE now1 DATETIME;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  SET now1 = now();
  IF aid1 = 0 THEN
    SET remain = 86313600;
    SET enddate1 = date_add(now1, INTERVAL '30' DAY);
  ELSE
    SELECT time, IFNULL(enddate, now1) INTO remain, enddate1 FROM point WHERE uid = uid1 AND aid = aid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      SET remain = 0;
      INSERT INTO point (uid,aid,time) VALUES (uid1, aid1, remain);
    END IF;
  END IF;
  SET freetimeleft = 0;
  IF enddate1 > now1 THEN
    SET freetimeleft = timestampdiff(second, now1, enddate1);
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setiplimit`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setiplimit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setiplimit`(in uid1 INTEGER, in ipaddr11 INTEGER, in ipmask11 VARCHAR(2), in ipaddr21 INTEGER, in ipmask21 VARCHAR(2), in ipaddr31 INTEGER, in ipmask31 VARCHAR(2), in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE iplimit SET ipaddr1 = ipaddr11, ipmask1 = ipmask11, ipaddr2 = ipaddr21, ipmask2 = ipmask21, ipaddr3 = ipaddr31, ipmask3 = ipmask31 WHERE uid = uid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO iplimit (uid, ipaddr1, ipmask1, ipaddr2, ipmask2, ipaddr3, ipmask3, enable1) VALUES (uid1, ipaddr11, ipmask11, ipaddr21, ipmask21, ipaddr31, ipmask31,'t');
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `updateUserInfo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateUserInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUserInfo`(in name1 VARCHAR(32),
  in prompt1 VARCHAR(32),
  in answer1 VARCHAR(32),
  in truename1 VARCHAR(32),
  in idnumber1 VARCHAR(32),
  in email1 VARCHAR(32),
  in mobilenumber1 VARCHAR(32),
  in province1 VARCHAR(32),
  in city1 VARCHAR(32),
  in phonenumber1 VARCHAR(32),
  in address1 VARCHAR(32),
  in postalcode1 VARCHAR(32),
  in gender1 INTEGER,
  in birthday1 VARCHAR(32),
  in qq1 VARCHAR(32))
BEGIN
  START TRANSACTION;
    UPDATE users SET prompt = prompt1, answer = answer1, truename = truename1, idnumber = idnumber1, email = email1, mobilenumber = mobilenumber1, province = province1, city = city1, phonenumber = phonenumber1, address = address1, postalcode = postalcode1, gender = gender1, birthday = birthda1, qq = qq1 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `usecash`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usecash`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usecash`(in userid1 INTEGER,
  in zoneid1 INTEGER,
  in sn1 INTEGER,
  in aid1 INTEGER,
  in point1 INTEGER,
  in cash1 INTEGER,
  in status1 INTEGER,
  out error INTEGER)
BEGIN
DECLARE sn_old INTEGER;
DECLARE aid_old INTEGER;
DECLARE point_old INTEGER;
DECLARE cash_old INTEGER;
DECLARE status_old INTEGER;
DECLARE createtime_old DATETIME;
DECLARE time_old INTEGER;
DECLARE need_restore INTEGER;
DECLARE exists1 INTEGER;
DECLARE rowcount INTEGER;
START TRANSACTION;
  SET error = 0;
  SET need_restore = 0;
  SELECT SQL_CALC_FOUND_ROWS sn, aid, point, cash, status, creatime INTO sn_old, aid_old, point_old, cash_old, status_old, createtime_old FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn >= 0;
  SET rowcount = FOUND_ROWS();
  IF rowcount = 1 THEN
    SET exists1 = 1;
  ELSE
    SET exists1 = 0;
  END IF;
  IF status1 = 0 THEN
    IF exists1 = 0 THEN
      SELECT aid, point INTO aid1, point1 FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      SET point1 = IFNULL(point1,0);
      UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
      SET rowcount = ROW_COUNT();
      IF rowcount = 1 THEN
        UPDATE usecashnow SET sn = 0, status = 1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      ELSE
        SET error = -8;
      END IF;
    END IF;
  ELSE
    IF status1 = 1 THEN
      IF exists1 = 0 THEN
        UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
        SET rowcount = ROW_COUNT();
        IF rowcount = 1 THEN
          INSERT INTO usecashnow (userid, zoneid, sn, aid, point, cash, status, creatime) VALUES (userid1, zoneid1, sn1, aid1, point1, cash1, status1, now());
        ELSE
          INSERT INTO usecashnow (userid, zoneid, sn, aid, point, cash, status, creatime) SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
          SET error = -8;
        END IF;
      ELSE
        INSERT INTO usecashnow (userid, zoneid, sn, aid, point, cash, status, creatime) SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
        SET error = -7;
      END IF;
    ELSE
      IF status1 = 2 THEN
        IF exists1 = 1 AND status_old = 1 AND sn_old = 0 THEN
          UPDATE usecashnow SET sn = sn1, status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
        ELSE
          SET error = -9;
        END IF;
      ELSE
        IF status1 = 3 THEN
           IF exists1 = 1 AND status_old = 2 THEN
            UPDATE usecashnow SET status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
           ELSE
            SET error = -10;
            END IF;
        ELSE
         IF status1 = 4 THEN
          IF exists1 = 1 THEN
            DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
						DELETE FROM cash WHERE userid = userid1 AND zoneid = zoneid1;
            INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
          END IF;
          IF NOT (exists1 = 1 AND status_old = 3) THEN
            SET error = -11;
          END IF;
        ELSE
          SET error = -12;
        END IF;
      END IF;
    END IF;
  END IF;
  END IF;
  IF need_restore = 1 THEN
    UPDATE point SET time = time+point_old WHERE uid = userid1 AND aid = aid_old;
    DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
    INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
  END IF;
COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fn_varbintohexsubstring`
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_varbintohexsubstring`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_varbintohexsubstring`(fsetprefix bit,pbinin varbinary(8000),startoffset int,cbytesin int) RETURNS varchar(4000) CHARSET latin1
    READS SQL DATA
BEGIN
  DECLARE pstrout VARCHAR(4000);
  DECLARE i int;
  DECLARE firstnibble int;
  DECLARE secondnibble int;
  DECLARE tempint int;
  DECLARE hexstring char( 16);
  BEGIN
    IF( pbinin IS NOT NULL) THEN
      SET i= 0, cbytesin= CASE WHEN( cbytesin> 0) THEN cbytesin ELSE LENGTH( pbinin) END,
         pstrout= CASE WHEN( fsetprefix= 1) THEN '0x'  ELSE ''  END,
         hexstring= '0123456789abcdef';
      IF((( cbytesin * 2) + 2> 4000) or( startoffset< 1)) THEN
        RETURN NULL;
      END IF;
      WHILE( i< cbytesin) DO
        SET tempint= ASCII( substring( pbinin, i + startoffset, 1));
        SET firstnibble= TRUNCATE((tempint / 16),0);
        SET secondnibble= tempint % 16;
        SET pstrout= CONCAT(pstrout ,cast( substring( hexstring,( firstnibble+1), 1) AS CHAR), cast( substring( hexstring,( secondnibble+1), 1) AS CHAR));
        SET i= i + 1;
      END WHILE;
      RETURN pstrout;
    END IF;
    RETURN NULL;
  END;
END
;;
DELIMITER ;
