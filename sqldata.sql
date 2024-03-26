INSERT INTO meals (name, protein, calories, Carbs, Fat, id, created_at, updated_at) 
VALUES 
('Salade_cesar', 60, 250, 99, 70, UUID(), NOW(), NOW()),
('Grilled_salmon', 45, 300, 15, 20, UUID(), NOW(), NOW()),
('Vegetable_stir-fry', 15, 200, 40, 10, UUID(), NOW(), NOW()),
('Spaghetti_bolognese', 25, 400, 60, 15, UUID(), NOW(), NOW()),
('Roast_chicken', 50, 350, 5, 25, UUID(), NOW(), NOW()),
('Quinoa_salad', 20, 300, 50, 10, UUID(), NOW(), NOW()),
('Tofu_stir-fry', 30, 280, 35, 15, UUID(), NOW(), NOW()),
('Steak_with_mushroom_sauce', 55, 400, 10, 30, UUID(), NOW(), NOW()),
('Shrimp_tacos', 40, 320, 25, 18, UUID(), NOW(), NOW()),
('Chicken_caesar_wrap', 35, 350, 30, 15, UUID(), NOW(), NOW());


INSERT INTO ingredients (ingredientsName, id, created_at, updated_at) VALUES
('Tomato', UUID(), NOW(), NOW()),
('Chicken Breast', UUID(), NOW(), NOW()),
('Broccoli', UUID(), NOW(), NOW()),
('Spinach', UUID(), NOW(), NOW()),
('Quinoa', UUID(), NOW(), NOW()),
('Salmon Fillet', UUID(), NOW(), NOW()),
('Tofu', UUID(), NOW(), NOW()),
('Shrimp', UUID(), NOW(), NOW()),
('Bell Pepper', UUID(), NOW(), NOW()),
('Carrot', UUID(), NOW(), NOW()),
('Lettuce', UUID(), NOW(), NOW()),
('Onion', UUID(), NOW(), NOW()),
('Garlic', UUID(), NOW(), NOW()),
('Mushroom', UUID(), NOW(), NOW()),
('Parmesan Cheese', UUID(), NOW(), NOW()),
('Olive Oil', UUID(), NOW(), NOW()),
('Black Beans', UUID(), NOW(), NOW()),
('Corn', UUID(), NOW(), NOW()),
('Soy Sauce', UUID(), NOW(), NOW()),
('Lemon', UUID(), NOW(), NOW());


INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487bfd-eaff-11ee-899c-c8d9d2eb390e', '58d7a1ab-eaff-11ee-899c-c8d9d2eb390e'),
('1a487bfd-eaff-11ee-899c-c8d9d2eb390e', '58d7a1fc-eaff-11ee-899c-c8d9d2eb390e'),
('1a487bfd-eaff-11ee-899c-c8d9d2eb390e', '58d7a244-eaff-11ee-899c-c8d9d2eb390e');

-- Linking meal 1a487cbf-eaff-11ee-899c-c8d9d2eb390e with 4 ingredients
INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a290-eaff-11ee-899c-c8d9d2eb390e'),
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a2db-eaff-11ee-899c-c8d9d2eb390e'),
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a32e-eaff-11ee-899c-c8d9d2eb390e'),
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a378-eaff-11ee-899c-c8d9d2eb390e');


-- Linking meal 1a487db3-eaff-11ee-899c-c8d9d2eb390e with 3 ingredients
INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487db3-eaff-11ee-899c-c8d9d2eb390e', '58d7a3c4-eaff-11ee-899c-c8d9d2eb390e'),
('1a487db3-eaff-11ee-899c-c8d9d2eb390e', '58d7a411-eaff-11ee-899c-c8d9d2eb390e'),
('1a487db3-eaff-11ee-899c-c8d9d2eb390e', '58d7a46d-eaff-11ee-899c-c8d9d2eb390e');

-- Linking meal 1a487e39-eaff-11ee-899c-c8d9d2eb390e with 4 ingredients
INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d7a4f3-eaff-11ee-899c-c8d9d2eb390e'),
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d7a577-eaff-11ee-899c-c8d9d2eb390e'),
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d7a5f4-eaff-11ee-899c-c8d9d2eb390e'),
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d75f64-eaff-11ee-899c-c8d9d2eb390e');


-- Linking meal 1a487eaf-eaff-11ee-899c-c8d9d2eb390e with 3 ingredients
INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487eaf-eaff-11ee-899c-c8d9d2eb390e', '58d79db4-eaff-11ee-899c-c8d9d2eb390e'),
('1a487eaf-eaff-11ee-899c-c8d9d2eb390e', '58d79edc-eaff-11ee-899c-c8d9d2eb390e'),
('1a487eaf-eaff-11ee-899c-c8d9d2eb390e', '58d79f75-eaff-11ee-899c-c8d9d2eb390e');

-- Linking meal 1a487fe3-eaff-11ee-899c-c8d9d2eb390e with 4 ingredients
INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
('1a487fe3-eaff-11ee-899c-c8d9d2eb390e', '58d7a006-eaff-11ee-899c-c8d9d2eb390e'),
('1a487fe3-eaff-11ee-899c-c8d9d2eb390e', '58d7a0be-eaff-11ee-899c-c8d9d2eb390e'),
('1a487fe3-eaff-11ee-899c-c8d9d2eb390e', '58d7a155-eaff-11ee-899c-c8d9d2eb390e'),
('1a487fe3-eaff-11ee-899c-c8d9d2eb390e', '58d7a1ab-eaff-11ee-899c-c8d9d2eb390e');


INSERT INTO address (state, city, zipcode, country, id, created_at, updated_at) 
VALUES 
('California', 'Los Angeles', '90001', 'USA', UUID(), NOW(), NOW()),
('Texas', 'Houston', '77001', 'USA', UUID(), NOW(), NOW()),
('New York', 'New York City', '10001', 'USA', UUID(), NOW(), NOW()),
('Florida', 'Miami', '33101', 'USA', UUID(), NOW(), NOW()),
('Illinois', 'Chicago', '60601', 'USA', UUID(), NOW(), NOW()),
('Washington', 'Seattle', '98101', 'USA', UUID(), NOW(), NOW()),
('Massachusetts', 'Boston', '02101', 'USA', UUID(), NOW(), NOW()),
('Nevada', 'Las Vegas', '89101', 'USA', UUID(), NOW(), NOW()),
('Arizona', 'Phoenix', '85001', 'USA', UUID(), NOW(), NOW()),
('Georgia', 'Atlanta', '30301', 'USA', UUID(), NOW(), NOW());



-- Inserting users associated with address cfe0377d-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('John', 'Doe', '123456789', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Jane', 'Smith', '987654321', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Alice', 'Johnson', '555123456', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Bob', 'Williams', '555987654', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Emma', 'Brown', '444222333', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());

-- Inserting users associated with address cfe075b6-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('Michael', 'Davis', '111222333', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Sarah', 'Miller', '444555666', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('David', 'Wilson', '777888999', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Emily', 'Martinez', '111999888', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Daniel', 'Anderson', '444777333', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());

-- Continue inserting users associated with other addresses similarly


-- Inserting users associated with address cfe0377d-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('John', 'Doe', '123456789', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Jane', 'Smith', '987654321', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Alice', 'Johnson', '555123456', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Bob', 'Williams', '555987654', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Emma', 'Brown', '444222333', 'cfe0377d-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());

-- Inserting users associated with address cfe075b6-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('Michael', 'Davis', '111222333', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Sarah', 'Miller', '444555666', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('David', 'Wilson', '777888999', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Emily', 'Martinez', '111999888', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Daniel', 'Anderson', '444777333', 'cfe075b6-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());

-- Inserting users associated with address cfe076fb-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('James', 'Taylor', '999888777', 'cfe076fb-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Linda', 'Wilson', '333666999', 'cfe076fb-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Christopher', 'Anderson', '111444777', 'cfe076fb-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Jessica', 'Thomas', '555777888', 'cfe076fb-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Michael', 'White', '222555888', 'cfe076fb-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());

-- Inserting users associated with address cfe077a9-eb00-11ee-899c-c8d9d2eb390e
INSERT INTO Users (FirstName, LastName, tel, address_id, id, created_at, updated_at) VALUES
('Maria', 'Clark', '777555444', 'cfe077a9-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('William', 'Walker', '111999888', 'cfe077a9-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Patricia', 'Young', '666333999', 'cfe077a9-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Thomas', 'Hall', '444777555', 'cfe077a9-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('Jennifer', 'King', '222888777', 'cfe077a9-eb00-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW());


-- Inserting plans
INSERT INTO plans (NumberPeople, NumberMeals, PrixPersonne, duration, id, created_at, updated_at) VALUES
(1, 3, 10.00, 7, UUID(), NOW(), NOW()),
(2, 5, 8.50, 14, UUID(), NOW(), NOW()),
(4, 7, 7.00, 30, UUID(), NOW(), NOW()),
(1, 5, 9.00, 14, UUID(), NOW(), NOW()),
(3, 6, 6.50, 21, UUID(), NOW(), NOW()),
(2, 4, 8.00, 10, UUID(), NOW(), NOW()),
(4, 6, 6.00, 28, UUID(), NOW(), NOW()),
(1, 7, 10.50, 21, UUID(), NOW(), NOW()),
(3, 5, 7.50, 14, UUID(), NOW(), NOW()),
(2, 6, 9.00, 21, UUID(), NOW(), NOW());



-- Inserting orders
INSERT INTO orders (user_id, plan_id, id, created_at, updated_at) VALUES
('e6beb3c5-eb01-11ee-899c-c8d9d2eb390e', '089a10c8-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6bef004-eb01-11ee-899c-c8d9d2eb390e', '089a4c52-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6bef177-eb01-11ee-899c-c8d9d2eb390e', '089a4df0-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6bef294-eb01-11ee-899c-c8d9d2eb390e', '089a4e76-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6bef360-eb01-11ee-899c-c8d9d2eb390e', '089a4f27-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('a615d9b6-eb01-11ee-899c-c8d9d2eb390e', '089a50bd-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('a615dbe4-eb01-11ee-899c-c8d9d2eb390e', '089a5321-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('a615dc70-eb01-11ee-899c-c8d9d2eb390e', '089a5405-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('a615dce3-eb01-11ee-899c-c8d9d2eb390e', '089a5476-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('a615dd44-eb01-11ee-899c-c8d9d2eb390e', '089a54ef-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c2bb7b-eb01-11ee-899c-c8d9d2eb390e', '089a10c8-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c3bb07-eb01-11ee-899c-c8d9d2eb390e', '089a4c52-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c3bc3e-eb01-11ee-899c-c8d9d2eb390e', '089a4df0-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c3bcfa-eb01-11ee-899c-c8d9d2eb390e', '089a4e76-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c3bd86-eb01-11ee-899c-c8d9d2eb390e', '089a4f27-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c590de-eb01-11ee-899c-c8d9d2eb390e', '089a50bd-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()),
('e6c59ece-eb01-11ee-899c-c8d9d2eb390e', '089a5321-eb02-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW())


-- Inserting rows for customization_options
INSERT INTO customization_options (meal_id, ingredient_id, portion_size, price, id, created_at, updated_at) VALUES
('1a483acf-eaff-11ee-899c-c8d9d2eb390e', '58d75f64-eaff-11ee-899c-c8d9d2eb390e', 'Large', 10.99, UUID(), NOW(), NOW()),
('1a483acf-eaff-11ee-899c-c8d9d2eb390e', '58d79db4-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 8.99, UUID(), NOW(), NOW()),
('1a483acf-eaff-11ee-899c-c8d9d2eb390e', '58d79edc-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 8.99, UUID(), NOW(), NOW()),
('1a487a78-eaff-11ee-899c-c8d9d2eb390e', '58d79edc-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 8.99, UUID(), NOW(), NOW()),
('1a487bfd-eaff-11ee-899c-c8d9d2eb390e', '58d79f75-eaff-11ee-899c-c8d9d2eb390e', 'Large', 11.99, UUID(), NOW(), NOW()),
('1a487bfd-eaff-11ee-899c-c8d9d2eb390e', '58d7a006-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 9.99, UUID(), NOW(), NOW()),
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a0be-eaff-11ee-899c-c8d9d2eb390e', 'Large', 12.99, UUID(), NOW(), NOW()),
('1a487cbf-eaff-11ee-899c-c8d9d2eb390e', '58d7a155-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 10.99, UUID(), NOW(), NOW()),
('1a487db3-eaff-11ee-899c-c8d9d2eb390e', '58d7a1fc-eaff-11ee-899c-c8d9d2eb390e', 'Large', 13.99, UUID(), NOW(), NOW()),
('1a487db3-eaff-11ee-899c-c8d9d2eb390e', '58d7a244-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 11.99, UUID(), NOW(), NOW()),
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d7a290-eaff-11ee-899c-c8d9d2eb390e', 'Large', 14.99, UUID(), NOW(), NOW()),
('1a487e39-eaff-11ee-899c-c8d9d2eb390e', '58d7a2db-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 12.99, UUID(), NOW(), NOW()),
('1a487eaf-eaff-11ee-899c-c8d9d2eb390e', '58d7a32e-eaff-11ee-899c-c8d9d2eb390e', 'Large', 15.99, UUID(), NOW(), NOW()),
('1a487eaf-eaff-11ee-899c-c8d9d2eb390e', '58d7a378-eaff-11ee-899c-c8d9d2eb390e', 'Regular', 13.99, UUID(), NOW(), NOW())
-- Insert more rows for other meals and ingredients as needed


-- Inserting rows for order_meals
INSERT INTO order_meals (order_id, meal_id, id, created_at, updated_at) VALUES
-- Order 1
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a483acf-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 1
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a487a78-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 2
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a487bfd-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 3
-- Order 2
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487cbf-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 4
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487db3-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 5
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487e39-eaff-11ee-899c-c8d9d2eb390e', UUID(), NOW(), NOW()), -- Meal 6
-- Insert more rows for other orders and associated meals as needed



-- Order 1
INSERT INTO order_meals (order_id, meal_id) VALUES
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a483acf-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 1
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a487a78-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 2
('7cecf617-eb02-11ee-899c-c8d9d2eb390e', '1a487bfd-eaff-11ee-899c-c8d9d2eb390e'); -- Meal 3

-- Order 2
INSERT INTO order_meals (order_id, meal_id) VALUES
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487cbf-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 4
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487db3-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 5
('7cecf6e8-eb02-11ee-899c-c8d9d2eb390e', '1a487e39-eaff-11ee-899c-c8d9d2eb390e'); -- Meal 6

-- Order 3
INSERT INTO order_meals (order_id, meal_id) VALUES
('7cecf7ae-eb02-11ee-899c-c8d9d2eb390e', '1a487fe3-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 7
('7cecf7ae-eb02-11ee-899c-c8d9d2eb390e', '1a488069-eaff-11ee-899c-c8d9d2eb390e'), -- Meal 8
('7cecf7ae-eb02-11ee-899c-c8d9d2eb390e', '1a4880dc-eaff-11ee-899c-c8d9d2eb390e'); -- Meal 9


/* ---------------------- order_meal_customization ---------------------- */

CREATE TABLE IF NOT EXISTS order_meal_customization (
    order_id VARCHAR(60) NOT NULL,
    meal_id VARCHAR(60) NOT NULL,
    ingredient_id VARCHAR(60) NOT NULL,
    portion_size VARCHAR(50) NOT NULL,
    id VARCHAR(60) PRIMARY KEY,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (meal_id) REFERENCES meals(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
    FOREIGN KEY (order_id) REFERENCES orders(id)
);


CREATE TABLE meal_preferences (
    meal_id VARCHAR(60),
    preference_id VARCHAR(60),
    PRIMARY KEY (meal_id, preference_id),
    FOREIGN KEY (meal_id) REFERENCES meals(id),
    FOREIGN KEY (preference_id) REFERENCES preferences(id)
);



CREATE TABLE preferences (
    id VARCHAR(60) NOT NULL,
    name VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);


INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Meat & Veggies', NOW(), NOW());
INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Veggie', NOW(), NOW());
INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Family Friendly', NOW(), NOW());
INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Fit & Wholesome', NOW(), NOW());
INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Quick & Easy', NOW(), NOW());
INSERT INTO preferences (id, name, created_at, updated_at) VALUES (UUID(), 'Pescatarian', NOW(), NOW());
