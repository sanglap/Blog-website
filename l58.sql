-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 12:09 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `l58`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin`, `password`, `created_at`, `updated_at`) VALUES
(1, 'shanahan.celia', '123456', '2019-05-24 00:15:49', '2019-05-24 00:15:49'),
(2, 'leola.kertzmann', '123456', '2019-05-24 00:15:49', '2019-05-24 00:15:49'),
(3, 'arno.lockman', '123456', '2019-05-24 00:15:50', '2019-05-24 00:15:50'),
(4, 'bria.schulist', '123456', '2019-05-24 00:15:50', '2019-05-24 00:15:50'),
(5, 'carolyn.lehner', '123456', '2019-05-24 00:15:50', '2019-05-24 00:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_slug`, `cat_desc`, `cat_img`, `created_at`, `updated_at`) VALUES
(1, 'Sofia Miller', 'mr-ben-stokes', 'Quas iusto quo voluptatem eveniet. Est hic veniam ut est. Laboriosam ullam aut sunt fugiat deleniti rerum blanditiis laboriosam. Recusandae repellat est perferendis quasi.', '729d52961468745623e1fe1c6afcc0d1.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(3, 'Howell Sipes', 'lamont-cartwright', 'Aut quas harum quasi est inventore veniam et sunt. Unde quia id consequatur excepturi. Dicta quod iste architecto alias dicta fugiat aut.', 'f8ce6e5fcc0463f08ad9b46164a06a4a.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(4, 'Ernie Harris', 'mattie-kozey-sr', 'Culpa quos doloribus magnam vel non hic quae. Illo aliquam culpa est inventore molestiae. Asperiores sequi consequatur ut unde esse. Qui rerum veniam suscipit et labore labore.', '89dcd7fd9f2a887231b5179e6d3eece3.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(5, 'Braxton Torp', 'anabel-goyette-dvm', 'Eaque est dolorum officiis sed. Molestias omnis reiciendis voluptatem deserunt et occaecati saepe. Occaecati architecto tenetur id totam sapiente tempora ut quis.', 'd22012444420c6be6b35075082a5f2b2.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(6, 'Derick Bosco', 'lourdes-will', 'Placeat magnam omnis consequatur. Minima laboriosam sint voluptate quo molestias voluptatum. Voluptatem laboriosam iure sequi culpa suscipit dolorum.', 'c1e8ea0963fe1054203a050234c5f04b.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(7, 'Marge Reinger', 'krystal-connelly', 'Architecto laboriosam sapiente et et quidem harum. Eos qui inventore eum fuga saepe ab.', 'c149e1e0b1d6580bc81329fb96c9d437.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(8, 'Jennings Yundt', 'prof-green-krajcik-md', 'Earum porro eligendi delectus praesentium tempora aperiam in. Temporibus tempora in commodi a nulla. Voluptas odio in unde eius consectetur ut error.', '88fd7983b6f8012759d5dea9270ba7bc.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(9, 'Tremayne Bode', 'joanny-legros', 'Et et non hic libero voluptas dolore. Eum quia dolor eveniet ullam necessitatibus. Quidem veritatis illo aut nobis repellat.', '9365d334d5f61370391da2eecfd43b37.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13'),
(10, 'Ramona Heller V', 'eliezer-batz', 'A aut autem fugiat veniam quo sit ut sunt. Reiciendis voluptatem cum ex nihil laborum. Vero consequatur ut autem ut omnis et.', '883a689a3f9420ed0c08a9c79614767c.jpg', '2019-05-24 04:34:13', '2019-05-24 04:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `email_id`, `name`, `comment_body`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'johndoe@example.com', 'John Doe', 'Hello World', 1, '2019-05-23 07:29:07', '2019-05-25 02:16:41'),
(2, 1, 'johndoe@example.com', 'John Doe', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 1, '2019-05-23 07:35:22', '2019-05-25 02:19:09'),
(3, 8, 'rae.okeefe@yahoo.com', 'Kellen Doyle', 'Eveniet velit fuga dolorem quas. Eos impedit corrupti iure quis. Sit laudantium illum cum et. Veniam voluptas dolorem non pariatur autem dolorum velit.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(4, 2, 'kayli.howe@huels.org', 'Mr. Tyler Sanford II', 'Reiciendis adipisci pariatur totam non minima. Harum est et sunt. Consequuntur voluptatem et laboriosam.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(5, 16, 'fay.alphonso@hotmail.com', 'Mackenzie Luettgen', 'Adipisci ut quas laudantium. Numquam voluptas ratione nulla culpa quasi consequatur omnis. Porro assumenda molestias quos qui beatae sequi inventore. Aliquid et ullam voluptates dicta.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(6, 1, 'ikoelpin@gmail.com', 'Vern Welch', 'Ullam dolor quia soluta est in quo ad illo. Nobis placeat architecto dolor consequatur. Fugiat ut eaque optio.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(7, 8, 'elian78@yahoo.com', 'Mr. Gino Raynor', 'Provident fuga odio non libero. Ut consequatur velit omnis quidem quia error. Consequatur et eaque magni ratione suscipit.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(8, 16, 'miracle.schiller@gottlieb.net', 'Dexter Braun', 'Nihil sunt est debitis ducimus ducimus omnis eum. Ad quia repudiandae et dolor veritatis ratione. Praesentium deserunt quibusdam fugiat qui rerum ut placeat.', 0, '2019-05-24 04:40:58', '2019-05-24 04:40:58'),
(9, 14, 'ima77@yahoo.com', 'Dr. Joaquin Hahn II', 'Dolorem molestiae ipsa omnis dolor autem qui. Et rerum ipsa et voluptate voluptatem. Minus enim modi aut omnis suscipit.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(10, 3, 'keara.krajcik@yahoo.com', 'Mr. Ansley Brakus III', 'Consectetur qui assumenda impedit aut asperiores. Vero similique sint sint ex et fugit. Eos ex eum consequatur nobis. Temporibus laboriosam consequatur temporibus repellendus.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(11, 7, 'tomas.schumm@yahoo.com', 'Glenna Kuhic', 'Ea eum sunt illum et molestias ut. Delectus omnis quam molestiae et porro. Reprehenderit sequi qui ex aut omnis.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(12, 2, 'ona43@spinka.com', 'Max Cormier', 'Incidunt illum consequatur consequatur beatae et tempora. Modi ea rerum ut ex. Autem quas perferendis accusamus consequatur. Ab quo non sunt ut nisi ipsam consequuntur.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(13, 15, 'mayer.easton@konopelski.net', 'Elwyn Cassin', 'Magni tempore minus ut qui cum voluptas quo. Est dolor distinctio possimus velit suscipit. Quas tempora rerum ducimus deserunt minima. Consectetur nihil quia in quas vel.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(14, 3, 'jimmie73@kirlin.net', 'Dustin Lynch', 'Est qui eius fugit. Corporis dolore qui repellendus perferendis rem eligendi commodi modi. Autem adipisci mollitia consequuntur. Omnis in quam qui quo quo.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(15, 17, 'okuhn@gmail.com', 'Gladyce Deckow IV', 'Molestias eius id qui ut ut hic. Voluptatibus odio non harum at tenetur. Quibusdam et sit culpa. Voluptas et dicta repellat officiis temporibus consequuntur aut.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(16, 6, 'vada.larson@gmail.com', 'Dr. Carroll Hansen V', 'Voluptatum sint consectetur quis eius reiciendis. Quod aut incidunt voluptas. Magni saepe sapiente mollitia qui sed.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(17, 5, 'isabel.erdman@yahoo.com', 'Dr. Carmine Predovic Jr.', 'Saepe qui eum voluptatem quo adipisci quia. Corporis exercitationem esse perspiciatis est. Sequi sed sapiente aliquid. Soluta aut provident odit aperiam veniam officia ex.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(18, 14, 'medhurst.alexandro@gmail.com', 'Felix Osinski', 'Et id qui perferendis aliquid optio officiis modi pariatur. Sint sed porro sapiente. Dolor excepturi nobis maiores provident cupiditate.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(19, 1, 'mkunze@yahoo.com', 'Dr. Missouri Gibson II', 'Voluptates id dolorem nulla ipsa dolorum qui doloremque. Provident quidem facere rerum tenetur cupiditate dolorum. Omnis nostrum non ut eum et consequatur dicta rerum.', 0, '2019-05-24 04:40:59', '2019-05-24 04:40:59'),
(20, 3, 'nwaelchi@hotmail.com', 'Ms. Janessa Gislason', 'Consequatur nostrum odit eum magni. Eum itaque voluptate qui dolorum. Possimus totam non blanditiis quibusdam natus cupiditate velit. Est repellendus aperiam voluptas eveniet ut sit.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(21, 2, 'kihn.vanessa@gmail.com', 'Domenic Ondricka Jr.', 'Nobis voluptatem et mollitia quasi dolores. Sint non tenetur laboriosam fugit libero. Dignissimos consequatur aut saepe quaerat.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(22, 20, 'mayer.amelia@carter.com', 'Dina Beahan', 'Architecto ut maxime est. Magnam iure amet quasi asperiores nihil accusantium. Eos aut autem unde repudiandae similique porro.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(23, 16, 'bruen.howell@gmail.com', 'Cade Padberg', 'Labore dolor incidunt molestiae esse alias laboriosam cum. Dolor nihil est accusantium.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(24, 10, 'hansen.zackery@yahoo.com', 'Jeremy Hartmann', 'Et praesentium cupiditate consequatur minus. Earum natus et maiores itaque quia. Omnis numquam vero voluptate eligendi.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(25, 4, 'gulgowski.franz@gmail.com', 'Weldon Rogahn', 'Beatae veritatis velit voluptatem omnis laboriosam non. Nam maiores quia illum et aut quas.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(26, 14, 'leannon.jay@hotmail.com', 'Mr. Blair Rau II', 'Dolorum nisi magni aut at aut commodi. Eos eum at veniam. Hic debitis voluptas in ut blanditiis facilis necessitatibus.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(27, 8, 'ggutkowski@yahoo.com', 'Jolie Balistreri', 'Consequatur aperiam et perspiciatis laudantium eum fugit numquam. Qui adipisci iusto recusandae omnis ratione sit assumenda. Placeat aut placeat sit. Explicabo dicta doloribus eum veniam quaerat.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(28, 17, 'wswift@corwin.net', 'Savanna Schoen III', 'Voluptas delectus qui neque sint. Nemo quo dignissimos molestias rerum. Possimus est numquam sed qui molestiae neque.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(29, 17, 'rstiedemann@hotmail.com', 'Wilhelmine Schimmel', 'Culpa voluptate natus sed ea voluptate tempore esse ipsum. Quia quis quia voluptate. Reprehenderit iusto rerum sit voluptatem. Facilis perferendis tempora error porro optio amet est.', 0, '2019-05-24 04:41:42', '2019-05-24 04:41:42'),
(30, 15, 'rebeka.ferry@feest.biz', 'Angeline Tillman II', 'Quia quis qui rerum et esse aut. Molestiae amet atque magni laudantium iure. Deleniti facere ullam modi molestias et nihil sunt.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(31, 10, 'zkoelpin@hotmail.com', 'Prof. Bennie Miller Sr.', 'Esse provident ipsa enim cumque molestiae. Explicabo et architecto aut est id itaque voluptates quam. Sed non consequatur numquam repellendus. Dolor porro maxime consequatur qui.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(32, 13, 'stokes.alayna@wehner.com', 'Unique Raynor', 'Qui facere natus quia. Rerum corporis quasi et consequuntur. Dicta quo sunt delectus ut.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(33, 8, 'qschroeder@hoeger.com', 'Hertha Rodriguez V', 'Distinctio maiores eaque ipsam quae. Enim voluptate ut sint ut officiis. Vero neque nobis nostrum dolores nostrum et. Error quia enim voluptates est unde eos.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(34, 1, 'uhauck@gmail.com', 'Wilber Durgan', 'Occaecati nihil deserunt eum porro ipsam sint. Molestiae est veritatis totam aliquam quo quos eveniet. Dolorum nihil est repudiandae adipisci reprehenderit earum.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(35, 8, 'aking@yahoo.com', 'Lia Beatty', 'Atque et veritatis quis quia. Fugit ipsum provident voluptatem harum. Culpa voluptates repellendus laboriosam nihil fuga qui.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(36, 1, 'evans.torphy@wehner.net', 'Jacynthe Flatley', 'Occaecati in ratione incidunt. Odit eaque ratione qui sit ab repellat voluptates ut. Et omnis neque aut iste quo dolorem sequi.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(37, 2, 'kautzer.filomena@leannon.net', 'Alexa Haag', 'Corrupti et qui beatae aut. Ut eum autem recusandae. Commodi delectus cumque amet est quidem.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(38, 1, 'imani22@klein.com', 'Prof. Alfred Johnson DDS', 'Veritatis est quas aliquid sunt. Ut et dolorem corrupti quo.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(39, 11, 'ifeil@balistreri.info', 'Wilhelm Runolfsson', 'Reprehenderit cupiditate et iure dolor adipisci ut provident. Laborum molestiae ratione dolores ipsum. Nihil eos doloribus quae aspernatur corporis. Fugit culpa est quo et.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(40, 10, 'skiles.tara@smith.com', 'Dr. Madonna Rutherford', 'Qui dolores culpa et earum illo et tempore. Est dolores sint eum odio iusto. Quas cumque minima rem vel qui et sit dolores. In aut nemo temporibus architecto sunt necessitatibus.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(41, 11, 'enrique.hoppe@gmail.com', 'Mr. Antonio Funk', 'Dolorem nostrum beatae dolorem omnis nulla. Adipisci aut animi perspiciatis ea. Eum maiores id velit rerum. Officia nostrum saepe quidem quo et fugit.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(42, 4, 'cielo.hettinger@lesch.com', 'Arne Wisoky', 'Et nostrum ex vero rerum quia quas aliquid. Tempora magnam voluptates aperiam architecto cumque cum praesentium. Voluptatem laudantium id quasi magnam id saepe rerum.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(43, 12, 'seth.wolf@hilpert.com', 'Yoshiko Jacobi', 'Non aut cupiditate qui possimus quia qui. Sint quia impedit sequi excepturi esse. Harum nihil dolores quae id magnam. Architecto eum quia quis voluptatem et rem voluptatem.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(44, 18, 'haylie.daniel@yahoo.com', 'Ms. Delpha Huel', 'Non ipsa aut asperiores et hic consectetur. Occaecati est sapiente sapiente deserunt sit tenetur vel deleniti. Officiis modi aliquam porro eum. Modi fugiat id molestiae voluptatem.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(45, 8, 'jalon09@yahoo.com', 'Elena Gottlieb', 'Labore voluptatem nam ex pariatur dignissimos quidem. Dolorem necessitatibus ipsam repellat id earum dolores dolores. Praesentium non nemo nostrum.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(46, 9, 'bkessler@parker.biz', 'Prof. Dexter O\'Hara', 'Quis nihil numquam aperiam molestias cupiditate natus dolor iusto. Eius corporis sit sint et et nihil. Molestias ad est eius natus rerum. Ad numquam cum accusamus nemo sit et.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(47, 1, 'judge.langworth@yahoo.com', 'Ayla Kiehn', 'Ut fugit sed inventore dolorum est. Culpa enim sapiente voluptatem labore pariatur voluptatem. Neque non est aut repudiandae porro totam.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(48, 4, 'zwyman@nienow.info', 'Cordia Braun', 'Officia eius eligendi dolorem. Vel laboriosam beatae ratione laborum vero. Rerum odio commodi esse consequatur aut hic quod.', 0, '2019-05-24 04:41:43', '2019-05-24 04:41:43'),
(49, 17, 'amina26@gibson.com', 'Lindsay Hane', 'Laboriosam laboriosam atque maiores culpa suscipit. Ipsum soluta et laboriosam nobis. Odit quia iusto rem magnam voluptatibus in sapiente.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(50, 5, 'general.quigley@macejkovic.com', 'Ms. Zoila Bogan', 'Ipsa mollitia et et nemo voluptates ipsum sapiente. Et ea quod minima rem ut. Necessitatibus expedita quam velit quae. Eum voluptatum qui doloribus corporis et laborum.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(51, 7, 'alexane.gleichner@gmail.com', 'Roxane Pacocha', 'Maxime ipsum cupiditate vero quia. Molestias nihil numquam aperiam non corporis dignissimos vero. Veniam voluptatem qui facere nostrum et. Itaque aliquid voluptatem cupiditate aut sit.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(52, 12, 'hhauck@king.org', 'Myron Christiansen', 'Accusantium nemo et accusantium rerum debitis velit perspiciatis. Maiores temporibus consequuntur voluptatem eius dolores dolor earum eum.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(53, 10, 'dkoss@hotmail.com', 'Mr. Maximillian Price', 'Voluptas molestias neque sunt magni ut repudiandae voluptatem. Eligendi qui sint nobis repellat. Nihil ipsam asperiores velit dicta fugiat. Ab distinctio et et.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(54, 7, 'larson.joseph@gmail.com', 'Dr. Giovanna Towne', 'Ad tempore sequi et dolor quod numquam molestiae. Excepturi saepe soluta perferendis. Qui atque delectus quaerat rem architecto accusantium.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(55, 17, 'qtromp@hotmail.com', 'Dr. Jamison Haley', 'Quia at dignissimos aut explicabo. Quia et qui tempora cumque tempore odit. Aut perspiciatis ut porro porro ut.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(56, 20, 'abbott.agustina@wilderman.com', 'Myron Dietrich', 'Deserunt beatae optio eos animi. Voluptatem saepe maiores doloribus et. Itaque similique cum et quo. Nihil id eveniet qui nihil.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(57, 7, 'kuhlman.chase@thiel.com', 'Danial Kris Sr.', 'Voluptate dolores voluptates perferendis nisi earum. Magni esse quae vel cupiditate. Iste iusto porro sit placeat non.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(58, 10, 'damian.kub@hotmail.com', 'Caterina Howell PhD', 'Ex a qui rerum quae quia temporibus sunt quaerat. Quis tempore alias id et deserunt eligendi. Eum ullam sunt dolore architecto tempora cum. Ducimus dolor maiores ut distinctio minima atque amet.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(59, 14, 'hagenes.delphia@gmail.com', 'Dr. Clyde Harris PhD', 'Repellat vero quia quis quibusdam est fugiat sit. Qui sit id nobis aliquam. Quas sunt quia repudiandae et maxime porro facere. Ea officiis natus voluptatem voluptatem consectetur fugiat.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(60, 5, 'tkrajcik@moore.com', 'Mr. Cielo Okuneva', 'Ut itaque est dolores quidem odio. Sed voluptate et eveniet fugiat. Dignissimos officia ut necessitatibus rerum et. Deleniti quod officia et eaque eaque.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(61, 12, 'dejah.mcglynn@hotmail.com', 'Aleen Lind', 'Est aspernatur dolores dignissimos necessitatibus quia. Vel quis qui cum. Quas praesentium maxime omnis vero labore. Ut dolorem nobis in illo beatae quae.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(62, 9, 'xreichert@roberts.com', 'Adam Will', 'Natus commodi quisquam laborum necessitatibus. Accusantium neque libero accusamus nam et quis.', 0, '2019-05-24 04:41:44', '2019-05-24 04:41:44'),
(63, 9, 'brendon41@dubuque.biz', 'Prof. Buddy Russel II', 'Quaerat quia sint autem omnis harum ab. Unde nesciunt et sint et dolorum minima. Voluptatem cupiditate est voluptatem et. A enim quia alias ea explicabo quia nam.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(64, 12, 'mswift@yahoo.com', 'Sandra Schuster PhD', 'Non ea commodi et in corporis. Nobis omnis quae alias quia. Voluptatibus minus provident perspiciatis.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(65, 18, 'prohaska.wendy@yahoo.com', 'Dominic Hoeger', 'Occaecati quae ut animi ea sed itaque. Autem sit corporis rerum aut. Ducimus dolores omnis similique est. Illo laboriosam reprehenderit illo rerum.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(66, 7, 'frida.will@gmail.com', 'Ms. Kyra Bednar', 'Odio libero veritatis et et quo excepturi animi mollitia. Voluptas laboriosam aut sed voluptate illum commodi. Ipsam voluptatem voluptatibus sit et.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(67, 10, 'goodwin.eveline@legros.biz', 'Dr. Jewell Cole', 'Possimus molestiae at vitae cupiditate vel velit omnis. Et est aut et sit sint dolor. Ex eius nisi reiciendis et sed ut itaque.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(68, 20, 'lizzie57@hotmail.com', 'Dr. Derick Sanford DDS', 'Quisquam et facere qui eius. Ipsam beatae qui quo autem. At repudiandae nisi similique et. Laborum distinctio voluptatem ut est iure id officiis.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(69, 15, 'anthony.keebler@klocko.org', 'Irwin Dooley', 'Quas minus ducimus ut ipsum sit dicta. Nam earum a natus sunt.', 0, '2019-05-24 04:41:45', '2019-05-24 04:41:45'),
(70, 3, 'johndoe@gmail.com', 'John Doe', 'Hello World', 0, '2019-05-25 01:50:49', '2019-05-25 01:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_14_074520_create_posts_table', 1),
(4, '2019_05_22_052628_create_categories_table', 2),
(5, '2019_05_23_123927_create_comments_table', 3),
(6, '2019_05_23_131539_create_newsletters_table', 4),
(7, '2019_05_24_051627_create_admins_table', 5),
(8, '2019_05_24_102234_create_settings_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletter_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`newsletter_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'johndoe@john.com', '2019-05-23 07:54:37', '2019-05-23 07:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_cats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_slug`, `post_body`, `featured_img`, `post_cats`, `post_tags`, `post_views`, `created_at`, `updated_at`) VALUES
(1, 'Sallie Nader', 'hayley-kunde', 'Natus itaque esse quis alias in. Consectetur consequuntur voluptatem ea impedit. Saepe modi autem architecto quidem maiores quae qui.', 'd63fc279b371cec8990b99a1a0f7f241.jpg', '6', 'php', 199, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(2, 'Arnold Yost', 'karolann-mante', 'Et molestiae sunt maxime nisi rerum autem facere aut. Eos aut nihil recusandae vel occaecati possimus similique. Occaecati quia veniam similique.', '942e1a01882426e08d9dbd092424c587.jpg', '8', 'codeigniter', 214, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(3, 'Geo Brakus Jr.', 'alberta-braun-jr', 'Et quibusdam dolorum nesciunt qui dolores. Consequuntur similique eum sunt quisquam. Qui est iure cupiditate iusto.', '9adb875e39bece402cdedc76acdf0fe9.jpg', '7', 'laravel', 234, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(4, 'Aliya Paucek', 'blanche-lowe', 'Earum et animi doloremque id. Omnis ea dolores at sunt sequi quibusdam natus nam. Est voluptatem neque earum doloremque.', 'b3c92d7206bcad993f2317a40ec385b3.jpg', '4', 'laravel', 422, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(5, 'Mr. Torrance Fadel', 'toby-graham', 'Id temporibus dicta quaerat accusamus voluptate. Fugiat et veritatis nam quia et architecto porro. Architecto velit velit maiores est cum officiis et consectetur.', '35dbf28a982be3355ec630df5515e3d1.jpg', '1', 'codeigniter', 158, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(6, 'Jane Stoltenberg', 'unique-boyle-jr', 'At doloremque magni harum aut. Similique illum et placeat. A asperiores eveniet quo aut rerum rem.', 'b681ab835fb4262552d8a097a0d6cb46.jpg', '3', 'laravel', 487, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(7, 'Kaia McGlynn Sr.', 'mrs-luella-dickens', 'Provident libero voluptatibus et totam non voluptates aliquam sed. Laboriosam temporibus deleniti non voluptas et. Saepe qui minus et minima enim commodi.', '3cba411688311f64db6e07bc7b09289d.jpg', '3', 'codeigniter', 510, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(8, 'Hailie Botsford', 'mr-donald-gutmann-phd', 'Occaecati rerum enim dolore quasi. Blanditiis tenetur rerum et sed illo voluptates. Eos sit suscipit iusto accusantium voluptates ut at.', '442129f86b4399a3f89645048ef1a316.jpg', '6', 'php', 209, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(9, 'Meredith Lang V', 'winona-effertz-i', 'Earum suscipit id ex est expedita incidunt. Illum occaecati harum distinctio est voluptate. Quidem voluptatem deleniti omnis nam fugit porro. Corporis assumenda et similique mollitia.', 'd47c758f129ee5ab54da3a471ed64573.jpg', '1', 'codeigniter', 938, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(10, 'Alayna Mraz', 'jimmy-bergstrom', 'Pariatur rem distinctio sequi quis. Numquam sint veritatis accusantium mollitia numquam fugiat. Eum occaecati necessitatibus aliquid eos.', 'bb2e178b05d39ef98fae52db7f9aa815.jpg', '7', 'codeigniter', 508, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(11, 'Angie McClure', 'dax-toy', 'Doloribus repudiandae ut ad impedit omnis facilis. Laboriosam corrupti reiciendis et aut inventore. Debitis sapiente sed tempore explicabo dolorem.', '394578a15e608cc75ab89b8e63a8953e.jpg', '6', 'codeigniter', 143, '2019-05-24 04:36:50', '2019-05-24 04:36:50'),
(12, 'Destin Bayer', 'bulah-brekke', 'In dicta et tempore cumque est deserunt et. Pariatur asperiores eum illum nesciunt. Fugit totam est porro voluptatem nihil aliquid. Qui aut rerum porro recusandae ut ipsa quis voluptas.', 'f3d05f49b905b5011318638993bce105.jpg', '6', 'laravel', 402, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(13, 'Cristina McLaughlin', 'prof-gunnar-klein-jr', 'Omnis pariatur dolor sit recusandae sunt enim. Veritatis eligendi deleniti harum quae iusto aspernatur sit. Qui incidunt dolor sint.', '2f904c7812c554ac581ad9beffa54e28.jpg', '1', 'laravel', 954, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(14, 'Antonietta Wolff V', 'prof-tierra-lockman-v', 'Et facere dolores qui iste qui. Quasi et cupiditate corrupti dolore deserunt. Voluptates in voluptatem ipsa magnam consequatur aperiam quia. Officia consequatur amet accusamus aut fugit similique.', '368b5494a5925633b99a1eb3cf71934b.jpg', '6', 'laravel', 860, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(15, 'Celestine Runolfsson Jr.', 'omari-halvorson', 'Aut reprehenderit officiis quia id aut officia a. Excepturi in perferendis quibusdam temporibus.', 'a934968e14fea3d6bada3d73a26830e7.jpg', '5', 'laravel', 736, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(16, 'Gianni Hill', 'ms-angelita-daniel', 'In doloribus qui aspernatur aut. Officia saepe aliquid animi cum rerum inventore dolorem.', 'c7ce5818a51be42590f9e95ad08d8d9e.jpg', '8', 'php', 798, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(17, 'Dr. Liza Erdman', 'mrs-mercedes-weimann-jr', 'Voluptatem deserunt deserunt doloremque ducimus error. Et accusamus sunt esse eius. Nesciunt aut qui adipisci aliquam. Et delectus rerum in illum at explicabo.', '0bf7b57a6a667c7a1f2cd7bb8aaf30cb.jpg', '1', 'php', 135, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(18, 'Annamarie Kessler', 'concepcion-hammes', 'Magni deserunt dolor magni laboriosam repellat eum labore. Magni assumenda delectus autem autem voluptas accusantium error.', '25fcda0ab36a3bf75564bad504516135.jpg', '3', 'php', 409, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(19, 'Lulu Fritsch', 'lester-cormier', 'Praesentium quis quisquam recusandae perspiciatis illo veniam quas suscipit. Eos est ut aliquam veritatis voluptatibus est repellendus. Maxime numquam omnis ratione sint.', 'c8e44f95ac86d76349b7d6c6df293c8b.jpg', '1', 'codeigniter', 728, '2019-05-24 04:36:51', '2019-05-24 04:36:51'),
(20, 'Dorothy Larson', 'prof-richard-pouros', 'Earum mollitia occaecati repudiandae animi commodi. Natus occaecati eveniet illum dignissimos. Enim voluptas eos eos reiciendis. Quia ut quis odit sit.', '11a58a018e367816c7a769d940d4ba0c.jpg', '7', 'php', 710, '2019-05-24 04:36:51', '2019-05-24 04:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(3, 'logo_img', '1558777273.jpg', '2019-05-25 04:11:13', '2019-05-25 04:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
