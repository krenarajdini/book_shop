/*
 Navicat Premium Data Transfer

 Source Server         : online_book_shop
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : online_book_shop

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 26/05/2022 20:53:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `ac_id` int NOT NULL AUTO_INCREMENT,
  `hash_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sold_number` int NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `u_id` int NOT NULL,
  PRIMARY KEY (`ac_id`) USING BTREE,
  INDEX `u_id_fk`(`u_id` ASC) USING BTREE,
  CONSTRAINT `u_id_fk` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `book_number` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `publisher` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `edition` int NOT NULL,
  `price` float NOT NULL,
  `year` year NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cover_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`book_number`) USING BTREE,
  INDEX `category_id_fk`(`category_id` ASC) USING BTREE,
  CONSTRAINT `category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1684055150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (7136587, 'Dune', 'Frank Herbert', 'Ace', 1, 20.99, 2003, 'Praise for Dune\r\n\r\n“I know nothing comparable to it except The Lord of the Rings.”—Arthur C. Clarke\r\n\r\n“It is possible that Dune is even more relevant now than when it was first published.”—The New Yorker\r\n \r\n“An astonishing science fiction phenomenon.”—The Washington Post \r\n\r\n“One of the monuments of modern science fiction.”—Chicago Tribune\r\n\r\n“Powerful, convincing, and most ingenious.”—Robert A. Heinlein\r\n \r\n“Herbert’s creation of this universe, with its intricate development and analysis of ecology, religion, politics and philosophy, remains one of the supreme and seminal achievements in science fiction.”—Louisville Times', 'img\\dune.jpg', 6);
INSERT INTO `books` VALUES (60935464, 'To Kill a Mockingbird', 'Harper Lee', '‎ Harper Perennial', 1, 7.19, 2002, 'Harper Lee\'s Pulitzer Prize-winning masterwork of honor and injustice in the deep South—and the heroism of one man in the face of blind and violent hatred\r\n\r\nOne of the most cherished stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime.', 'img\\bird.jpg', 6);
INSERT INTO `books` VALUES (61155772, 'Muhammad: A Prophet for Our Time', 'Armstrong, Karen', 'HarperOne', 1, 3.78, 2007, 'The Man Who Inspired the World\'s Fastest-Growing Religion\r\n\r\nMuhammad presents a fascinating portrait of the founder of a religion that continues to change the course of world history. Muhammad\'s story is more relevant than ever because it offers crucial insight into the true origins of an increasingly radicalized Islam. Countering those who dismiss Islam as fanatical and violent, Armstrong offers a clear, accessible, and balanced portrait of the central figure of one of the world\'s great religions.\r\n\r\nReview:\r\nMuhammad was born in 570 CE, and over the following sixty years built a thriving spiritual community, laying the foundations of a religion that changed the course of world history. There is more historical data on his life than on that of the founder of any other major faith, and yet his story is little known.\r\n\r\nKaren Armstrong\'s immaculately researched new biography of Muhammad will enable readers to understand the true origins and spirituality of a faith that is all too often misrepresented as cruel, intolerant, and inherently violent. An acclaimed authority on religious and spiritual issues, Armstrong offers a balanced, in-depth portrait, revealing the man at the heart of Islam by dismantling centuries of misconceptions. Armstrong demonstrates that Muhammad\'s life—a pivot point in history—has genuine relevance to the global crises we face today.', 'img\\9780061155772-us.jpg', 5);
INSERT INTO `books` VALUES (134685997, 'Effective Java', 'Joshua Bloch', 'Addison-Wesley Professional', 3, 25.51, 2017, 'Since this Jolt-award winning classic was last updated in 2008, the Java programming environment has changed dramatically. Java 7 and Java 8 introduced new features and functions including, forEach() method in Iterable interface, default and static methods in Interfaces, Functional Interfaces and Lambda Expressions, Java Stream API for Bulk Data Operations on Collections, Java Time API, Collection API improvements, Concurrency API improvements, and Java IO improvements.\r\n\r\n \r\n\r\nIn this new edition of Effective Java, Bloch explores new design patterns and language idioms that have been introduced since the second edition was released in 2008 shortly after Java SE6, including Lambda, streams, generics and collections, as well as selected Java 9 features.\r\n \r\nAs in previous editions, each chapter consists of several “items” presented in the form of a short, standalone essay that provides specific advice, insight into Java platform subtleties, and updated code examples. The comprehensive descriptions and explanations for each item illuminate what to do, what not to do, and why.\r\n\r\nUpdated techniques and best practices on classic topics, including objects, classes, libraries, methods, and serialization\r\nHow to avoid the traps and pitfalls of commonly misunderstood subtleties of the language\r\nFocus on the language and its most fundamental libraries: java.lang, java.util, and, to a lesser extent, java.util.concurrent and java.io', 'img\\41zLisPNN2L._SX376_BO1,204,203,200_.jpg', 1);
INSERT INTO `books` VALUES (141656957, 'Passion for Islam', 'Caryle Murphy', 'Scribner', 1, 23.03, 2007, '\"Islam\'s revival is reshaping Egypt and other Arab countries in ways beyond violent politics. The yearning for personal solace, a just political system, indigenous lifestyles, and relevant theology all await satisfaction....Just as the Nile runs through Egypt for almost eight hundred miles, giving it life, so also the Straight Way, the way of Allah, runs through it, beckoning its people. The search by Egypt\'s Muslims for a modern understanding of the Straight Way is the essence of today\'s passion for Islam.\" -- from Chapter 1, \"First Verses\"\r\n\r\nWritten by a Pulitzer Prize-winning journalist, this authoritative and enthralling primer on the modern face of Islam provides one of the most comprehensive accountings for the roots of religious terrorism and Middle Eastern strife.\r\n\r\nOver decades, a myriad of social, political, and religious factors has made today\'s Middle East a combustible region and has contributed to Islam\'s new power and turmoil. Passion for Islam uses one particular country, Egypt, as a lens through which to show how these forces play out across the area, allowing terrorism to gain a foothold.\r\n\r\nThrough the personal experiences and observations of individual Egyptians encountered during her five years as the Washington Post\'s Cairo bureau chief, veteran journalist Caryle Murphy explores how Islam\'s contemporary revival is unfolding on four different levels: \"Pious Islam\" highlights the groundswell of grassroots piety that has created more Islamic societies; \"Political Islam\" examines how Islamists, using both violent and peaceful means, are reshaping the region\'s authoritarian secular political order and redefining Islam\'s role in the public arena; \"Cultural Islam\" looks at Egyptian efforts to resist a ubiquitous Western culture by asserting an Islamic identity; \"Thinking Islam\" reveals how intellectuals are reexamining their theological heritage with the aim of modernizing Islam.\r\n\r\nRepresenting years of exhaustive research, Passion for Islam also looks at how the tortured Israeli-Palestinian conflict has contributed to the region\'s religious ferment and political tumult. By revealing the day-to-day ramifications of all these issues through the eyes of Egyptian intellectuals, holy men, revolutionaries, and ordinary citizens, Passion for Islam brings an unparalleled vitality and depth to Western perceptions of Middle Eastern conflict.', 'img\\51niyYCKeoL.jpg', 5);
INSERT INTO `books` VALUES (470546646, 'English Grammar For Dummies', 'Geraldine Woods', 'For Dummies', 2, 9.96, 2010, 'The fun and easy way to improve your grammar\r\nEnhancing your speaking and writing skills helps in everyday situations, such as writing a paper for school, giving a presentation to a company\'s bigwigs, or communicating effectively with family and friends. English Grammar For Dummies, 2nd Edition gives you the latest techniques for improving your efficiency with English grammar and punctuation.\r\n\r\nTeaches the rules of verbs, adjectives, and adverbs; prepositions, propositions, and pronoun pronouncements; punctuation; possessives; and proofreading skills for all communication\r\nGeraldine Woods is the author of English Grammar Workbook For Dummies, College Admission Essays For Dummies, Research Papers For Dummies, SAT I For Dummies, 6th Edition, AP English Literature For Dummies, and AP English Language For Dummies\r\nFor speakers and writers of all skill levels, English Grammar For Dummies, 2nd Edition provides easy-to-follow, practical information for improving your command of English grammar.', 'img\\english_dummies.jpg', 1);
INSERT INTO `books` VALUES (520269705, 'Confucianism', 'Goldin, Paul R.', 'University of California Press', 1, 35.43, 2011, 'This book presents a concise, balanced overview of China’s oldest and most revered philosophy. In clear, straightforward language, Paul R. Goldin explores how Confucianism was conceived and molded by its earliest masters, discusses its main tenets, and considers its history and relevance for the modern world. Goldin guides readers through the philosophies of the three major classical Confucians―Confucius, Mencius, and Xunzi―as well as two short anonymous treatises, the “Great Learning” and the “Classic of Filial Piety.” He also discusses some of the main Neo-Confucian philosophers and outlines transformations Confucianism has undergone in the past century.', 'img\\confus.jpg', 5);
INSERT INTO `books` VALUES (544176561, 'The Name of the Rose', 'Umberto Eco', 'HarperVia', 1, 48.66, 1994, 'Umberto Eco’s first novel, an international sensation and winner of the Premio Strega and the Prix Médicis Étranger awards\r\n\r\nThe year is 1327. Benedictines in a wealthy Italian abbey are suspected of heresy, and Brother William of Baskerville arrives to investigate. When his delicate mission is suddenly overshadowed by seven bizarre deaths, Brother William turns detective. His tools are the logic of Aristotle, the theology of Aquinas, the empirical insights of Roger Bacon—all sharpened to a glistening edge by wry humor and a ferocious curiosity. He collects evidence, deciphers secret symbols and coded manuscripts, and digs into the eerie labyrinth of the abbey, where “the most interesting things happen at night.”\r\n\r\n“Like the labyrinthine library at its heart, this brilliant novel has many cunning passages and secret chambers . . . Fascinating . . . ingenious . . . dazzling.” – Newsweek', 'img\\rose.jpg', 6);
INSERT INTO `books` VALUES (679406417, 'The Complete Maus', 'Art Spiegelman', 'Pantheon', 1, 31.5, 1996, 'It is the story of Vladek Speigelman, a Jewish survivor of Hitler\'s Europe, and his son, a cartoonist coming to terms with his father\'s story. Maus approaches the unspeakable through the diminutive. Its form, the cartoon (the Nazis are cats, the Jews mice), shocks us out of any lingering sense of familiarity. Maus is a haunting tale within a tale. Vladek\'s harrowing story of survival is woven into the author\'s account of his tortured relationship with his aging father. Against the backdrop of guilt brought by survival, they stage a normal life of small arguments and unhappy visits. This astonishing retelling of our century\'s grisliest news is a story of survival, not only of Vladek but of the children who survive even the survivors. Maus studies the bloody pawprints of history and tracks its meaning for all of us.', 'img\\maus.jpg', 2);
INSERT INTO `books` VALUES (810959704, 'The Hour of the Cobra', 'Williams, Maiya', 'Amulet Books', 1, 15, 2006, 'This sequel to the award-winning time-travel adventure, The Golden Hour, takes readers to Cleopatra\'s Egypt\r\n\r\nThis time fourteen-year-old Xanthe leads the adventure as the four time-traveling kids from The Golden Hour make a trip back to ancient Egypt to rescue the library at Alexandria from destruction by Caesar\'s troops. Xanthe is particularly excited to visit Egypt, where she hopes to get a glimpse of Cleopatra. But she gets more than the quick peek she bargained for when young Cleopatra mistakes her for the goddess Isis. The princess begs Xanthe to intervene in a royal feud between Cleopatra and her brother Ptolemy. Xanthe, who\'s feeling overshadowed by her own brother, Xavier, is tempted to help the princess, thus changing history and setting off a chain of events that traps Rowan and Nina in time limbo.\r\n\r\nThe Egyptian setting and action-packed plot makes this a particularly exciting installment in the series, and the African American heroine is a welcome addition to the ranks of fantasy protagonists.\r\n\r\nAwards and praise for The Golden Hour, the prequel to The Hour of the Cobra\r\nBook Sense Pick\r\nInternational Reading Association Intermediate Fiction Award\r\nSouthern California Booksellers\' Association Children\'s Book Prize\r\n\"A trip well worth taking.\" -The New York Times\r\n\"One of the few fantasies with any African American characters...\" - Booklist\r\n\"Action-packed and laden with good-natured humor, Williams\' tale is a journey worth taking.\" - Publisher\'s Weekly\r\n\r\nAbout the Author:\r\nMaiya Williams was an editor and vice president of The Harvard Lampoon and a writer for the TV shows Rugrats and The Fresh Prince of Bel Air. She is currently a writer and producer for Mad TV and lives with her husband, three children, a Labrador retriever, and a variety of fish in Pacific Palisades, California.', 'img\\the hour of cobra.jpg', 3);
INSERT INTO `books` VALUES (877604001, 'Alkymisten', 'Paulo Coelho', 'Bazar Forlag', 3, 179.1, 2006, 'The Alchemist details the journey of a young Andalusian shepherd boy named Santiago. Santiago, believing a recurring dream to be prophetic, decides to travel to the pyramids of Egypt to find treasure. On the way, he encounters love, danger, opportunity and disaster. One of the significant characters that he meets is an old king named Melchizedek who tells him that \"When you want something, all the universe conspires in helping you to achieve it.\" This is the core philosophy and motif of the book.', 'img\\alcymisten.jpg', 2);
INSERT INTO `books` VALUES (978000713, 'The Fellowship of the Ring: Lord of the Rings', 'J. R. R. Tolkien', 'Recorded Books', 1, 330.75, 2021, 'This brand-new unabridged audiobook of The Fellowship of the Ring, the first part of J. R. R. Tolkien’s epic adventure The Lord of the Rings, is read by the BAFTA Award-winning actor, director, and author Andy Serkis. \r\n\r\nIn a sleepy village in the Shire, a young hobbit is entrusted with an immense task. He must make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ruling Ring of Power - the only thing that prevents the Dark Lord Sauron’s evil dominion. Thus begins J. R. R. Tolkien’s classic tale of adventure, which continues in The Two Towers and The Return of the King.', 'img\\lord.jpg', 6);
INSERT INTO `books` VALUES (978140885, 'Harry Potter and the Philosopher\'s Stone', 'Rowling J.K.', 'Bloomsbury', 1, 15.34, 2014, 'Harry Potter Has Never Even Heard Of Hogwarts When The Letters Start Dropping On The Doormat At Number Four, Privet Drive. Addressed In Green Ink On Yellowish Parchment With A Purple Seal, They Are Swiftly Confiscated By His Grisly Aunt And Uncle. Then, On Harry\'S Eleventh Birthday, A Great Beetle-Eyed Giant Of A Man Called Rubeus Hagrid Bursts In With Some Astonishing News: Harry Potter Is A Wizard, And He Has A Place At Hogwarts School Of Witchcraft And Wizardry. An Incredible Adventure Is About To Begin!These New Editions Of The Classic And Internationally Bestselling, Multi-Award-Winning Series Feature Instantly Pick-Up-Able New Jackets By Jonny Duddle, With Huge Child Appeal, To Bring Harry Potter To The Next Generation Of Readers. It\'S Time To Pass The Magic On .', 'img\\harry-poter.jpg', 2);
INSERT INTO `books` VALUES (1107539331, 'English Grammar in Use Book', 'Raymond Murphy', 'Cambridge University Press', 5, 47.73, 2019, 'Raymond Murphy\'s English Grammar in Use is the grammar reference and practice book for learners of English at intermediate (B1-B2) level. It’s perfect for self-study, but also ideal for supplementary grammar activities in the classroom.\r\n\r\nThe fifth edition is available as a printed book and ebook with audio, for on-the-go learning. It comes with interactive exercises and integrated audio to help with listening and pronunciation skills.\r\n\r\nAvailable with an ebook with integrated audio to help with listening and pronunciation skills and can be accessed online or downloaded to an iPad or Android tablet.\r\nAuthored by Raymond Murphy who has helped millions of learners around the world improve their language skills and become successful speakers of English.\r\nBright, appealing new artwork with reworked exercises allowing you to focus more on the grammar point. Plus lots of practice exercises to consolidate learning.\r\nGrammar explanations, examples and practice exercises\r\n\r\nSimple explanations, clear examples, and easy-to-understand exercises make this book perfect for both self-study and classroom activities.\r\n\r\nIt is also available with an ebook, which includes audio of the example sentences. You can use the ebook online or download it to your iPad or Android tablet. Perfect for studying grammar anytime and anywhere.\r\n\r\nWhichever format you choose, you can be sure that you have a comprehensive guide to grammar that you can trust.', 'img\\english grammar in use.jpg', 1);
INSERT INTO `books` VALUES (1119293499, 'Calculus For Dummies', 'Mark Ryan', 'For Dummies', 2, 11.64, 2016, 'Slay the calculus monster with this user-friendly guide\r\nCalculus For Dummies, 2nd Edition makes calculus manageable―even if you\'re one of the many students who sweat at the thought of it. By breaking down differentiation and integration into digestible concepts, this guide helps you build a stronger foundation with a solid understanding of the big ideas at work. This user-friendly math book leads you step-by-step through each concept, operation, and solution, explaining the \"how\" and \"why\" in plain English instead of math-speak. Through relevant instruction and practical examples, you\'ll soon learn that real-life calculus isn\'t nearly the monster it\'s made out to be.\r\n\r\nCalculus is a required course for many college majors, and for students without a strong math foundation, it can be a real barrier to graduation. Breaking that barrier down means recognizing calculus for what it is―simply a tool for studying the ways in which variables interact. It\'s the logical extension of the algebra, geometry, and trigonometry you\'ve already taken, and Calculus For Dummies, 2nd Edition proves that if you can master those classes, you can tackle calculus and win.\r\n\r\nIncludes foundations in algebra, trigonometry, and pre-calculus concepts\r\nExplores sequences, series, and graphing common functions\r\nInstructs you how to approximate area with integration\r\nFeatures things to remember, things to forget, and things you can\'t get away with\r\nStop fearing calculus, and learn to embrace the challenge. With this comprehensive study guide, you\'ll gain the skills and confidence that make all the difference. Calculus For Dummies, 2nd Edition provides a roadmap for success, and the backup you need to get there.', 'img\\41gFM9Des5L._SX397_BO1,204,203,200_.jpg', 1);
INSERT INTO `books` VALUES (1491905018, 'Modern PHP: New Features and Good Practices', 'Josh Lockhart', 'O\'Reilly Media', 1, 21.99, 2015, 'PHP is experiencing a renaissance, though it may be difficult to tell with all of the outdated PHP tutorials online. With this practical guide, you’ll learn how PHP has become a full-featured, mature language with object-orientation, namespaces, and a growing collection of reusable component libraries.\n\nAuthor Josh Lockhart—creator of PHP The Right Way, a popular initiative to encourage PHP best practices—reveals these new language features in action. You’ll learn best practices for application architecture and planning, databases, security, testing, debugging, and deployment. If you have a basic understanding of PHP and want to bolster your skills, this is your book.\n\nLearn modern PHP features, such as namespaces, traits, generators, and closures\nDiscover how to find, use, and create PHP components\nFollow best practices for application security, working with databases, errors and exceptions, and more\nLearn tools and techniques for deploying, tuning, testing, and profiling your PHP applications\nExplore Facebook’s HVVM and Hack language implementations—and how they affect modern PHP\nBuild a local development environment that closely matches your production computer server', 'img\\modern PHP.jpg', 1);
INSERT INTO `books` VALUES (1522792147, 'The Joy of PHP', 'Alan Forbes', 'BeakCheck LLC', 6, 3.54, 2012, 'Third Edition now with bonus chapters.Have you ever wanted to design your own website or browser application but thought it would be too difficult or just didn\'t know where to start? Have you found the amount of information on the Internet either too daunting or not geared for your skill set or worse-- just plain boring? Are you interested in learning to program PHP and have some fun along the way? If so, then The Joy of PHP by Alan Forbes is the book for you!! Alan starts with some basic HTML so the absolute beginner can catch up quickly and then goes step by step on how PHP works. You start with the easy stuff--like how to create and run simple PHP scripts that modify web pages-- and then build on what you\'ve learned through a series of cohesive (and fun) exercises that carry over from lesson to lesson. As the chapters progress you begin to build a web site for a growing used car dealership business. This approach keeps the material fun and challenging-- and gives what you\'ve learned a context to be relevant. A car dealership needs a constantly changing web site because the inventory of cars is always changing. HTML is not the answer for this kind of web site-- but PHP and mySQL are! Throughout the book you will be working with the web site for the car dealership and adding features and modifying it as the needs of the business (and your knowledge) grow. This writing style reinforces the previous lessons and keeps you engaged in a \"real\" project -- giving you both a sense of accomplishment and an opportunity to apply what you\'ve learned to a realistic scenario. You are far more likely to retain what you\'ve learned using this approach than just reading dry syntax documentation. The author has an easy and fun style of writing that teaches you PHP in a simple, matter of fact manner while showing you the most common uses of the commands you need to get the job done. This keeps your learning pace quick and uncluttered. If you need it, he also points you to several resources where you can learn more about the other options a PHP function can offer and-- even better--how to read and understand those resources. If you want to learn the PHP language in an easy, enjoyable, well laid out manner and to learn why PHP and mySQL are so powerful and fun to use then buy this book!! Do not buy this book if you are looking for a comprehensive reference of boring PHP syntax. This book does not attempt to cover everything about PHP. What it does do-- and does well-- is take you from being a beginner who isn\'t even sure what PHP is to someone who knows the sheer joy that only programming dynamic sites can provide. You will become someone who can read, write, and modify PHP scripts and you will be able make your website come alive. Bonus Code All the source code referenced in the book is available for easy download and well organized. You don\'t have to cut and paste out of Kindle or retype code, unless you want to. There is even a video tutorial showing how to get started. Topics Covered... - Installing and configuring PHP - Introduction to HTML - Basic PHP Syntax - Some Fun Right Away - Editors and Staying Organized - Variables, Numbers, Dates and Strings - Control Structures - How to use a database, such as mySQL - Using PHP and mySQL Together - How to create forms to Display, Add, Edit, and Delete data - Session Variables - Working with Images - PHP File Uploads - PHP Quirks and Tips - Security Considerations This book is NOT the only book you\'ll ever need to read to master PHP. The book is a gentle introduction to a very rich topic. The hope of the author is to show you that PHP isn\'t really that scary after all, it is something YOU can do, and it can even bring you joy once you get it.', 'img\\the Joy of PHP.jpg', 1);
INSERT INTO `books` VALUES (1594771537, 'Muhammad: His Life Based on the Earliest Sources', 'Lings, Martin', 'Islamic Texts Society', 1, 12.36, 1991, 'A revised edition of the internationally acclaimed biography of the prophet\r\n\r\n· Includes important additions about the prophet’s spread of Islam into Syria and its neighboring states\r\n\r\n· Contains original English translations from 8th and 9th century biographies, presented in authoritative language\r\n\r\n· Represents the final updates made on the text before the author’s death in 2005\r\n\r\nMartin Lings’ biography of Muhammad is an internationally acclaimed, comprehensive, and authoritative account of the life of the prophet. Based on the sira, the eighth- and ninth-century Arabic biographies that recount numerous events in the prophet’s life, it contains original English translations of many important passages that reveal the words of men and women who heard Muhammad speak and witnessed the events of his life.\r\n\r\nScrupulous and exhaustive in its fidelity to its sources, Muhammad: His Life Based on the Earliest Sources is presented in a narrative style that is easily comprehensible, yet authentic and inspiring in its use of language, reflecting both the simplicity and grandeur of the story it tells. This revised edition includes new sections detailing the prophet’s expanding influence and his spreading of the message of Islam into Syria and its neighboring states. It represents the final updates made to the text before the author’s death in 2005. The book has been published in 12 languages and has received numerous awards, including acknowledgment as best biography of the prophet in English at the National Seerate Conference in Islamabad.', 'img\\muhamed a.s..jpg', 5);
INSERT INTO `books` VALUES (1626728224, 'Science Comics: Cars: Engines That Move You', 'Dan Zettwoch', 'First Second', 1, 45, 2019, 'Every volume of Science Comics offers a complete introduction to a particular topic - dinosaurs, coral reefs, the solar system, volcanoes, bats, flying machines, and more. These gorgeously illustrated graphic novels offer wildly entertaining views of their subjects. Whether you\'re a fourth grader doing a natural science unit at school or a thirty year old with a secret passion for airplanes, these books are for you! In this volume, you\'ll learn where cars came from and how they work. When you pop the hood, what are you looking at? How does gasoline - or electric batteries, or even steam - make a car move? Rev up your motor and take look at the combustible history of the automobile and its explosive effects on our modern lives.', 'img\\cars.jpg', 3);
INSERT INTO `books` VALUES (1684055148, 'Marvel Action Spider-Man New Beginnings', 'Delilah S. Dawson', 'Idea & Design Works', 1, 57.91, 2019, 'A Marvelous New Era Begins Here! Readers Of All Ages Can Get Tangled Up In These All New Adventures Of Spider-Man And His Astonishing Friends! Peter Parker Has Thrown Down With Deadly Villains And Legendary Heroes, But High School Life Might Be His Greatest Challenge Yet. Luckily, He Has A Shot At Making The Grade With A Little Help From His New Friends... Miles Morales And Gwen Stacy! Collects Issues #1-3 Of The Comic Series.', 'img\\spman.jpg', 3);

-- ----------------------------
-- Table structure for buys
-- ----------------------------
DROP TABLE IF EXISTS `buys`;
CREATE TABLE `buys`  (
  `buys_id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `order_id` int NOT NULL,
  `book_number` int NOT NULL,
  PRIMARY KEY (`buys_id`) USING BTREE,
  INDEX `order_id_fk`(`order_id` ASC) USING BTREE,
  INDEX `book_nr_fk`(`book_number` ASC) USING BTREE,
  CONSTRAINT `book_nr_fk` FOREIGN KEY (`book_number`) REFERENCES `books` (`book_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buys
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `user_id`(`u_id` ASC) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_item
-- ----------------------------
DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE `cart_item`  (
  `book_number` int NOT NULL,
  `amount` int NOT NULL,
  `price` int NOT NULL,
  `cart_id` int NOT NULL,
  `item_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`item_id`) USING BTREE,
  INDEX `book_nr`(`book_number` ASC) USING BTREE,
  INDEX `cart_id`(`cart_id` ASC) USING BTREE,
  CONSTRAINT `book_nr` FOREIGN KEY (`book_number`) REFERENCES `books` (`book_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_item
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Educational');
INSERT INTO `category` VALUES (2, 'Fiction');
INSERT INTO `category` VALUES (3, 'Comic');
INSERT INTO `category` VALUES (4, 'History');
INSERT INTO `category` VALUES (5, 'Religion');
INSERT INTO `category` VALUES (6, 'Classics');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `transaction_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shipment_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` time NOT NULL,
  `total` float NOT NULL,
  `order_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `u_id` int NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `u_id`(`u_id` ASC) USING BTREE,
  CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `book_number` int NOT NULL,
  `date` date NOT NULL,
  `rating` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`review_id`) USING BTREE,
  INDEX `book_number_fk`(`book_number` ASC) USING BTREE,
  INDEX `user_id_fk`(`user_id` ASC) USING BTREE,
  CONSTRAINT `book_number_fk` FOREIGN KEY (`book_number`) REFERENCES `books` (`book_number`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shipment_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` int NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `salt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `u_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
