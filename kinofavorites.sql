# Дамп таблицы a_type
# ------------------------------------------------------------

CREATE TABLE `a_type` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Дамп таблицы artist
# ------------------------------------------------------------

CREATE TABLE `artist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(11) unsigned NOT NULL,
  `type` int(1) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_id` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Дамп таблицы films
# ------------------------------------------------------------

CREATE TABLE `films` (
  `id` int(14) unsigned NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `year` year(4) NOT NULL,
  `kp_rating` float NOT NULL,
  `imdb_rating` float NOT NULL,
  `overlooked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `kino_date` date NOT NULL,
  `dvd_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Дамп таблицы tagmap
# ------------------------------------------------------------

CREATE TABLE `tagmap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `f_id` int(14) NOT NULL,
  `a_id` int(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;