-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 09:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `picture`) VALUES
(1, 'Elon Musk said in a tweet on Thursday he was in talks with airlines', 'Musk, who is known for his Twitter banter, announcements and lively interactions with followers, did not provide any details about the talks in his tweet. It was not immediately clear which airlines were approached or when installation would occur.\r\n\r\nShares of in-flight internet provider Gogo Inc fell to an intraday low of 5.7% before recouping some of the losses in afternoon trading.\r\n\r\nStarlink, the satellite internet unit of SpaceX, plans to deploy 12,000 satellites. SpaceX has said the Starlink constellation will cost it roughly $10 billion.\r\n\r\nIt is one of a growing number of companies making small satellites that also includes Amazon.com&#039;s Kuiper, Britain&#039;s OneWeb, venture capital-backed Planet, and Raytheon Technologies Corp&#039;s Blue Canyon Technologies.\r\n\r\nMusk currently helms companies including electric-car maker Tesla Inc, rocket startup SpaceX and Neuralink, a startup that is developing ultra-high bandwidth brain-machine interfaces to connect the human brain to computers.', '2021-12-01 20:15:39', '1-71.jpg'),
(2, 'China To Build Base For Tajikistan Near Afghan Border: Report', 'Almaty, Kazakhstan: China will build a base for police in Tajikistan near the Afghan border, a Tajik official said Thursday, amid concerns from both countries about the Taliban&#039;s ability to keep a lid on extremist groups.\r\n\r\nThe base points to deepening security cooperation between impoverished Tajikistan and China, which is reported to maintain another base in the southeast of the ex-Soviet country.\r\n\r\nA parliamentary spokesman told AFP that Tajikistan&#039;s lower house had approved the plan to build the base in the Ishkashim district of the mountainous Gorno-Badakhshan province.\r\n\r\n&quot;All construction is funded by the Chinese side. After construction, the base will be transferred to the Tajik (police),&quot; the spokesman, who did not provide his name, told AFP by telephone.\r\n\r\nChina has looked to build friendly relations with the Taliban following their takeover of Afghanistan, but has called on the group to crack down on Muslim-minority Uyghur separatists looking to infiltrate its sensitive border region of Xinjiang.\r\n\r\nTajikistan, a country of 9.5 million, has received financial assistance from both China and the United States to build and reinforce its border posts and hosts a major Russian military base.', '2021-12-01 20:17:00', '2-65.jpg'),
(3, 'Man Who Gave Alec Baldwin Loaded Gun Admits &#039;Didn&#039;t Fully Check&#039;', 'Santa Fe: The man who handed Alec Baldwin the gun that killed a cinematographer admitted he didn&#039;t fully check it, documents revealed Wednesday, as the sheriff investigating the fatal shooting spoke of &quot;complacency&quot; on the US movie set.\r\n\r\nHalyna Hutchins died after Baldwin shot her with the Colt .45 he was pointing at a camera for low-budget western &quot;Rust&quot; being filmed in New Mexico. The live round passed through her torso and struck director Joel Souza in the shoulder.\r\n\r\nAssistant director Dave Halls told detectives he remembers seeing ammunition in the period weapon before he handed it to Baldwin. Moviemakers sometimes use inert, or dummy, bullets in props.\r\n\r\nAn investigation into last Thursday&#039;s fatal shooting has recovered 500 rounds of ammunition from the set, Sheriff Adan Mendoza told reporters, adding that detectives believe they were a mix of blanks, dummies and live rounds.\r\n\r\nAs the film&#039;s armorer, Gutierrez-Reed, 24, would have been responsible for supplying and keeping weapons safe on set, ensuring that they are accounted for at all times and locked away when not in use.\r\n\r\nShe told detectives that on the day of the incident guns were secured while the crew ate lunch, but that ammunition was not, according to the affidavit.Mendoza told reporters more questions were being asked of the people who &quot;inspected or handled the firearm... before it got to Mr Baldwin.&quot;&quot;We&#039;re going to try to determine exactly how that happened and if they should have known that there was a live round in that firearm.&quot;', '2021-12-01 20:17:44', '3-20.jpg'),
(4, 'Facebook Asks Employees To Preserve Internal Documents For Legal Inquiries', 'Facebook Inc has told its employees to preserve all internal documents and communications for legal reasons, as governments and regulators have started inquiries into its operation.\r\n\r\nThe increased scrutiny comes after former Facebook employee and whistleblower Frances Haugen leaked documents which she said showed the company chose profit over user safety.\r\n\r\nEarlier in October, Senate Commerce Committee Chair Maria Cantwell called on Facebook Chief Executive Officer Mark Zuckerberg to preserve all documents related to a testimony from Haugen.\r\n\r\n&quot;On Tuesday, Facebook sent a legal hold notice to all personnel. Document preservation requests are part of the process of responding to legal inquiries,&quot; a Facebook spokesperson said.', '2021-12-01 20:18:25', '4-57.jpg'),
(5, 'NASA Sending 4 Astronauts To International Space Station On Sunday', 'Washington: NASA is teaming up with SpaceX once more to send four astronauts to the International Space Station on Sunday, including three first-timers. The crew of mission &quot;Crew-3&quot; will spend six months on the orbital outpost, conducting research in areas including material sciences, health, and botany, to help inform future deep space exploration and benefit life on Earth.\r\n\r\nAmericans Raja Chari, Tom Marshburn, and Kayla Barron as well as German Matthias Maurer of the European Space Agency (ESA) will launch aboard a Crew Dragon spacecraft named &quot;Endurance,&quot; fixed atop a Falcon 9 rocket at 2:21 am (0621 GMT) from the Kennedy Space Center in Florida.\r\n\r\n&quot;Last night we got to go see Endurance in the hangar as they got ready to roll it out to the pad, and actually put our hands on the Dragon, which is a pretty special experience,&quot; Chari, a US Air Force colonel who is commanding the mission, said at a press conference on Wednesday. Of the four, only Marshburn has gone to space before. The medical doctor flew aboard a Space Shuttle in 2009 and a Russian Soyuz spacecraft in a mission from 2012-13.\r\n\r\nBarron, who along with Chari was selected for the NASA astronaut corps in 2017, the most recent recruitment, previously served as a submarine warfare officer for the Navy, and told reporters she saw many parallels between that experience and going to space.The pair are also in the mix for NASA&#039;s Artemis missions to return humans to the Moon later this decade.\r\n\r\nMaurer, a materials science engineer, will become the 12th German to go to space and will join fellow ESA astronaut Thomas Pesquet of France on the ISS, an overlap that will likely last a few days before the Frenchman returns to Earth with the rest of his Crew-2 colleagues.\r\n\r\nThe Crew-3 astronauts will also conduct spacewalks to complete the upgrade of the station&#039;s solar panels, and will be present for two tourism missions including Japanese tourists aboard a Russian Soyuz spacecraft at the end of 2021, and the Space-X Axiom crew, set for launch in February 2022.', '2021-12-01 20:18:53', '5-17.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `country` char(2) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `country`, `date`) VALUES
(3, 'Ivan', 'Horvat', 'admin@gmail.com', 'admin', '$2y$12$GlR6zQUuJZd/6vbHJuyi3u2Y6Vyrt2gfLVZ5rR1eVLmDSRXYI12Jq', 'AO', '2021-12-01 19:04:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_key` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
