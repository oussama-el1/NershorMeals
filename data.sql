-- ************************************** `address`

CREATE TABLE `address`
(
 `address_id` varchar(255) NOT NULL ,
 `create_at`  time NOT NULL ,
 `update_at`  time NOT NULL ,
 `state`      varchar(45) NOT NULL ,
 `city`       varchar(45) NOT NULL ,
 `zipcode`    varchar(45) NOT NULL ,
 `country`    varchar(45) NOT NULL ,

PRIMARY KEY (`address_id`)
);


-- ************************************** `ingredients`

CREATE TABLE `ingredients`
(
 `ingredients_id`  varchar(255) NOT NULL ,
 `create_at`       time NOT NULL ,
 `update_at`       time NOT NULL ,
 `ingredientsName` varbinary(45) NOT NULL ,

PRIMARY KEY (`ingredients_id`)
);

-- ************************************** `Meals`

CREATE TABLE `Meals`
(
 `meals_id`  varchar(255) NOT NULL ,
 `create_at` time NOT NULL ,
 `update_at` time NOT NULL ,
 `protein`   int NOT NULL ,
 `calories`  int NOT NULL ,
 `Carbs`     int NOT NULL ,
 `Fat`       int NOT NULL ,

PRIMARY KEY (`meals_id`)
);

-- ************************************** `Meals_ingredients`

CREATE TABLE `Meals_ingredients`
(
 `ingredients_id` varchar(255) NOT NULL ,
 `meals_id`       varchar(255) NOT NULL ,

PRIMARY KEY (`ingredients_id`, `meals_id`),
KEY `FK_1` (`ingredients_id`),
CONSTRAINT `FK_6` FOREIGN KEY `FK_1` (`ingredients_id`) REFERENCES `ingredients` (`ingredients_id`),
KEY `FK_2` (`meals_id`),
CONSTRAINT `FK_7` FOREIGN KEY `FK_2` (`meals_id`) REFERENCES `Meals` (`meals_id`)
);


-- ************************************** `meals_order`

CREATE TABLE `meals_order`
(
 `Order_id` varchar(255) NOT NULL ,
 `meals_id` varchar(255) NOT NULL ,

PRIMARY KEY (`Order_id`, `meals_id`),
KEY `FK_1` (`Order_id`),
CONSTRAINT `FK_4` FOREIGN KEY `FK_1` (`Order_id`) REFERENCES `Order` (`Order_id`),
KEY `FK_2` (`meals_id`),
CONSTRAINT `FK_5` FOREIGN KEY `FK_2` (`meals_id`) REFERENCES `Meals` (`meals_id`)
);


-- ************************************** `Order`

CREATE TABLE `Order`
(
 `Order_id`  varchar(255) NOT NULL ,
 `plan_id`   varchar(255) NOT NULL ,
 `user_id`   varchar(255) NOT NULL ,
 `create_at` time NOT NULL ,
 `update_at` time NOT NULL ,

PRIMARY KEY (`Order_id`),
KEY `FK_1` (`plan_id`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_1` (`plan_id`) REFERENCES `Plan` (`plan_id`),
KEY `FK_2` (`user_id`),
CONSTRAINT `FK_3` FOREIGN KEY `FK_2` (`user_id`) REFERENCES `User` (`user_id`)
);


-- ************************************** `Plan`

CREATE TABLE `Plan`
(
 `plan_id`      varchar(255) NOT NULL ,
 `create_at`    time NOT NULL ,
 `update_at`    time NOT NULL ,
 `NumberPeople` int NOT NULL ,
 `NumberMeals`  int NOT NULL ,
 `PrixPersonne` float NOT NULL ,
 `duration`     int NOT NULL ,

PRIMARY KEY (`plan_id`)
);


-- ************************************** `User`

CREATE TABLE `User`
(
 `user_id`    varchar(255) NOT NULL ,
 `create_at`  time NOT NULL ,
 `update_at`  time NOT NULL ,
 `FirstName`  varchar(45) NOT NULL ,
 `LastName`   varchar(45) NOT NULL ,
 `tel`        varchar(45) NOT NULL ,
 `adressr_id` varchar(255) NOT NULL ,

PRIMARY KEY (`user_id`),
KEY `FK_1` (`adressr_id`),
CONSTRAINT `FK_1` FOREIGN KEY `FK_1` (`adressr_id`) REFERENCES `address` (`address_id`)
);
