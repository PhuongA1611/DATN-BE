-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 01:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `alt`, `url`, `position`) VALUES
(13, 'Living Room', 'https://res.cloudinary.com/phuong160611/image/upload/v1679995367/1679995366799.png.png', 'bottom'),
(14, 'Dining Room', 'https://res.cloudinary.com/phuong160611/image/upload/v1679995382/1679995381509.png.png', 'bottom'),
(15, 'Dinner Table', 'https://res.cloudinary.com/phuong160611/image/upload/v1679995724/1679995723144.jpg.jpg', 'top'),
(17, 'Spring Living Chair', 'https://res.cloudinary.com/phuong160611/image/upload/v1679996028/1679996027017.png.png', 'top'),
(18, 'Spring bed collection', 'https://res.cloudinary.com/phuong160611/image/upload/v1679996527/1679996525492.png.png', 'top'),
(19, 'Bedroom Collection', 'https://res.cloudinary.com/phuong160611/image/upload/v1679996796/1679996794147.png.png', 'top'),
(20, 'Home Office', 'https://res.cloudinary.com/phuong160611/image/upload/v1679997156/1679997155236.jpg.jpg', 'top');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `productColor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `productSize` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `subTotal`, `productColor`, `productSize`, `created_at`, `updated_at`, `userId`, `productId`) VALUES
(6, 4, 2249, 'Alabaster', 'Twin', '2023-05-04 08:11:27', '2023-05-07 17:07:49', 2, 2),
(7, 1, 585, 'white', '30\"w x 3\"d x 72\"h', '2023-05-04 08:11:28', '2023-05-04 08:11:28', 2, 3),
(18, 1, 585, 'white', '30\"w x 3\"d x 72\"h', '2023-05-07 17:05:01', '2023-05-07 17:05:01', 3, 3),
(19, 1, 318, 'mental', '22\"w x 6.5\"d x 35\"h.', '2023-05-07 17:05:02', '2023-05-07 17:05:02', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `categoryIcon` varchar(255) NOT NULL,
  `categorySlug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryIcon`, `categorySlug`, `created_at`, `updated_at`) VALUES
(2, 'Chair', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780344/1682780339409.png.png', 'chair', '2023-04-29 14:59:06', '2023-04-29 14:59:06'),
(3, 'Table', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780354/1682780353603.png.png', 'table', '2023-04-29 14:59:15', '2023-04-29 14:59:15'),
(4, 'Sofa', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780368/1682780368078.png.png', 'sofa', '2023-04-29 14:59:29', '2023-04-29 14:59:29'),
(5, 'Lamp', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780438/1682780430074.png.png', 'lamp', '2023-04-29 15:00:40', '2023-04-29 15:00:40'),
(6, 'Bed', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780501/1682780500485.jpg.jpg', 'bed', '2023-04-29 15:01:42', '2023-04-29 15:01:42'),
(7, 'Dresser', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780510/1682780509848.jpg.jpg', 'dresser', '2023-04-29 15:01:51', '2023-04-29 15:01:51'),
(8, 'Shelf', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780525/1682780525416.jpg.jpg', 'shelf', '2023-04-29 15:02:06', '2023-04-29 15:02:06'),
(9, 'Plate', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780542/1682780542448.jpg.jpg', 'plate', '2023-04-29 15:02:23', '2023-04-29 15:02:23'),
(10, 'Vase', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780550/1682780549509.jpg.jpg', 'vase', '2023-04-29 15:02:31', '2023-04-29 15:02:31'),
(11, 'Mirror', 'https://res.cloudinary.com/phuong160611/image/upload/v1682780558/1682780558085.jpg.jpg', 'mirror', '2023-04-29 15:02:39', '2023-04-29 15:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `productId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 20, 2, '2023-05-04 08:19:50', '2023-05-04 08:19:50'),
(2, 3, 2, '2023-05-04 08:20:00', '2023-05-04 08:20:00'),
(3, 2, 2, '2023-05-04 08:20:08', '2023-05-04 08:20:08'),
(4, 6, 2, '2023-05-04 08:20:15', '2023-05-04 08:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1_create_user_table.js', 1, '2023-04-28 07:53:34'),
(2, '2_create_categories_table.js', 1, '2023-04-28 07:53:34'),
(3, '3_create_products_table.js', 1, '2023-04-28 07:53:34'),
(4, '4_create_shipping_detail_table.js', 1, '2023-04-28 07:53:34'),
(5, '5_create_orders_table.js', 1, '2023-04-28 07:53:34'),
(6, 'create_advertisements_table.js', 1, '2023-04-28 07:53:34'),
(7, 'create_cart_table.js', 1, '2023-04-28 07:53:35'),
(8, 'create_favorites_table.js', 1, '2023-04-28 07:53:35'),
(9, 'create_order_detail_table.js', 1, '2023-04-28 07:53:35'),
(10, 'create_payment_table.js', 1, '2023-04-28 07:53:35'),
(11, 'create_roles_table.js', 1, '2023-04-28 07:53:35'),
(12, 'create_transaction_table.js', 1, '2023-04-28 07:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations_lock`
--

CREATE TABLE `migrations_lock` (
  `index` int(10) UNSIGNED NOT NULL,
  `is_locked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations_lock`
--

INSERT INTO `migrations_lock` (`index`, `is_locked`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `shippingId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `created_at`, `updated_at`, `shippingId`, `userId`) VALUES
(5, 'processing', '2023-05-04 08:08:37', '2023-05-20 10:52:42', 2, 3),
(6, 'completed', '2023-05-04 09:24:10', '2023-05-20 10:40:58', 2, 3),
(7, 'cancelled', '2023-05-04 09:58:09', '2023-05-20 10:41:02', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productColor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `productSize` varchar(255) NOT NULL,
  `orderId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `price`, `quantity`, `productColor`, `productSize`, `orderId`, `productId`, `created_at`, `updated_at`) VALUES
(3, 2249, 1, 'Alabaster', 'Twin', 5, 2, '2023-05-04 08:08:37', '2023-05-04 08:08:37'),
(4, 585, 1, 'white', '30\"w x 3\"d x 72\"h', 5, 3, '2023-05-04 08:08:37', '2023-05-04 08:08:37'),
(5, 2472, 3, 'Burnt Wax', '44\"', 6, 8, '2023-05-04 09:24:10', '2023-05-04 09:24:10'),
(6, 585, 1, 'white', '22\"w x 6.5\"d x 35\"h.', 6, 3, '2023-05-04 09:24:10', '2023-05-04 09:24:10'),
(7, 224, 1, 'Reactive Sage', '17\"', 7, 5, '2023-05-04 09:58:09', '2023-05-04 09:58:09'),
(8, 2174, 1, 'Gravel', '86\"', 7, 6, '2023-05-04 09:58:09', '2023-05-04 09:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(250) CHARACTER SET utf8 NOT NULL,
  `productSlug` varchar(250) CHARACTER SET utf8 NOT NULL,
  `productImg` text NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `productSize` varchar(50) NOT NULL,
  `productColor` varchar(50) NOT NULL,
  `sellingPrice` int(10) UNSIGNED NOT NULL,
  `discountPrice` int(10) UNSIGNED NOT NULL,
  `product3DModelPath` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `productDescription` text CHARACTER SET utf8 NOT NULL,
  `productThumbnail` varchar(255) NOT NULL,
  `categoryId` int(10) UNSIGNED NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productSlug`, `productImg`, `productCode`, `productSize`, `productColor`, `sellingPrice`, `discountPrice`, `product3DModelPath`, `productDescription`, `productThumbnail`, `categoryId`, `createdAt`, `updatedAt`) VALUES
(2, 'Emmett Side Storage Bed', 'emmett-side-storage-bed', 'https://res.cloudinary.com/phuong160611/image/upload/v1683125749/oxgxegrl4thberud86yn.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125751/c7cw6otcolpdspyasuuv.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125753/soxvgymrwdkhgt3gk9ly.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125756/nmfbhjsckxjijkao3bso.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125758/znhu50usqvdio5mxqg00.jpg', 'bed1', 'Twin,Single,Double,Queen,King', 'Alabaster,Dove,Graphite,White', 2249, 2159, 'https://res.cloudinary.com/phuong160611/image/upload/v1683125745/t7yjmu4h49rpbdigcnel.glb', 'Designed by you: pick the height and fabric.\r\nHeadboard that’s effortlessly tailored.\r\nSide drawers for discrete functional storage.\r\nContract Grade for unmatched durability. Four side drawers make it easy to keep clothes, bedding, linen and more within reach. The headboard takes centre stage on this bed, for an elegant look that\'s tailored to you.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683125747/nyqlwrmfzmloyjikl48p.jpg', 6, '2023-05-03 14:56:00', '2023-05-03 14:56:00'),
(3, 'Floating White Lacquer Floor Mirror', 'floating-white-lacquer-floor-mirror', 'https://res.cloudinary.com/phuong160611/image/upload/v1683125993/vcrikatxmieogjmfyer3.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125994/k2nlobkaf9o4zadlzrec.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125996/fr6bovbuaesdzlei6szr.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125998/owwdwezfvmqimpcvt469.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683125999/fwdjthjsrsd69kqo7wbv.jpg', 'mirror1', '30\"w x 3\"d x 72\"h', 'white,gold,broze', 585, 529, 'https://res.cloudinary.com/phuong160611/image/upload/v1683125988/mhwuvxghx0d8kneahqpr.glb', 'This expansive floor mirror appears to float within its solid wood frame. Long and tall, it’s perfect for brightening up dark corners or adding depth and dimension to a room.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683125991/zlgnamqtkdjhvfwrkcl2.jpg', 11, '2023-05-03 15:00:00', '2023-05-03 15:00:00'),
(4, 'Industrial Entryway Mirror', 'industrial-entryway-mirror', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126135/hclyd9yk5whni6qecaom.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126137/ovzdxx4vuhmj98hmsuxr.jpg', 'mirror2', '22\"w x 6.5\"d x 35\"h.', 'mental', 318, 299, 'https://res.cloudinary.com/phuong160611/image/upload/v1683126129/dxowcc9miyb0bupwellz.glb', 'Equipped with steel hooks and a small ledge.\r\nGreat for last minute lipstick checks.\r\nDoubles as bag, jacket and accessory storage. Steel hooks.\r\nHanging hardware included.\r\nMade in India.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126133/rz27zxtx1doflkuev52q.jpg', 11, '2023-05-03 15:02:19', '2023-05-03 15:02:19'),
(5, 'Asymmetry Ceramic Table Lamp', 'asymmetry-ceramic-table-lamp', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126450/r027ktsrsq6ro2sldffh.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126452/gc4yllqj7cy7n3xgrsyy.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126454/smusula5rmylqhk1z68s.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126457/n51ve6i6xqfltcebymlm.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126459/h4qjjt19hqbsaao9m5zz.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126461/bwjcmyo2kh7ciy45xfx4.jpg', 'lamp1', '17\",31\",42\"', 'Reactive Sage,Black,Green', 224, 199, 'https://res.cloudinary.com/phuong160611/image/upload/v1683126445/sii7sem6dq3keyssxdy4.glb', 'The unique, organically shaped base.\r\nIt\'s topped with a pure linen shade.\r\nOffers an ambient diffused light. An asymmetrical ceramic base takes its cues from Japanese pottery. Made in Vietnam.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126448/phk9c6p7tluzvmlrmong.jpg', 10, '2023-05-03 15:07:42', '2023-05-03 15:07:42'),
(6, 'Harmony Modular Multi-Piece Sofa', 'harmony-modular-multi-piece-sofa', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126793/zh1h9fu1eyyoi2eekeuv.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126795/fv0r8bejrqlirpporykg.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126797/mcfe5hybriikyfefax6w.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126799/xzciwiyof6qdjobksgex.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126801/lkcz1fimhbmmimjksewg.jpg', 'sofa1', '86\",121\"', 'Gravel,Alabaster,Black,Pewter', 2174, 2099, 'https://res.cloudinary.com/phuong160611/image/upload/v1683126787/rglkivwvykifoxxeqvkx.glb', 'Harmony is our most comfortable sofa ever.\r\nPillowy-soft down cushions top the boxy frame.\r\nHand-built frames with hand-finished upholstery.\r\nPieces are modular, for added flexibility. Assembled in the USA.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126790/wgwpciisfrs86oo2upsz.jpg', 4, '2023-05-03 15:13:22', '2023-05-03 15:13:22'),
(7, 'Dalton Sofa', 'dalton-sofa', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126977/ztudfikm9tcxt0nyyley.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126979/qkahprqy6p6op7jcpbtl.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126980/rwmimcgv9vu6dj7phkpa.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126982/s1nsnkiatmtmrj1xeepr.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126984/pjm9nex8izj9snzfchld.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683126985/avrmohxcdhttpsa2gjdz.jpg', 'sofa2', '82\",92\"', 'Graphite,Sand,Pewte,Dove', 3149, 3099, 'https://res.cloudinary.com/phuong160611/image/upload/v1683126973/uimvete5fpncw81mkzq8.glb', 'Low profile for understated elegance.\r\nStrikes a balance between modern & traditional.\r\nSink-in cushions surround you with comfort.\r\nContract Grade so you know it\'s built to last. A sleek silhouette with an angled back gives you support and exceptional comfort. Made in Mexico.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683126975/fhk9br0vdmvz7acc1zoj.jpg', 4, '2023-05-03 15:16:26', '2023-05-03 15:16:26'),
(8, 'Anton Coffee Table', 'anton-coffee-table', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127164/lzmuhgob582aqzn34qz5.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127166/odo95didus1c8ensaqkz.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127168/hloezebxen1a8wm5lngb.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127170/muxpkb12ymtqv7tt3705.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127172/wi34msxmubochzlszeud.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127173/xgaqhdfcto823ckkv0rn.jpg', 'table1', '44\",53\"', 'Burnt Wax,Cerused White', 824, 799, 'https://res.cloudinary.com/phuong160611/image/upload/v1683127159/pnkkwclwj6wuhqf0vscy.glb', 'Its rounded, shapely silhouette.\r\nEach is crafted from solid mango wood.\r\nYour choice of beautiful, natural finish.\r\nSustainably sourced and Fair Trade Certified™. Each is sustainably sourced from mango wood trees that no longer bear fruit. Made in India.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127161/s1wzkxtsdpefvffobi4o.jpg', 3, '2023-05-03 15:19:34', '2023-05-03 15:19:34'),
(9, 'Tulip Pedestal Bistro Table', 'tulip-pedestal-bistro-table', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127333/d4x5x3wukwcj4wpfo938.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127334/udrlvhtgrphh3n36k4nd.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127336/wribotdo7oy9wrpom8j5.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127338/vdvfva4axhgpmcjnnkpd.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127340/yh9volpkfjxaxznlk4hk.jpg', 'table2', '42\"', 'Antique Rust,Raw Nickel', 1949, 1899, 'https://res.cloudinary.com/phuong160611/image/upload/v1683127328/dcftiumb5ibmtbgsgcwc.glb', 'Our sculptural Tulip Pedestal Bistro Table works great in spaces both small and large. With a spacious top, it\'s perfect for everything from impromptu dinner parties to card games with friends. Aluminum.\r\nSuitable for indoor or outdoor use.\r\nMade in India.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127331/mzbgkmoqffif8k3tpjk7.jpg', 3, '2023-05-03 15:22:21', '2023-05-03 15:22:21'),
(10, 'Modern Melamine Outdoor Dinner Plate', 'modern-melamine-outdoor-dinner-plate', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127534/nkmxo7mzk4eycacceblm.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127536/uexjktufl81l88shgagi.jpg', 'plate1', 'Set of 4,Set of 8', 'Stone White,Silver Pine,Citrus Yellow,Pink Grapefr', 53, 49, 'https://res.cloudinary.com/phuong160611/image/upload/v1683127528/rv4fznp5btwvodgiebtb.glb', 'Created by designer Aaron Probyn just for us.\r\nOur melamine is modern, lightweight and durable.\r\nSummery hues make it fun to mix and match. Made of BPA-free melamine, our bestselling outdoor dinnerware seamlessly takes you from picnic to pool party. Fun and fresh hues bring a pop of colour to your outdoor table.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127533/ng4cjcaagbbjyqzjb63k.jpg', 9, '2023-05-03 15:25:37', '2023-05-03 15:25:37'),
(11, 'Drum Floor Lamp Shades', 'drum-floor-lamp-shades', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127862/xdqjrcluo3bs5buuzouh.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127863/tbu3y6dh98mdlzo2sfyo.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127865/sdi7ufyykdrmvguthxks.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127867/rmwqt7zuodsqlnodfmwm.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127869/qbldk5n6onnybpksfnyq.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683127870/d35rcqbgzx9jbio80oly.jpg', 'lamp2', '13\",19\"', 'white,Natural Ash', 97, 79, 'https://res.cloudinary.com/phuong160611/image/upload/v1683127858/milybiztkv9xqlew9izi.glb', 'Simple, sophisticated design and neutral colouring make this go-anywhere Drum Shade an ideal option for creating ambient light in a straightforward and stylish way. Cotton-covered diffuser softly filters light.\r\nMade in China.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683127860/gmclwa7oezhiklsjxenl.jpg', 5, '2023-05-03 15:31:11', '2023-05-03 15:31:11'),
(12, 'Overarching Metal Shade Floor Lamp', 'overarching-metal-shade-floor-lamp', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128056/qwr8d40pug0mglcivy53.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128057/hql2etcxmrkcbcsaxi9i.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128059/zcpau1fybcaua2a9shxi.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128061/rkruh4uyb0nl0fjha9ke.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128062/nr4kmdcjntyzxxtoal57.jpg', 'lamp3', '80\"', 'Brass,black', 509, 489, 'https://res.cloudinary.com/phuong160611/image/upload/v1683128050/p363o1q1t3g6ojgamau1.glb', 'Takes its cues from mid-century design.\r\nBathes your space in light, illuminating from above.\r\nIt\'s Contract Grade and built to last. Made in China.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128054/nkq1eigcppywek2rioyx.jpg', 5, '2023-05-03 15:34:23', '2023-05-03 15:34:23'),
(13, 'Counter Stools', 'counter-stools', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128337/exrbalk1sab4cltsoqcy.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128338/adbsjotbk8c48t9tmhj8.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128340/uazzsspjrkhoaycij7gw.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128342/omadnqzqqi003c06o1n9.jpg', 'chair1', '19.8\"w x 20.75\"d x 36.75\"h', 'Nut,Banker,Banker', 759, 719, 'https://res.cloudinary.com/phuong160611/image/upload/v1683128332/qbiwgwyzvnkvzrirbfg4.glb', 'Softly rounded back adds a little luxury to your counter or bar.\r\nPadded seat cushion for extra comfort at mealtime.\r\nGREENGUARD Gold Certified for a healthier home.\r\nContract Grade, so you know it\'s built to last. Made in Vietnam.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128335/dfdmrgnguepyljv6nomy.jpg', 2, '2023-05-03 15:39:03', '2023-05-03 15:39:03'),
(14, 'Range Bar & Counter Stools', 'range-bar--counter-stools', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128554/kjhsg6mf0ltmwjit3j22.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128555/fnu5sfwze3dajnd9op9i.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128557/lzqbv1ylqielfr84pkio.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128559/cfpodo3xpazwwnw6k0as.jpg', 'chair2', '26\"', 'Alabaster,Alabaster,Frost Grey', 426, 399, 'https://res.cloudinary.com/phuong160611/image/upload/v1683128550/zvup5x0zlsf0guvczupb.glb', 'It\'s a modern take on a classic sled base.\r\nFully padded seat and back are ultra comfortable.\r\nContract Grade for unmatched durability. Made in China. ', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128552/oqtjbqezdzeg220k8qsg.jpg', 2, '2023-05-03 15:42:41', '2023-05-03 15:42:41'),
(15, 'Profile Bookcase', 'profile-bookcase', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128796/i9eigq2ellah3tbyfrio.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128798/zj9kr7z12nlfceux5prr.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128800/wpq1vzs3dqhpqyjnseea.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128802/vz0ktk1olis3qz0t5iph.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128804/gqbpcgycdmv7ywhsr4hm.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128806/dj2wwt8wiwfecpe8rqeq.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128807/vcf9e5vqwdtosgizcu2i.jpg', 'bookcase1', '34\"', 'Dark Bronze,White', 1048, 999, 'https://res.cloudinary.com/phuong160611/image/upload/v1683128791/m4tn7b9cbidgn3s5uzwi.glb', 'Turns your books and decor into an artful display.\r\nDesigned with staggered, tiered shelving.\r\nMade with durable iron in your choice of finish.\r\nContract Grade, so you know it\'s built to last. Elevates your essentials with its airy open shelves. This versatile frame is made from sturdy iron that\'s built to last.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128794/u7qemb3rbd4umwva2gja.jpg', 8, '2023-05-03 15:46:48', '2023-05-03 15:46:48'),
(16, 'Iron Back 5-Level Shelf', 'iron-back-5-level-shelf', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128988/a2prdp7id5kbxpol0z0l.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128990/wdur21wgkhgqndxlqwhn.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683128991/ctqemwn5hd0owsjrcrrq.jpg', 'shelf1', '47\"w x 14\"d x 78\"h', 'iron', 1499, 1349, 'https://res.cloudinary.com/phuong160611/image/upload/v1683128982/wxwagjzkzruakgdbraif.glb', 'Compact footprint with plenty of storage.\r\nOpen shelves display all your favourite trinkets.\r\nIron frame for long-lasting durability. Iron frame in a Matte Black finish.\r\nSolid fir wood shelves in a Natural finish.\r\nAll wood is kiln-dried for added durability.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683128986/niyxfmr7fz3d9lvmxqgb.jpg', 8, '2023-05-03 15:49:52', '2023-05-03 15:49:52'),
(18, 'Rosanna Ceravolo Media Console', 'rosanna-ceravolo-media-console', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129302/acvydaf41x8fy7v5ltig.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129305/v2tv6at6ip8egma0icik.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129307/ijrg8qttrqosedhevbia.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129309/rglmv7vv9sdjoeirwk3a.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129312/ok6htena3nxoxdgboqnn.jpg', 'console1', '68\"', 'White,Espresso', 2399, 2279, 'https://res.cloudinary.com/phuong160611/image/upload/v1683129297/j4fzd0hsoglx5cqcvawu.glb', 'Created in collaboration with Melbourne-based designer Rosanna Ceravolo, this media console\'s geometric patterned facade gives it texture and subtle depth. With a solid wood base and roomy cabinets, it\'s a storage piece and a work of art.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129300/ax17cufmc9i8xouppadg.jpg', 7, '2023-05-03 15:55:13', '2023-05-03 15:55:13'),
(19, 'Organic Matte Stoneware Salad Plate Sets', 'organic-matte-stoneware-salad-plate-sets', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129595/s8qgbzvvr6n7h7vo1vdx.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129597/izayflkrdbw04xkk7skp.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129598/t7lsnfyyojpe4lgsrzsj.jpg', 'plate2', '9\"diam. x 1\"h', 'White,Black', 37, 25, 'https://res.cloudinary.com/phuong160611/image/upload/v1683129591/qgal5d5ux6p33rjcc7is.glb', 'Lightly stretched to form organic shapes.\r\nMade from stoneware in a rustic matte finish.\r\nSold as a set of four.\r\nMicrowave and dishwasher safe for daily use.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129593/fiersqpdeoxmqcqozrzk.jpg', 9, '2023-05-03 15:59:59', '2023-05-03 15:59:59'),
(20, 'Reactive Glaze White Ceramic Vases', 'reactive-glaze-white-ceramic-vases', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129789/k395zebcpdwijznp6kna.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129791/ke1u3zfziqbmhnz7f8ae.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129793/ppboaznxhgszkjxuqtar.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129794/nnc4z6rfv6euppapdcsr.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129796/p7pxpwcic06w2sjszdkv.jpg', 'vase1', 'Bud,Small,Large,Extra Tall Bottle', 'White', 35, 25, 'https://res.cloudinary.com/phuong160611/image/upload/v1683129785/mqeun60butw6nfvlo6dy.glb', 'These earthenware vases are finished with a reactive glaze—a technique admired for its variegated colouring—that makes each one subtly one-of-a-kind. Made in Vietnam.', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129788/ifadq3w0h7bzxo6kkbky.jpg', 10, '2023-05-03 16:03:17', '2023-05-03 16:03:17'),
(21, 'Reclaimed Wood Floor Mirror', 'reclaimed-wood-floor-mirror', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129983/esldyn5zbbk7pbwlly0q.jpg,https://res.cloudinary.com/phuong160611/image/upload/v1683129985/fqh16sxp49zseykntgu2.jpg', 'mirror3', '24\"W x 72\"H', 'wood', 725, 679, 'https://res.cloudinary.com/phuong160611/image/upload/v1683129979/cz6prnqednvfjh91zay3.glb', 'Made from solid reclaimed wood.\r\nCertified to FSC standards.\r\nAn inviting accent for your coziest rooms. Natural variations in the wood make each piece subtly unique. Mirrored glass.\r\nCan be wall-mounted or leaned against a wall.\r\nIncludes snap screw and anchor for wall mounting.\r\nMade in Vietnam. ', 'https://res.cloudinary.com/phuong160611/image/upload/v1683129981/zjo27j6jnvdcipkvggec.jpg', 11, '2023-05-03 16:06:26', '2023-05-03 16:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_detail`
--

CREATE TABLE `shipping_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 NOT NULL,
  `district` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ward` varchar(255) CHARACTER SET utf8 NOT NULL,
  `postcode` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_detail`
--

INSERT INTO `shipping_detail` (`id`, `userId`, `fullName`, `address`, `province`, `district`, `ward`, `postcode`, `phone`, `created_at`, `updated_at`) VALUES
(2, 3, 'Trần Phương', 'Yên Xá', 'Thành phố Hà Nội', 'Huyện Thanh Trì', 'Xã Tân Triều', '', '0364468509', '2023-05-04 08:08:34', '2023-05-04 08:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(127) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `image` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `refreshToken` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `fullName`, `phone`, `address`, `gender`, `dateOfBirth`, `image`, `refreshToken`, `created_at`, `updated_at`) VALUES
(1, 'kienp544@gmail.com', '$2b$10$a8iUmz99nIyWh1wkXOts7eXU8rIKDJr/0mNNnyV0YDBLH1uUdib2a', 2, 'Viet Nguyen 2', NULL, 'Thai Binh', NULL, '2001-10-25', NULL, '1//048KL0niZK5HLCgYIARAAGAQSNwF-L9Ircyc3YR_whRAJZ8xVObY6FN56Y5CoyT2AM9qSLWdwE0jaLHeWpU-dvsVZbVgUZTOu-nE', '2023-04-28 07:58:03', '2023-05-04 10:06:10'),
(2, 'admin@gmail.com', '$2b$10$enBlgGY6zTfXzlae1tFOnOnkmGDYgrbcArJD0osJPu1iO5cndTksC', 1, '', NULL, '', '', '0000-00-00', NULL, '1//048KL0niZK5HLCgYIARAAGAQSNwF-L9Ircyc3YR_whRAJZ8xVObY6FN56Y5CoyT2AM9qSLWdwE0jaLHeWpU-dvsVZbVgUZTOu-nE', '2023-04-28 08:04:33', '2023-05-06 10:06:15'),
(3, 'tranthiphuong160611@gmail.com', '$2b$10$pKEEOl1Hkm7TdKiZQBq8AuzjqWx1FEC85GPNLaid7IkyJrPkwz/yi', 2, 'phuong', NULL, NULL, '2', '2023-05-08', NULL, '1//048KL0niZK5HLCgYIARAAGAQSNwF-L9Ircyc3YR_whRAJZ8xVObY6FN56Y5CoyT2AM9qSLWdwE0jaLHeWpU-dvsVZbVgUZTOu-nE', '2023-05-03 16:08:25', '2023-05-06 10:03:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_userid_index` (`userId`),
  ADD KEY `cart_productid_index` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categoryname_unique` (`categoryName`),
  ADD KEY `categories_categoryname_index` (`categoryName`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_productid_foreign` (`productId`),
  ADD KEY `favorites_userid_foreign` (`userId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations_lock`
--
ALTER TABLE `migrations_lock`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_shippingid_index` (`shippingId`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_orderid_index` (`orderId`),
  ADD KEY `order_detail_productid_index` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_productname_unique` (`productName`),
  ADD KEY `products_categoryid_index` (`categoryId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations_lock`
--
ALTER TABLE `migrations_lock`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_detail`
--
ALTER TABLE `shipping_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `favorites_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shippingid_foreign` FOREIGN KEY (`shippingId`) REFERENCES `shipping_detail` (`id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
