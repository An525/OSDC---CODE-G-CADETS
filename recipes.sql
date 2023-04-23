-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 11:22 AM
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
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `rid` int(11) NOT NULL,
  `rname` text NOT NULL,
  `rdesc` text NOT NULL,
  `rimg` text NOT NULL,
  `rlink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`rid`, `rname`, `rdesc`, `rimg`, `rlink`) VALUES
(1, 'Amla Chutney', '<p>\r\n<b>Ingredients of Amla Chutney</b>\r\n<ul>\r\n<li>1 Tbsp oil</li>\r\n<li>1 Tbsp saunf</li>\r\n<li>1 cup boiled amla</li>\r\n<li>1 tsp dhaniya powder</li>\r\n<li>1 tsp red chilli powder</li>\r\n<li>1 Tbsp ghee</li>\r\n<li>1 tsp bhrami leaves</li>\r\n<li>Salt to taste</li>\r\n</ul>\r\n<b>How to Make Amla Chutney</b>\r\n<ol>\r\n<li>In a pan, take some oil and add sauf in it.</li>\r\n<li>Add boiled pieces of amla. Toss.</li>\r\n<li>Add dhaniya powder, red chilli powder and ghee. Cook for a minute. Now add bhrami leaves and salt. Let it cool.</li>\r\n<li>Blend it in a mixer and serve.</li>\r\n</ol>\r\n</p>', 'amlachutney.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/U0y0QlEHdjg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(2, 'Amla Pickle', '<p>\r\n<b>Ingredients of Amla Pickle</b>\r\n<ul>\r\n<li>1/2 kg Amla (Nellikai/ Gooseberry)</li>\r\n<li>1/4 Cup Kashmiri Red Chilli Powder</li>\r\n<li>1/4 cup Salt</li>\r\n<li>1/4 cup Mustard seeds (Rai/ Kadugu) , (kuria-halved)</li>\r\n<li>1/4 cup Jaggery , grated</li>\r\n<li>2 tablespoons Turmeric powder (Haldi)</li>\r\n<li>1 tablespoon Methi Seeds (Fenugreek Seeds) , (kuria-halved)</li>\r\n<li>1 teaspoon Asafoetida (hing)</li>\r\n<li>1-1/2 Cup Peanut oil</li>\r\n</ul>\r\n<b>How to Make Amla Pickle</b>\r\n<ol>\r\n<li>To begin making Amla Achaar Recipe | Hot & Sweet Indian Gooseberry Pickle, select green, unblemished amla (gooseberry) for this pickle. Wash the Amla, pat dry and prick all over with fork. Keep them in a colander.</li>\r\n<li>Heat up 4-5 cup water in a big saucepan. Keep the colander of Amla over it and cover it. Let the Amla cook on the steam for about 20 minutes. </li>\r\n<li>Meanwhile dry roast the fenugreek kuria on a heated skillet until fragrant. Cool and grind to powder.</li>\r\n<li>Let the amla cool down after steaming. Once it is cooled, remove seed and make small wedges of the cooked amla using a knife. Wear hand gloves while doing so as handling amla for a long time make cause blackening of nails in few cases.</li>\r\n<li>In a big mixing bowl, first spread the Amla wedges. Now sprinkle the Turmeric powder all over it followed by the Fenugreek powder, Hing , Mustard Seed dal , Salt and Red Chili powder.</li>\r\n<li>Mix it nicely with a spatula. Now add in the grated Jaggery and mix again.</li>\r\n<li>Heat up the Oil in a kadai, on a low to medium heat until heated but not fuming. Put off the heat and let the oil cool down a bit. Now add this Oil to the pickle masala and mix very well. </li>\r\n<li>Keep the pickle covered overnight. </li>\r\n<li>Next day oil will float up . Stir it again and fill in clean and dry glass jars. The oil layer should always cover the pickle in the jar. This pickle stays good at room temperature for about 2-3 months. But color may darken slightly, hence you can refrigerate. </li>\r\n<li>Serve Amla Achaar Recipe | Hot & Sweet Indian Gooseberry Pickle as an accompaniment with Carrots & Sweet Potato Stuffed Paratha Recipe or along with Steamed Rice and Thatta Payaru Sambar Recipe (Black Eyed Beans Sambar).\r\n</li>\r\n</ol>\r\n</p>', 'amlapickle.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GIndeHSWgeM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(3, 'Ashwagandha Tea', '<p>\r\n<b>Ingredients of Ashwagandha Tea</b>\r\n<ul>\r\n<li>1 teaspoon of Ashwagandha powder\r\n</li><li>1 teaspoon of cinnamon powder\r\n</li><li>1 teaspoon of cardamom powder\r\n</li><li>1 teaspoon of ginger powder\r\n</li><li>1 teaspoon of honey\r\n</li><li>1 cup of water\r\n</li>\r\n</ul>\r\n<b>How to Make Ashwagandha Tea</b>\r\n<ol>\r\n</li><li>Bring the water to a boil in a small saucepan.\r\n</li><li>Add the Ashwagandha powder, cinnamon powder, cardamom powder, and ginger powder to the boiling water.\r\n</li><li>Reduce the heat and simmer for 5 minutes.\r\n</li><li>Strain the tea into a cup and add the honey.\r\n</li><li>Stir until the honey is dissolved.\r\n</li><li>Enjoy your Ashwagandha Tea hot or cold.\r\n</li>\r\n</ol>\r\n</p>', 'ashwagandhatea.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FGCgHkyfVUo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(4, 'Turmeric, Ashwagandha and Carrot soup', '<p>\r\n<b>Ingredients of Turmeric, Ashwagandha and Carrot soup</b>\r\n<ul>\r\n<li>\r\n10g coconut oil\r\n</li><li>1 small onion, diced\r\n</li><li>200g carrot, diced\r\n</li><li>1 medium orange (zest and juice)\r\n</li><li>1tsp turmeric powder\r\n</li><li>1tbsp flax seeds\r\n</li><li>1tsp cumin seeds\r\n</li><li>1tbsp ashwagandha powder\r\n</li><li>600ml water\r\n</li><li>Himalayan salt, red paprika powder, black pepper to taste\r\n</li>\r\n</ul>\r\n<b>How to Make Amla Pickle\r\nTurmeric, Ashwagandha and Carrot soup</b>\r\n<ol>\r\n<li>Slice the carrot and place it in a pot with 600ml water.\r\n</li><li>Boil until carrot is soft.\r\n</li><li>Preheat the wok pan with coconut oil and add chopped onion.\r\n</li><li>Sauté until the onion becomes transparent.\r\n</li><li>Add spices, orange zest, seeds and boiled carrot and keep adding water in which the carrot was cooked. Add turmeric powder. Stir well.\r\n</li><li>Remove from heat and let it cool for a couple of minutes.\r\n</li><li>Transfer everything into a blender and blend until smooth.\r\n</li><li>Add orange juice and ashwagandha powder at the end and stir with a spoon. Heat until ready to serve.\r\n</li><li>Garnish with thin orange slices.\r\n</li>\r\n</ol>\r\n</p>', 'ashwagandhasoup.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BZmQPVM4C64\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
