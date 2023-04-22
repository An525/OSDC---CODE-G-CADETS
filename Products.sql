-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 10:51 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Ashwagandha(100 g)', '<p>Ashwagandha (Withania somnifera) is a small woody plant native to India and North Africa. Its root and berries are used to produce a very popular Ayurvedic remedy. It’s considered an adaptogen, which means that it’s believed to help your body manage stress more effectively. Research has shown that it reduces levels of cortisol, a hormone that your adrenal glands produce in response to stress.\r\nThere’s also evidence linking ashwagandha to lower levels of anxiety and improved sleep in people with stress and anxiety disorders.</p>', '100.00', '120.00', 35, 'img.jpg', '2022-11-29 19:58:28'),
(2, 'Boswellia(50 g)', '<p>Boswellia, also known as Indian frankincense or olibanum, is made from the resin of the Boswellia serrata tree. It’s known for its easily recognizable spicy, woody aroma.\r\nResearch suggests that it may be particularly effective at reducing inflammation by preventing the release of inflammation-causing compounds known as leukotrienes .\r\nIn test-tube and animal studies, boswellia appears to be as effective as non-steroidal anti-inflammatory drugs (NSAIDs), yet with fewer side effects .\r\nHuman studies link boswellia to reduced pain, improved mobility, and a greater range of movement in people with osteoarthritis and rheumatoid arthritis. It may also help prevent oral infections and fight gingivitis.', '280.00', '300.00', 23, 'b.jpg', '2022-11-24 10:29:34'),
(4, 'Triphala(50 g)', '<p>Test-tube and animal studies show that triphala may reduce inflammation caused by arthritis, as well as prevent or limit the growth of certain types of cancer.\r\nIt may also function as a natural laxative, reducing constipation, abdominal pain, and flatulence while improving the frequency and consistency of bowel movements in people with gut disorders.</p>', '60.00', '100.00', 7, 'triphala.jpg', '2022-11-21 20:30:30'),
(6, 'Neem(100 g)', '<p>Neem is a well-known herb due to its bitter taste. The word ”Neem” is derived from the Sanskrit Nimba – which means the bestower of good health. Neem has miraculous healing powers used in various disorders. It is used in almost 75% of formulations in Ayurveda.</p>', '69.00', '0.00', 10, 'download.jpg', '2022-11-25 17:55:22'),
(7, 'Cumin(100 g)', '<p>Cumin is a spice native to the Mediterranean and Southwest Asia. It’s made from the seeds of the Cuminum cyminum plant, which are known for their distinctive earthy, nutty, and spicy flavor.\r\nStudies have also linked this Ayurvedic spice to reduced symptoms of irritable bowel syndrome (IBS), such as abdominal pain and bloating\r\nResearch shows that cumin may boost the activity of digestive enzymes and facilitate the release of bile from the liver, speeding digestion and easing the digestion of fats\r\nPlus, cumin may protect against type 2 diabetes by lowering blood sugar levels and improving insulin sensitivity. It may also protect against heart disease by increasing HDL (good) cholesterol while reducing triglycerides and LDL (bad) cholesterol.</p>', '79.00', '0.00', 34, 'cumin.jpg', '2022-11-19 14:25:40'),
(8, 'Turmeric(100 g)', '<p>Curcumin, its main active compound, has powerful antioxidant and anti-inflammatory properties. Test-tube research shows that it may be equally or even more effective than some anti-Also, turmeric may help protect against heart disease, in part by improving blood flow as effectively as exercise or certain pharmaceutical drugs. One study further suggests that it may be as effective as Prozac, a drug commonly used to treat depression inflammatory drugs — without all of their side effects.\r\nMoreover, compounds in turmeric may help preserve brain function by increasing brain levels of brain-derived neurotrophic factor (BDNF). Low levels of BDNF have been linked to disorders like Alzheimer’s and depression.</p>', '50.00', '0.00', 15, 'turmeric.jpg', '2022-11-27 20:12:23'),
(9, 'Amla(100 g)', '<p>Cultivated throughout India and nearby countries, amla has gained a following throughout the world as a \"superfruit.\" It\'s no surprise — a 100-gram serving of fresh amla berries contains as much vitamin C as 20 oranges.  \r\nAmla, also known as Indian gooseberries, grows on a flowering tree of the same name. The small berries are round and bright or yellow-green. Though they are quite sour on their own, their flavor can enhance recipes they’re added to. \r\nWhile we can\'t be entirely sure when Ayurvedic healers started using amla berry, historical records tell us they’ve been used in remedies for at least 1,000 years. \r\nIncorporating this ancient superfruit into your diet may improve your overall health.</p>', '149.00', '200.00', 15, 'amla.jpg', '2022-11-24 20:24:05'),
(11, 'Bhibitaki(50 g)', '<p>Bhibitaki | Baheda is a very important herb that we should get to know, bibhitaki is the Hindi name of the herb. It is one of the three ingredients that make up the famous triphala, that itself signifies it’s importance in ayurvedic medicine.\r\nThe tree that bears these fruits are found all over India. It’s botanical name is Terminalia Bellerica and is commonly called Belleric Myrobalan in English. Though this tree is not commonly found all over in Tamil Nadu, if you happen to trek in any forest you can easily spot the tree.\r\nThe fruits are dried and sold in the markets, you can also easily buy them online too. Though the fruits look like haritaki at first glance, it is more round and does not have ridges that haritaki has.</p>', '199.00', '210.00', 30, 'bhibitaki.jpg', '2022-11-29 20:41:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
