-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2016 at 09:24 PM
-- Server version: 5.1.28-rc-community
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emotion_reccomendation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `evil`
--

CREATE TABLE IF NOT EXISTS `evil` (
  `vid_id` int(11) NOT NULL,
  `vid_like` int(11) NOT NULL,
  `mus_id` int(11) NOT NULL,
  `mus_like` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `mem_like` int(11) NOT NULL,
  UNIQUE KEY `vid_id` (`vid_id`,`vid_like`,`mus_id`,`mus_like`,`mem_id`,`mem_like`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evil`
--

INSERT INTO `evil` (`vid_id`, `vid_like`, `mus_id`, `mus_like`, `mem_id`, `mem_like`) VALUES
(16, 0, 16, 0, 11, 0),
(17, 0, 17, 0, 12, 0),
(18, 0, 18, 0, 13, 0),
(19, 0, 19, 0, 14, 0),
(20, 0, 20, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `happy`
--

CREATE TABLE IF NOT EXISTS `happy` (
  `mov_id` int(11) NOT NULL,
  `mov_like` int(11) NOT NULL,
  `vid_id` int(11) NOT NULL,
  `vid_like` int(11) NOT NULL,
  `mus_id` int(11) NOT NULL,
  `mus_like` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `mem_like` int(11) NOT NULL,
  UNIQUE KEY `mov_id` (`mov_id`,`vid_id`,`mus_id`,`mem_id`),
  KEY `fkidvid_url` (`vid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `happy`
--

INSERT INTO `happy` (`mov_id`, `mov_like`, `vid_id`, `vid_like`, `mus_id`, `mus_like`, `mem_id`, `mem_like`) VALUES
(1, 0, 1, 0, 1, 0, 1, 0),
(1, 0, 2, 0, 2, 0, 2, 0),
(1, 0, 3, 0, 3, 0, 3, 0),
(1, 0, 4, 0, 4, 0, 4, 0),
(1, 0, 5, 0, 5, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `memescollection`
--

CREATE TABLE IF NOT EXISTS `memescollection` (
  `meme_id` int(11) NOT NULL,
  `meme_url` varchar(400) NOT NULL,
  PRIMARY KEY (`meme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memescollection`
--

INSERT INTO `memescollection` (`meme_id`, `meme_url`) VALUES
(1, 'http://www.relatably.com/m/img/happy-memes/Funniest_Memes_happy-turtle-comes-to-make-you-happy_17130.jpeg'),
(2, 'http://jokideo.com/wp-content/uploads/meme/2014/09/Why-are-frogs-so-happy---meme.jpg'),
(3, 'http://img.memecdn.com/happy-old-man-happy-elephants-but-did-it-make-you-happy_o_2172561.webp'),
(4, 'http://rethinkingeverything.com/wp-content/uploads/2014/05/being-happy.jpg'),
(5, 'http://www.relatably.com/m/img/happy-memes/You-Make-Me-So-Happy-Meme-10.png'),
(6, 'http://img-9gag-fun.9cache.com/photo/aLKm6pg_700b.jpg'),
(7, 'https://www.askideas.com/media/41/Dont-Be-Sad-Funny-Meme-Picture-For-Facebook.jpg'),
(8, 'https://www.askideas.com/media/41/Dont-Wanna-Be-Owl-By-Myself-Funny-Sad-Meme-Picture.jpg'),
(9, 'https://www.askideas.com/media/41/Elephant-Funny-Sad-Meme-Image.jpg'),
(10, 'https://www.askideas.com/media/41/Funny-Sad-Meme-I-Found-My-Spirit-Animal-At-Very-Young-Age-Picture.jpg'),
(11, 'http://img.memecdn.com/awkward-moment-when-your-sarcasm-is-so-advanced_o_1045275.webp'),
(12, 'http://s2.quickmeme.com/img/87/87844de9102b09bbdecfdb2b84ad3ed88b1006aeb4bbd1b1ad127e795edf0a5b.jpg'),
(13, 'https://media.giphy.com/media/aAkNru67Hh40E/giphy-facebook_s.jpg'),
(14, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRBPIMlytdqRYgmTyLSPpfKO5W2IsjpOYxZWmHlCP6gDv0kqIvAfw'),
(15, 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTm4PzRr7LZl34m76zX3c-RafiKhmfNZa8GPRwahwNk2UApSeEH'),
(16, 'https://s-media-cache-ak0.pinimg.com/236x/91/9f/6a/919f6afa8cc73678926a2743dfc9ed8b.jpg'),
(17, 'https://s-media-cache-ak0.pinimg.com/236x/28/93/38/28933897ed39107c45caef51457123cf.jpg'),
(18, 'https://s-media-cache-ak0.pinimg.com/236x/87/eb/df/87ebdf9b52412b450eb16e0d1d003f09.jpg'),
(19, 'http://www.relatably.com/m/img/love-memes-for-her/love-meme-for-her-wq2zamzwg.jpg'),
(20, 'http://img.memecdn.com/guess-love-makes-one-confused-as-well_o_113922.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `moviecollection`
--

CREATE TABLE IF NOT EXISTS `moviecollection` (
  `movie_id` int(11) NOT NULL,
  `movie_url` varchar(500) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviecollection`
--

INSERT INTO `moviecollection` (`movie_id`, `movie_url`) VALUES
(1, 'http://www.facebook.com');

-- --------------------------------------------------------

--
-- Table structure for table `musiccollection`
--

CREATE TABLE IF NOT EXISTS `musiccollection` (
  `music_id` int(11) NOT NULL,
  `music_url` varchar(400) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musiccollection`
--

INSERT INTO `musiccollection` (`music_id`, `music_url`) VALUES
(1, 'https://www.youtube.com/embed/1G4isv_Fylg?list=PL88534134DDA83D46 WHERE music_id=2'),
(2, 'https://www.youtube.com/embed/1G4isv_Fylg?list=PL88534134DDA83D46 WHERE music_id=2'),
(3, 'https://www.youtube.com/embed/BPNTC7uZYrI'),
(4, 'https://www.youtube.com/embed/nYh-n7EOtMA'),
(5, 'https://www.youtube.com/embed/7jMlFXouPk8'),
(6, 'https://www.youtube.com/embed/048SNZIP40I'),
(7, 'https://www.youtube.com/embed/MGR4U7W1dZU?list=PLfG3vk1FwEkMCyAa4nEgfRNhMtNDZPa3J'),
(8, 'https://www.youtube.com/embed/VgXOPeobPcI?list=PLfG3vk1FwEkMCyAa4nEgfRNhMtNDZPa3J'),
(9, 'https://www.youtube.com/embed/kY2evrkfbiM'),
(10, 'https://www.youtube.com/embed/mWRsgZuwf_8'),
(11, 'https://www.youtube.com/embed/trig1MiEo1s'),
(12, 'https://www.youtube.com/embed/o5iNbmDbViA'),
(13, 'https://www.youtube.com/embed/w1XI2R3FgwQ'),
(14, 'https://www.youtube.com/embed/vPRmKwq-_V8'),
(15, 'https://www.youtube.com/embed/oofSnsGkops'),
(16, 'https://www.youtube.com/embed/foE1mO2yM04'),
(17, 'https://www.youtube.com/embed/tcVwMvuNzLE'),
(18, 'https://www.youtube.com/embed/tcVwMvuNzLE'),
(19, 'https://www.youtube.com/embed/UtNBKX4Dtwc'),
(20, 'https://www.youtube.com/embed/UtNBKX4Dtwc');

-- --------------------------------------------------------

--
-- Table structure for table `romantic`
--

CREATE TABLE IF NOT EXISTS `romantic` (
  `vid_id` int(11) NOT NULL,
  `vid_like` int(11) NOT NULL,
  `mus_id` int(11) NOT NULL,
  `mus_like` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `mem_like` int(11) NOT NULL,
  UNIQUE KEY `vid_id` (`vid_id`,`vid_like`,`mus_id`,`mus_like`,`mem_id`,`mem_like`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `romantic`
--

INSERT INTO `romantic` (`vid_id`, `vid_like`, `mus_id`, `mus_like`, `mem_id`, `mem_like`) VALUES
(11, 0, 11, 0, 16, 0),
(12, 0, 12, 0, 17, 0),
(13, 0, 13, 0, 18, 0),
(14, 0, 14, 0, 19, 0),
(15, 0, 15, 0, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sad`
--

CREATE TABLE IF NOT EXISTS `sad` (
  `vid_id` int(11) NOT NULL,
  `vid_like` int(11) NOT NULL,
  `mus_id` int(11) NOT NULL,
  `mus_like` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `mem_like` int(11) NOT NULL,
  UNIQUE KEY `vid_id` (`vid_id`,`vid_like`,`mus_id`,`mus_like`,`mem_id`,`mem_like`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sad`
--

INSERT INTO `sad` (`vid_id`, `vid_like`, `mus_id`, `mus_like`, `mem_id`, `mem_like`) VALUES
(6, 0, 6, 0, 6, 0),
(7, 0, 7, 0, 7, 0),
(8, 0, 8, 0, 8, 0),
(9, 0, 9, 0, 9, 0),
(10, 0, 10, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `videocollection`
--

CREATE TABLE IF NOT EXISTS `videocollection` (
  `video_id` int(11) NOT NULL,
  `video_url` varchar(400) NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videocollection`
--

INSERT INTO `videocollection` (`video_id`, `video_url`) VALUES
(1, 'https://www.youtube.com/embed/gZegcEZhgA4'),
(2, 'https://www.youtube.com/embed/n_bY83Rp17g'),
(3, 'https://www.youtube.com/embed/v9oxyswY8fs'),
(4, 'https://www.youtube.com/embed/hufKzCO6UuU'),
(5, 'https://www.youtube.com/embed/2mqm37klYqA'),
(6, 'https://www.youtube.com/embed/TKn2kY3X5Sk'),
(7, 'https://www.youtube.com/embed/a1wn1C82YFk?list=PL9XDPqN8lxBphPe-jqlu6cRejGpd54oqA'),
(8, 'https://www.youtube.com/embed/CUKVz3GrHdE?list=PL9XDPqN8lxBphPe-jqlu6cRejGpd54oqA'),
(9, 'https://www.youtube.com/embed/6P2nPI6CTlc'),
(10, 'https://www.youtube.com/embed/4aGRV1lMdeU'),
(11, 'https://www.youtube.com/embed/OuXKkROBkiI'),
(12, 'https://www.youtube.com/embed/_0w8modg7Zc?list=RDOuXKkROBkiI'),
(13, 'https://www.youtube.com/embed/xetKWaX8Hq8'),
(14, 'https://www.youtube.com/embed/y74eCAp90xg'),
(15, 'https://www.youtube.com/embed/rG7AjxbR5qk'),
(16, 'https://www.youtube.com/embed/PCiBPcFm7n8'),
(17, 'https://www.youtube.com/embed/Q0CPOsD01BQ'),
(18, 'https://www.youtube.com/embed/X13Al_u4KD8'),
(19, 'https://www.youtube.com/embed/nA_aOCU47Ss'),
(20, 'https://www.youtube.com/embed/zc4XKufB7Bs');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `happy`
--
ALTER TABLE `happy`
  ADD CONSTRAINT `fkidvid_url` FOREIGN KEY (`vid_id`) REFERENCES `videocollection` (`video_id`),
  ADD CONSTRAINT `fkid_url` FOREIGN KEY (`mov_id`) REFERENCES `moviecollection` (`movie_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
