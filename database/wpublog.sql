-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2023 pada 11.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpublog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(2, 'Web Design', 'web-design', '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(3, 'Personal', 'personal', '2023-07-30 05:09:25', '2023-07-30 05:09:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_24_073656_create_posts_table', 1),
(6, '2023_06_25_004031_create_categories_table', 1),
(7, '2023_07_31_030609_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Sequi cumque voluptates est harum ex et.', 'tempore-laboriosam-delectus-laudantium-accusamus', NULL, 'Aut ex excepturi omnis. Optio numquam ducimus debitis veritatis vel atque mollitia. Aut nihil ipsa non laborum.', '<p>Veniam vel porro minus ad tenetur vero saepe. Asperiores harum inventore porro enim aut adipisci. Voluptas ipsa molestiae dolores qui quia reprehenderit corrupti. Tempore rerum maiores eveniet error. Aut adipisci assumenda harum et inventore dolorem aut.</p><p>Porro et nam odit earum nihil asperiores. Quod excepturi aut quia quia voluptatem. Iste eos iure tempore nulla ad.</p><p>Ut molestiae sed et itaque iure esse qui excepturi. Unde consequatur consequuntur iste et. Explicabo accusamus qui rem iusto.</p><p>Dolore laboriosam eius temporibus id sint et incidunt. Quisquam similique et voluptatem illo at cumque provident. Ipsam eos quia recusandae esse repudiandae cumque maxime numquam. Fuga nostrum sit qui omnis porro.</p><p>Occaecati sequi maxime molestias voluptatum voluptas. Nulla fugiat voluptas quo incidunt illum. Quisquam consectetur quidem assumenda nihil et omnis corrupti. Nisi iusto qui exercitationem quis quisquam est. Alias esse culpa sunt eveniet voluptatum.</p><p>Numquam cumque ipsam expedita dolores voluptas quia. Consequatur est est veritatis et ipsam. Libero aut dolor nam voluptatem odit. Occaecati rem culpa sed quas quia possimus aut.</p><p>Cum ex occaecati repellat omnis in. Qui eum commodi inventore et qui. Quis voluptatibus autem nostrum sint. At ut culpa aut perferendis dicta.</p><p>Repudiandae laborum doloremque laborum. Repellendus dolorem suscipit est et officiis ut dolore. Sed aperiam aliquid enim quo nisi unde saepe ratione. Quis temporibus qui nostrum. Officia quaerat et laudantium molestiae.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(2, 1, 1, 'Ut consequuntur itaque.', 'sed-deserunt-eos-nisi-est', NULL, 'Ipsam voluptates molestiae saepe voluptate fuga. Sequi sint illum amet in. Eos eius praesentium earum porro omnis. Debitis ipsa provident necessitatibus quia alias qui quos nostrum.', '<p>Cumque atque sed dignissimos fuga repellat eveniet perferendis facilis. Incidunt sint et dolores voluptatem consequatur quod. Soluta distinctio aut dolores harum. Et repellendus vel dolorem.</p><p>Ab autem similique voluptas. Culpa ea error illo accusantium omnis. Accusantium molestias voluptates eius asperiores occaecati velit. Impedit amet quia sint optio eligendi ex.</p><p>Minus harum voluptatum velit optio officia vel beatae. Asperiores repudiandae culpa cum aut nostrum cupiditate rerum magni. Molestiae voluptates nesciunt perferendis doloremque. Voluptatem officia odit nostrum molestiae.</p><p>Ut blanditiis minima aut quo. Nisi aliquid et minus et et asperiores aspernatur. Rerum dicta reiciendis numquam ut minus officiis ut. Assumenda officiis nemo est quod eaque.</p><p>Quidem eos itaque reiciendis minus mollitia eos cupiditate. Dolore ut sed perspiciatis sapiente sit. Deserunt non rerum nulla qui.</p><p>Et excepturi maxime necessitatibus magnam consequuntur eveniet officiis. Omnis vitae sunt eius impedit dicta. Excepturi cupiditate qui impedit quidem aspernatur. Est et facilis tempore qui ut quaerat iure.</p><p>Delectus dolor voluptatem eveniet ipsum sed eligendi. Consequatur quo id sed. Sit soluta vel alias fuga.</p><p>Et vitae quas laborum voluptatum voluptatem error non. Architecto ut facere maxime consectetur recusandae. Provident voluptas quisquam corporis sed vel error mollitia officiis. Ad molestias saepe accusamus animi adipisci.</p><p>Illum voluptatem assumenda accusamus et deserunt qui. Repellat dolores aut praesentium voluptatibus. Corporis inventore et recusandae tempore in pariatur facilis. Cupiditate ex molestiae non architecto.</p><p>Ab aut ut vel odio sequi suscipit minus. Ut sequi perferendis consequatur totam. Voluptas molestiae qui fugit similique et.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(3, 3, 3, 'Tempora fugiat provident nulla a cupiditate.', 'perspiciatis-est-recusandae-quos', NULL, 'At eos necessitatibus eveniet eos voluptas in voluptate. Eaque quo necessitatibus consequuntur reiciendis laudantium nam. Consequatur necessitatibus illum qui. Ea unde fuga ut et esse itaque. Maxime dolores est adipisci qui voluptatem dignissimos qui.', '<p>Fuga tempora sed et cupiditate ut. Maiores quia dolore omnis non. Vitae vero molestias assumenda ullam.</p><p>Occaecati quo voluptates tempora nostrum. Ut unde esse aut et. Eligendi provident facere unde unde assumenda. Error expedita eos fugiat ducimus in.</p><p>Quia et dolorem et sed sed. Omnis tempore sunt sint numquam voluptate. Necessitatibus consequatur tempora dolorum placeat.</p><p>Sed voluptatibus quas voluptatem recusandae. Sit veritatis qui illum accusantium. Aspernatur velit esse similique aut. Ratione error est eum excepturi recusandae perferendis.</p><p>Eius aut eligendi non fugiat reiciendis laborum velit. Eum eius sed consequuntur est placeat ut animi quae.</p><p>Distinctio ducimus sed totam beatae. Nulla laborum modi qui voluptatibus et occaecati. Placeat fugiat sed velit nobis assumenda.</p><p>Distinctio ratione dolores et in quo est. Ut dolorem suscipit ratione. Possimus dolores voluptatum eligendi ut. Fuga reiciendis consequatur soluta sequi eum quis et.</p><p>Modi veniam voluptas molestiae a. Dignissimos autem ut eligendi accusantium. Fugit aut aut perferendis distinctio non esse itaque rerum.</p><p>At perferendis minus enim corrupti. Hic nostrum necessitatibus quos incidunt et voluptatem ut et. Non mollitia minima et in doloremque.</p><p>Iste illo soluta ipsam expedita aperiam ipsa. Molestiae ut hic ea et ut accusantium non. Officia delectus ut accusantium magni ipsum. Possimus vitae occaecati sit quo corporis iusto fuga.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(4, 1, 1, 'Debitis voluptatum expedita esse nobis.', 'autem-aut-ut-hic-ipsam-consequatur-et-eos-numquam', NULL, 'Autem est voluptatibus earum velit quia. Qui quo qui quis in. Consequatur rem in reiciendis alias sed perferendis dolorem et.', '<p>Et fugit voluptatem ea placeat dolorem. Vitae laborum atque est ea. Et impedit in ducimus ea necessitatibus cupiditate nemo.</p><p>Qui dolore ratione quibusdam qui qui similique. Quas magni voluptate repellat voluptate.</p><p>Quis aut placeat voluptatum voluptatem iure quaerat. Nobis libero eos et officiis. Nam voluptatibus deleniti voluptas alias et repellendus inventore. Quod cum asperiores quis reprehenderit ut.</p><p>Dolor ut saepe ipsum ut id temporibus. Earum magni est repellat non.</p><p>Ut quo voluptas quis iusto minima nulla. Culpa et deserunt dolor sed maiores velit. Sint sunt accusamus repellendus beatae optio debitis at.</p><p>Magnam ipsam aliquam voluptatibus ab. Maiores natus ipsum qui ut ipsum animi eius. Modi explicabo ut ut quo laborum temporibus.</p><p>Quos dolor facilis sint nemo distinctio reiciendis aut sapiente. Molestias et et non voluptatem harum modi eum culpa. Non molestiae amet et qui id aut. Fuga est dolorem ullam sunt quaerat perferendis perspiciatis.</p><p>Officiis at molestias a et pariatur. Culpa enim est sed nulla doloremque qui ullam ullam.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(5, 2, 3, 'Aperiam ut laudantium sequi.', 'neque-perspiciatis-eligendi-voluptatum-sapiente-voluptatem-iste-est', NULL, 'Incidunt atque perferendis labore quis deserunt. Optio sint et necessitatibus occaecati magnam aut dolorum.', '<p>Delectus vitae et qui aperiam doloremque ut et. Et et iste optio animi consequatur. Qui cupiditate ipsum perferendis numquam deleniti itaque. Nam quis rerum error voluptas repudiandae dignissimos.</p><p>Odio quis qui molestias est. Et doloremque numquam itaque inventore aliquam dolor. Dolor sunt autem exercitationem temporibus quis iusto et.</p><p>Nobis eos ut atque consequatur a velit alias. Molestiae eum et saepe. Distinctio perferendis sunt illum dignissimos eos. Id debitis voluptate iste commodi enim veritatis.</p><p>Ut eum saepe voluptas. Recusandae non sit et totam beatae quia ex. Et voluptates provident maxime veniam voluptatem nesciunt.</p><p>Repellendus veritatis officia ipsam perferendis velit est. Aut voluptas ullam expedita nostrum voluptas iusto praesentium voluptas. Minus et deleniti dolorum ut vitae rem et cupiditate.</p><p>Voluptatum optio fugit commodi modi consequatur illo sunt. Esse officiis quibusdam voluptate velit. A nesciunt odit deleniti dolore. Facere eos fugiat vel.</p><p>Dolore eum architecto autem laboriosam. Et officiis nihil magnam. Veniam pariatur nisi soluta ex amet distinctio. Totam itaque est aut sint distinctio sit molestiae. Veritatis exercitationem est est officia.</p><p>Non iste non facilis similique id qui delectus. Ipsam fugit ducimus quis aliquid in aliquam sit. Rerum explicabo voluptas qui. Quas praesentium accusantium asperiores ab.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(6, 1, 3, 'Voluptates harum in est voluptatem.', 'vero-excepturi-ipsum-tenetur-illo', NULL, 'Veritatis veritatis tenetur omnis natus et temporibus. Sit et perferendis aspernatur eos qui porro sint eligendi.', '<p>Illum sit ipsum non perferendis vero. Delectus sed minus nemo nihil aut quia. Rerum numquam cupiditate aut reiciendis et. Nisi facilis sit aut et tenetur reprehenderit. Eius dolorum maiores voluptas.</p><p>Molestiae et sapiente necessitatibus est et. Omnis aut iusto laborum earum. Repellat ipsum aut nobis eveniet vitae. Fugit vero inventore voluptas quaerat eaque in et. Quod ex aut vel sed quod quod sit.</p><p>Officia amet excepturi minus sint. Non dolorem molestiae quaerat quis esse. Voluptatem cum veniam commodi et rem occaecati.</p><p>Aliquid sed rerum architecto et perferendis. Iure et et minima consequuntur. Amet doloremque atque qui assumenda animi autem aut. Fugit veritatis suscipit quis omnis qui. Dolorem incidunt ea culpa ipsum non aut provident.</p><p>Corporis ducimus aspernatur non dolorem et non fugit. Quae autem quae neque et error molestiae repellendus. Dolorem voluptatum natus et neque magnam ipsum voluptatem. Consequatur beatae dicta qui quo maiores.</p><p>Officiis culpa quo temporibus fugit dolores qui hic. Eum alias molestiae non corrupti consequatur illo. Dolor numquam ducimus quae consequatur.</p><p>Non sint quia deleniti facere placeat perspiciatis. Ut voluptatem et qui pariatur. Nihil totam fugiat vel non sequi blanditiis. Occaecati quis nobis nihil officia aut quidem.</p><p>Ipsa laborum dolorem minima vitae nihil. Dolores voluptate architecto ea voluptatem voluptas est atque laborum. Accusantium quibusdam hic suscipit aspernatur odio beatae pariatur. Earum quisquam aut corporis.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(7, 3, 3, 'Voluptates est.', 'perspiciatis-magni-fugit-excepturi-delectus', NULL, 'Enim nobis velit adipisci quasi. Rem eum ut et laboriosam iure voluptas omnis rerum. Enim debitis qui praesentium eum quisquam velit dolorem. Mollitia voluptatem voluptate doloribus illo illum nemo.', '<p>Voluptatibus sed et nobis dolores minima quas incidunt. Unde dolor alias sequi debitis quas aut numquam. Reiciendis accusamus qui fugit non repellat illo omnis.</p><p>Similique nulla in ipsam ut. Alias debitis unde facilis sequi eligendi ad aliquid ipsam. Libero quo nesciunt inventore quisquam.</p><p>Qui ducimus veritatis est quasi tempora aperiam illum odit. Totam dolore voluptate officiis aut maiores.</p><p>Qui rem est consequatur sed et asperiores quis quidem. Et voluptas at consequatur possimus dolor voluptatem non. Et architecto et facilis porro quia corrupti quos.</p><p>Nisi aliquam soluta error fugit. Eaque itaque iure autem deserunt repellat aliquid ut. Tempora nemo corporis quae sapiente autem eum. Magnam doloremque veniam sapiente sed sed minima. Animi et sit ut enim incidunt qui quasi voluptatibus.</p><p>Laborum dolor non eius et commodi aspernatur. Quos rerum alias voluptatem vitae dolor veritatis id. Nam dicta quas illum vitae voluptate explicabo.</p><p>Quos deserunt illo officiis. Quaerat fugiat vel qui voluptatem repellendus. Corporis quam perferendis necessitatibus sunt. Possimus nisi error odio inventore est et nemo harum.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(8, 1, 2, 'Nam quisquam debitis quos inventore eum natus voluptatem cum.', 'itaque-autem-soluta-sint-quo-sunt', NULL, 'Autem harum magnam ut vel. Accusantium magni delectus quia officia voluptates. Unde esse totam suscipit at tempore deleniti dolor voluptas.', '<p>Reprehenderit et eius et est et. Veritatis voluptatem odio possimus quasi molestiae.</p><p>Odio non maxime et qui dignissimos. Omnis facere eveniet molestias voluptatum quos optio. Molestiae nihil provident in accusamus quis maiores.</p><p>Iure eligendi harum enim sint facere non. Sed eius quasi aspernatur maxime dolorem ducimus excepturi. Sed quasi omnis atque exercitationem omnis.</p><p>Aut eos quod in repellendus sit quos occaecati voluptatem. Rem fugit et beatae. Suscipit nemo quas non est illum consectetur. Nam ratione sed eveniet repellendus. Ea debitis veritatis corrupti aut omnis est dolor.</p><p>Laudantium repellendus id qui id dolores. Omnis pariatur temporibus qui omnis quidem vel exercitationem. Rem inventore officia est nulla fuga consequatur soluta.</p><p>Sed quasi reiciendis sit reprehenderit rerum. Perspiciatis quibusdam voluptatem quibusdam eum sunt adipisci sint nihil. Assumenda dicta omnis non ducimus. Et aut aut non enim molestias non.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(9, 3, 2, 'Nemo et qui earum labore sit quia.', 'facere-error-qui-voluptatem-dolores', NULL, 'Enim tenetur odio et explicabo voluptatum autem voluptatem. Unde et sed quia quia praesentium illo similique. Cupiditate iure explicabo repudiandae veritatis velit. Voluptatibus sunt quidem aut ullam.', '<p>Explicabo animi ut illum et. Maxime illum delectus et quasi molestiae. Eius aut pariatur blanditiis. Sit voluptatem aspernatur atque repudiandae commodi est sunt.</p><p>Fuga neque veritatis corporis inventore a fugit aut. Ut dolores cumque ea nulla deleniti sit quia. Et laborum eum voluptatem recusandae modi numquam deserunt.</p><p>Repellendus nam dolores porro harum deserunt ad itaque. Voluptate animi qui quia consectetur laboriosam nemo. Quos perspiciatis delectus non. Voluptas ut est libero sint vel.</p><p>Voluptas non incidunt vel sint. Quas consequuntur sapiente iste deserunt ipsam ut. Eum cupiditate fuga soluta voluptatem labore. Aut fuga delectus reprehenderit quia libero autem.</p><p>Dolore et veniam et iure sed quis. Vel ut ut ducimus atque laborum rerum praesentium. Commodi ut aliquam est tenetur corporis accusantium temporibus.</p><p>Explicabo aperiam harum maxime. Saepe ut doloribus rerum minima nulla necessitatibus. Eligendi ea adipisci quia atque alias. Enim repudiandae qui odit.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(10, 1, 3, 'Vel fugit.', 'reprehenderit-aut-officiis-quo-voluptatibus-sint-dolorem-eos', NULL, 'Fugiat in sequi doloribus. Omnis numquam eum quo velit. Nisi est illo necessitatibus deleniti numquam enim est. Qui sit veritatis earum rerum ut qui iure. Voluptatibus deleniti et in quisquam harum id.', '<p>Et id voluptate laborum sapiente corporis mollitia. Rerum eaque hic qui quae. Rerum alias cumque expedita earum. Qui eum nisi ea quo.</p><p>Soluta rerum ea aperiam veniam beatae ea quidem. Distinctio laboriosam doloribus culpa consequatur error. Velit praesentium rerum maxime quo quae sit.</p><p>Iusto beatae vitae illo quae explicabo fuga. Veniam et praesentium ut optio omnis dolor. Consectetur dolores harum occaecati vitae ea enim libero. Neque molestiae aut harum est qui aspernatur. Sint officia exercitationem aperiam.</p><p>Nostrum et iste esse nihil asperiores exercitationem. Sit necessitatibus veritatis aut aperiam deserunt. Ullam dolores in aspernatur sapiente at ipsam. Et id maiores molestiae voluptates quis consequuntur.</p><p>Cum qui laboriosam enim nesciunt necessitatibus ut aliquid. Placeat magnam nulla est et quo cumque. Est vel qui eveniet quae dolorem. Repudiandae blanditiis ad et nam voluptas.</p><p>Aliquid magnam quis voluptas dolor et magnam ducimus. Consequatur ullam placeat ex et aut. Qui accusantium recusandae non. Dolor et ullam omnis et. Distinctio corporis laborum id maiores qui illo eveniet.</p><p>Sed et voluptatem voluptas accusantium et commodi hic. Laboriosam mollitia ut error commodi. Voluptatem repellendus iure at odio sequi provident.</p><p>Nam eius ipsum culpa et sunt asperiores. Itaque beatae odio est incidunt laudantium maxime voluptate qui. Ea dicta id quaerat ab iste vero et est. Consequatur et quae minima mollitia sit.</p><p>Recusandae provident aliquid laboriosam ratione inventore et. Non enim aut voluptates esse odit vel rerum. Voluptas ducimus minus sint laudantium. Sint non ut est amet est exercitationem.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(11, 2, 2, 'Cupiditate sint.', 'voluptatum-aspernatur-consequatur-aut-sed-ratione-eveniet-est', NULL, 'Vel hic autem aliquam nihil quia. Non eveniet necessitatibus ut culpa eveniet est rerum. Reprehenderit adipisci neque est placeat autem. Debitis ex veniam exercitationem aliquid et.', '<p>Deleniti quia deserunt natus repellendus eum. Sint sunt repudiandae ut nesciunt nisi. Sit odio molestiae consectetur harum dignissimos culpa.</p><p>Quis natus at illo officia possimus aut impedit. Explicabo cum vitae aut fugiat itaque voluptatum. Laboriosam consequatur non architecto tempora sunt.</p><p>Voluptatem repellendus voluptates et architecto aliquam nesciunt placeat. Quia odit labore nihil veniam ad. Dicta harum corrupti in minima ab suscipit. Eos repellendus qui laboriosam nam nobis enim.</p><p>Maxime nam facilis assumenda minus. Perferendis laborum illo sapiente. Omnis ut consequuntur facilis voluptatem.</p><p>Voluptatem commodi sed est dolore. Sed sed dolor laboriosam vitae sapiente perferendis minus. Ratione et exercitationem et ut rem qui et. Nihil expedita aut quaerat explicabo repudiandae magnam laborum.</p><p>Ipsum dolor autem odit. Sit tenetur eos et rerum sed. Magni et minus a ut.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(12, 2, 3, 'Voluptates doloribus nihil ipsa et nemo.', 'fugit-exercitationem-repudiandae-rerum-occaecati', NULL, 'Ratione inventore sunt ut ut ullam est enim. Quo sed qui facilis nisi. Consequatur ratione ducimus mollitia distinctio voluptatum amet.', '<p>Vel nesciunt optio dicta tenetur. Voluptatibus ipsa ad odio reprehenderit laboriosam voluptatem blanditiis. Debitis velit quia omnis dolore consequuntur officia.</p><p>Numquam error consequuntur sit. Doloribus dolorem et sed dicta consectetur eaque. Quia fugiat tempora qui voluptatem aliquam.</p><p>Ut ratione vero sequi et eaque. Quibusdam fuga velit et autem asperiores neque. Quae autem velit vel. Minus quidem illo consectetur et.</p><p>Aut modi est accusamus ipsam iusto. Ut consequatur voluptatem in numquam. Quo animi minus quo consequatur optio voluptatum modi. Numquam aspernatur ut accusamus quia.</p><p>Temporibus magnam ut reiciendis autem est quae distinctio. Distinctio odit sapiente necessitatibus omnis repudiandae libero ab. Quis itaque consequatur expedita praesentium odit maxime. Animi nulla consequuntur voluptatem voluptas optio animi voluptatem.</p><p>Quas nesciunt quaerat aut et. Officiis in accusantium eaque beatae.</p><p>Aut aut dolorum labore est reiciendis. Recusandae doloremque ut rerum delectus. Vero eos qui ut.</p><p>Doloremque iure cumque consequatur dolorem. Saepe molestiae pariatur quidem reprehenderit. Nihil assumenda pariatur consequatur deserunt illo in hic. Labore et non rerum dolores.</p><p>Quibusdam et ad illum maxime. Corrupti aliquam sed inventore molestiae quasi. Repellat aut laborum velit debitis voluptate reiciendis enim rerum.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(13, 2, 1, 'Asperiores iusto laboriosam minus.', 'sed-beatae-omnis-asperiores-qui-nihil-eum-ut', NULL, 'Aut unde sit dicta porro porro. Necessitatibus neque qui exercitationem placeat neque. Aut explicabo non possimus excepturi suscipit.', '<p>Earum impedit rem nemo soluta. Tempore voluptatem et qui quia labore et eius. Sit optio aspernatur recusandae impedit rem.</p><p>Omnis et asperiores dignissimos eligendi. Sint nihil ullam neque voluptates mollitia quia. Provident dolore eligendi tempore ut explicabo.</p><p>Vitae unde id numquam qui deleniti occaecati occaecati. Quod commodi ut perferendis dolorem placeat voluptas necessitatibus. Excepturi veritatis ut non omnis harum at quibusdam.</p><p>Quasi fugit earum deserunt aliquam et exercitationem. Inventore rerum qui sunt voluptas omnis. Fugit rerum esse illo tempore facilis. Excepturi nihil nisi enim quam sunt recusandae aut.</p><p>Eaque non quidem animi repellendus atque ut libero. Sed et iure id eligendi dicta repellat.</p><p>Enim et aperiam doloribus quo voluptas amet aut. Ab occaecati eos illum occaecati consequatur ipsa culpa. Culpa et doloremque laboriosam unde ea veniam est tempore.</p><p>Officia at sed quaerat atque mollitia ut. Ipsa molestias accusamus consectetur ea sint blanditiis consequuntur. Id atque voluptatum fugit laudantium voluptatem.</p><p>Illo sit itaque dolorum adipisci. Distinctio voluptas facere et doloremque error voluptate. Iure quasi et eveniet fuga. Consequatur quae commodi ut velit excepturi hic.</p><p>Velit ullam aut architecto dolores vitae cupiditate. Vel est omnis aut natus eius. Ad quidem exercitationem deleniti. Nobis dicta sunt vero voluptas corporis.</p><p>Sed animi repellat ex dolore sit deleniti numquam in. Qui nisi id sapiente est voluptatem aliquid. Sint quam hic nulla dolores.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(14, 1, 3, 'Cupiditate porro et eos dolores dolor.', 'quis-vero-nam-quae-enim', NULL, 'Qui et unde quis velit. Facilis ipsam qui modi porro ullam illum. Sint accusamus cupiditate nostrum sequi ducimus numquam.', '<p>Commodi corporis omnis sit id laudantium dolore sit. Sunt quia id aut consequatur vitae eum amet porro. Minus consectetur quasi modi dolor accusantium eos rerum.</p><p>Deleniti alias et et. Quis quae eligendi tempora magni ipsum quidem fugit. Amet aut voluptas excepturi facere eius.</p><p>Voluptatum inventore autem qui impedit est repellat. Ut rerum molestiae quia in adipisci. Nam at eum velit non reprehenderit officia quia vel.</p><p>Consequatur quo ab et natus nobis facilis. Recusandae quaerat voluptatem qui dolorem. Et eos omnis molestias. Sit quo sed vero quia et aliquam ex eum. Quia pariatur exercitationem necessitatibus quos quia rem aut.</p><p>Ullam aliquam voluptatem officia architecto rerum vel. Iste dolore et ipsa et veniam veritatis aut. Sint dolorum exercitationem voluptates quam.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(15, 1, 3, 'Eum veritatis eum voluptatum laboriosam veniam a.', 'quia-id-aperiam-et-officiis-dolores-sequi', NULL, 'Beatae quo suscipit qui sequi dolorem officiis ut. Et commodi est est enim nesciunt vel accusamus. Ipsa ratione sed temporibus labore qui illum.', '<p>Sit dolor aut iste sed enim. Quibusdam cum dolor voluptatem officiis aliquam quo. Illum ad nisi voluptas necessitatibus quia perferendis odit. Cupiditate sed perspiciatis nesciunt accusamus.</p><p>Doloremque ex qui blanditiis earum. Enim voluptatum voluptatem sunt possimus quisquam nesciunt. Aliquam distinctio hic nisi iste laboriosam.</p><p>Sequi sed quis assumenda recusandae. Praesentium quis molestiae totam explicabo. Quis cumque soluta doloribus aperiam numquam. Id id aperiam facere dolore.</p><p>Veniam deserunt qui commodi sapiente. Provident aperiam quia aut eum ut iure. Voluptatem adipisci excepturi modi consequatur accusamus dolorem. Magnam sint velit officia ut animi ut quia aliquid.</p><p>Unde et rerum impedit. Nihil porro sunt a illum. Et natus nihil rerum incidunt quasi. Eum sint ipsum natus tempora et.</p><p>Et totam earum neque et earum. Incidunt ratione consequuntur nisi odit illo modi debitis. Et ea nostrum voluptatum eligendi.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(16, 3, 3, 'Dolor exercitationem quia.', 'ut-velit-sit-aut-perferendis-quia-aliquam-quo-blanditiis', NULL, 'Debitis ullam harum dicta explicabo et totam. Repudiandae atque qui sed aut distinctio. Rerum et sint cupiditate libero ut quia.', '<p>Magnam quae aut consequuntur et qui. In sint et necessitatibus quis iure corrupti soluta. Earum omnis expedita fugiat dolores temporibus eum.</p><p>Voluptatum ratione sapiente quam et. Ducimus est facere accusantium ipsa sequi ab voluptate. Veniam sapiente voluptates qui et laboriosam iusto.</p><p>Et explicabo vero eius voluptatem aut ea vel illo. Voluptatibus magni perspiciatis officiis dolorum amet quasi. Natus autem rerum aut quasi distinctio. Totam provident odit qui. Assumenda nihil qui aliquid odio.</p><p>Ducimus doloremque aperiam debitis quis molestiae non ut. Consequuntur cupiditate vel consequatur expedita suscipit et. Odio voluptatem dolor sint. Et quae aut odio delectus necessitatibus voluptatem vitae dolor.</p><p>Possimus necessitatibus assumenda pariatur aliquam. Tempore labore molestiae quibusdam sit. Sapiente eos sed libero vel omnis laboriosam cum nesciunt.</p><p>Similique odio autem voluptas sapiente corporis recusandae temporibus. Corporis molestias unde voluptatem quis unde. Voluptatibus veniam non voluptate et in.</p><p>Odit necessitatibus et voluptatem. Facere et dolorem perspiciatis eos aut provident. Impedit sequi velit neque quia ex et hic voluptatibus.</p><p>Voluptates est asperiores voluptates rerum. Rem non dolor et. Et laudantium consequatur quidem quia ut.</p><p>In voluptas aut aut quia doloribus sit qui atque. Sed recusandae iste eius et doloremque rerum enim. Libero sint eum quia molestiae fuga.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(17, 1, 1, 'Rerum fugiat molestiae quisquam tenetur cupiditate qui vitae aliquam.', 'et-maiores-ea-harum-modi-molestias', NULL, 'Eaque animi quaerat sit dolores. Vitae quo ipsam in et iste perspiciatis dolor esse. Est et quam dolorem voluptas adipisci adipisci eveniet veritatis. Tempora iure tempore et sapiente est adipisci ipsum.', '<p>Qui et explicabo odit optio rerum. Praesentium perspiciatis autem cupiditate ducimus excepturi. Sit neque est quis et fuga. Aliquam voluptatem veritatis consequuntur minus in itaque. Aperiam ipsum harum quis facilis.</p><p>Iure sit laborum hic voluptatem consequatur deserunt. Sed reiciendis facere sequi. Vitae dolore soluta placeat. Dicta ut earum consequuntur sint voluptas facilis tempora.</p><p>Sit eos sunt ut aut. Velit aliquam dicta libero nostrum ex enim voluptatibus. Maiores accusantium libero facilis dolorem.</p><p>Eius omnis quae sed accusantium neque atque quasi. Officia voluptas voluptatum maxime architecto consequatur voluptatum est. At harum nesciunt sed rerum dolores. Est et inventore rem est consequatur saepe.</p><p>Ut dolorum id dolores eos modi sapiente molestias. Labore molestiae expedita adipisci nam illum sit beatae. Nisi odit beatae tenetur magnam.</p><p>Itaque quis nisi molestiae vel. Commodi velit sit sapiente voluptatum distinctio. Excepturi commodi et ad.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(18, 2, 3, 'Ut soluta doloribus optio molestiae in.', 'ut-sequi-autem-asperiores-cum-quia-doloremque', NULL, 'Enim iure itaque aut soluta. Libero voluptas aliquid aliquid saepe quia. Harum in sit quisquam suscipit voluptatem ullam ut.', '<p>Quod aperiam nemo illo autem. Eos fugiat quasi rerum eveniet voluptatem. Nihil cupiditate accusantium ipsa eligendi doloremque.</p><p>Voluptas quia qui nisi error. Et qui quas ut optio.</p><p>Aut nihil ut id eum repellendus facilis vel. Minima fugiat iure dolor saepe. Fuga voluptas totam quia reprehenderit velit.</p><p>Ipsum harum hic iusto quo et voluptatem corporis. Aut voluptas ut illo dolore vero sint facilis. Repudiandae rerum quod quae ratione voluptas qui.</p><p>Quod quia hic odio omnis hic. Quas a quia atque labore voluptatem ratione. Qui et soluta ab veritatis tempora minus assumenda.</p><p>Id provident molestias possimus et nulla. Voluptate et occaecati repellendus facere earum et omnis. Facere dignissimos officiis a non eum fuga voluptatem quia.</p><p>Id fugit nobis libero blanditiis et velit ab. Dolores dolore blanditiis harum animi quasi. Et impedit eum est dolore iste cum voluptas consectetur.</p><p>Quos velit architecto sed eum expedita nihil. Eos accusantium sint omnis qui aut. Laboriosam nostrum odio a voluptates iusto. Non accusamus fugiat ex.</p><p>Itaque id quia tempora enim possimus rerum optio. Rerum eius rerum voluptatum atque quasi. Sapiente enim dignissimos fugit ducimus voluptatibus illo. Recusandae quo esse delectus quo.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(19, 2, 2, 'Laudantium fugit.', 'ducimus-consequatur-quos-nesciunt-non-possimus', NULL, 'Vel qui aut adipisci molestiae ad quaerat ad eos. Nesciunt cum est consequatur in hic blanditiis quibusdam. Rerum placeat aut ut est molestiae. Aut rerum qui magnam numquam quia reprehenderit.', '<p>Cupiditate molestiae porro at possimus ut est occaecati. Aut aperiam qui aspernatur dignissimos totam. Aliquam ex ut est sed aut minus. Eum perferendis nam est eveniet laboriosam illo est.</p><p>Ipsam eos repudiandae rem dolorem exercitationem non deleniti aliquid. Quidem architecto est consequatur quia incidunt doloribus in. Voluptates quo molestiae similique voluptatum harum.</p><p>A omnis possimus voluptates architecto rerum. Odio id sed dolorum voluptatem quia similique et. Sit quisquam voluptatibus et quo qui.</p><p>Exercitationem veniam fuga debitis sit et. Provident sint dicta qui veniam et velit. Dignissimos corporis culpa delectus quia. Neque nobis quas ut et. Saepe exercitationem et sapiente et vel.</p><p>Amet magni in totam. Ab ut nihil est alias. Magnam cumque voluptatem praesentium illo corporis voluptatibus. Odit sint et ducimus numquam.</p><p>Nemo ea nemo non aut quia. Eius eos eveniet voluptatem est fuga beatae. Asperiores tempora nihil omnis dolorem reprehenderit voluptates voluptas. Nihil perferendis praesentium aliquam ab tempore iste ut.</p><p>Reprehenderit voluptatem sed quas dicta dolorem libero. Rerum sit dolores molestiae voluptas vitae corporis. Consequatur quia officiis molestiae est. Voluptatem eum eum illo corrupti architecto eaque nesciunt. Laudantium animi dolorum et consectetur officiis nemo in.</p><p>Quos magni illo aliquam voluptate molestiae veritatis. Omnis sapiente deleniti soluta. Non voluptatem eos eveniet quibusdam. Necessitatibus enim explicabo sit tempora.</p><p>Sit deleniti reiciendis minima nostrum consectetur. Amet ratione expedita atque nam. Officia officia vero ab animi molestias culpa.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(20, 2, 3, 'Vitae quo.', 'quasi-corporis-quia-delectus', NULL, 'Quae dignissimos dolor recusandae aperiam libero est. Et et error voluptatum vitae.', '<p>Rerum repellendus molestiae omnis earum est ut nostrum commodi. Quas debitis et recusandae nesciunt velit. Saepe omnis est qui dignissimos qui quia. Rerum asperiores id deleniti dolores et. Beatae voluptate velit excepturi voluptatem et.</p><p>Voluptatem eaque adipisci ipsam omnis consectetur odit. Amet eum voluptatem aut explicabo. Fugit quod omnis quam voluptatem maiores numquam. Enim molestiae maxime nihil et.</p><p>Ducimus fugit temporibus quidem. Exercitationem est ea quod eos. Debitis harum optio possimus molestiae ducimus officia nihil.</p><p>Expedita commodi ad possimus cumque ad. A consequuntur ut ipsam possimus non error. Explicabo recusandae quae magni aliquid. Ad sit ipsa est.</p><p>Alias molestias ullam sed enim aut accusantium. Earum sed dolores molestias iusto. Corporis libero tempora ad totam et quaerat.</p>', NULL, '2023-07-30 05:09:25', '2023-07-30 05:09:25'),
(22, 2, 1, 'Belajar UI/UX', 'belajar-ui-ux', 'post-images/kF2xZ6vM52gFuZar84dwIdxSLAOrQIqcNgGFrAjI.jpg', 'Ini Post Baru', '<div>Ini Post Baru</div>', NULL, '2023-07-30 05:27:40', '2023-07-30 05:27:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Samirul Huda', 'samirulhuda', 'samirulhuda87@gmail.com', NULL, '$2y$10$kTSkoKBxEu4YRSKpcooDfupbPL5ENh.Luh7ZCyDvJlWLnH9X31oey', NULL, '2023-07-30 05:09:23', '2023-07-30 05:09:23', 1),
(2, 'Hana Zulaika', 'vera06', 'ikin86@example.net', '2023-07-30 05:09:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LitnU4dV2DfTFljVdesrJeCw2LahlV6uKM0VJYGdNaqqlvvnWBElPi5CUAUV', '2023-07-30 05:09:25', '2023-07-30 05:09:25', 0),
(3, 'Baktiadi Warta Saefullah', 'kyulianti', 'luhung.hidayat@example.com', '2023-07-30 05:09:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wz8vYYynWe', '2023-07-30 05:09:25', '2023-07-30 05:09:25', 0),
(4, 'Mahfud Damu Dongoran S.Farm', 'wasita.nalar', 'susanti.hana@example.net', '2023-07-30 05:09:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RrvfF2qxO2', '2023-07-30 05:09:25', '2023-07-30 05:09:25', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
