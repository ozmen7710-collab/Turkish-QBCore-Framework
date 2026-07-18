-- Turkish QBCore Database Setup

CREATE TABLE IF NOT EXISTS `players` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL UNIQUE,
  `name` varchar(50) NOT NULL,
  `money` longtext NOT NULL DEFAULT '{"cash":0,"bank":0}',
  `charinfo` longtext NOT NULL DEFAULT '{}',
  `job` longtext NOT NULL DEFAULT '{"name":"unemployed","label":"Işsız","grade":0}',
  `job2` longtext NOT NULL DEFAULT '{"name":"unemployed","label":"Işsız","grade":0}',
  `metadata` longtext DEFAULT '{}',
  `inventory` longtext DEFAULT '[]',
  `phone_number` varchar(20) DEFAULT NULL,
  `last_updated` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `grade` int(11) NOT NULL,
  `grade_name` varchar(50) NOT NULL,
  `grade_label` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `permissions` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_grade` (`job_name`, `grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `coords` longtext NOT NULL,
  `type` varchar(50) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `inventory` longtext DEFAULT '[]',
  `metadata` longtext DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `coords` longtext NOT NULL,
  `plate` varchar(20) UNIQUE NOT NULL,
  `price` int(11) NOT NULL,
  `metadata` longtext DEFAULT '{}',
  `fuel` int(11) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `banking_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;