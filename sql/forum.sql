/*Table structure for table `forum_blizzposts` */
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `postid` int(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*Data for the table `forum_blizzposts` */

/*Table structure for table `forum_categ` */
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`num`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*Data for the table `forum_categ` */
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(10) NOT NULL DEFAULT '1',
  `categ` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `locked` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`,`num`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `forum_replies` */
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `threadid` int(10) NOT NULL,
  `content` text,
  `author` int(10) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `forumid` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Table structure for table `forum_threads` */
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `forumid` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` int(10) DEFAULT NULL,
  `replies` int(10) DEFAULT NULL,
  `views` int(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` text NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `has_blizz` tinyint(1) DEFAULT '0',
  `prefix` varchar(255) DEFAULT 'none',
  PRIMARY KEY (`id`,`forumid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;