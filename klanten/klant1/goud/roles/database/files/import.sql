DROP TABLE IF EXISTS authors;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO authors (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES (1, 'Maci', 'O\'Reilly', 'elabadie@example.org', '1999-04-12', '1975-11-22 10:43:44');
INSERT INTO authors (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES (2, 'Lucy', 'Kulas', 'bettie18@example.org', '2010-01-21', '2009-01-23 02:16:29');
INSERT INTO authors (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES (3, 'Jayne', 'Bosco', 'will.jadyn@example.com', '2007-09-09', '2007-04-07 18:41:45');

DROP TABLE IF EXISTS posts;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO posts (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES (1, 7493, 'Vitae placeat qui laborum velit et quia.', 'Doloremque labore minus mollitia commodi animi vero distinctio. Voluptas nam eveniet sequi et labore velit. Fugit porro odit fugit blanditiis dignissimos in amet sequi.', 'Quia hic nulla quia id non quaerat vitae consequatur. Nihil itaque cupiditate nihil voluptates corporis. Minus nihil et et tempore vero eum doloremque.', '1998-03-30');
INSERT INTO posts (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES (2, 3726, 'Sit rem sunt laborum nihil.', 'Voluptas sint deleniti quam rem magnam. Deserunt autem iure in architecto ipsa aut quia.', 'Est in provident inventore dolorem molestiae nulla. Mollitia ut aliquam debitis cupiditate debitis amet dicta est. Autem voluptatem quo reprehenderit dolorem. Temporibus est quia doloribus quia.', '1972-07-20');
INSERT INTO posts (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES (3, 323, 'Esse natus eveniet quis qui non totam labore.', 'Dicta non quidem optio natus modi at. Hic veritatis ipsam et debitis ut rerum fugiat. Non non temporibus et eum omnis.', 'Rem sapiente itaque repellendus voluptas officia. Ipsa dolorem enim id omnis. Maxime odio consequatur odio inventore facere eum id.', '2007-08-17');
INSERT INTO posts (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES (4, 8311, 'Aut eum illum voluptate quia.', 'Ea aut dicta magnam. Omnis iure incidunt illum et voluptas. Voluptas quisquam consequatur aliquam porro omnis. Eveniet sunt ad dolorum delectus ut illo assumenda.', 'Cum consequatur quis aliquam quo similique sit sint adipisci. Repudiandae in omnis voluptas veniam quia aut. Sed ut qui laudantium quia.', '1979-03-06');
INSERT INTO posts (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES (5, 9956, 'Quod libero sint error eos reiciendis sit praesentium et.', 'Iste qui corrupti non dolores. Suscipit odit deleniti a corporis aliquam. Cumque soluta sit eius est. Velit autem vel doloremque.', 'Hic perspiciatis eum et doloribus est est laudantium. Perferendis saepe quis iusto. Quia ad qui autem non.', '1991-12-21');
