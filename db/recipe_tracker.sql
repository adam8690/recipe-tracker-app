DROP TABLE shopping_list;
DROP TABLE recipe_ingredients;
DROP TABLE ingredients;
DROP TABLE recipes;

CREATE TABLE recipes(
id SERIAL4 PRIMARY KEY,
recipe_name VARCHAR(255),
method VARCHAR(2550)
);


CREATE TABLE ingredients(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE recipe_ingredients(
id SERIAL4 PRIMARY KEY,
ingredient_id INT4 REFERENCES ingredients(id) ON DELETE CASCADE,
recipe_id INT4 REFERENCES recipes(id) ON DELETE CASCADE
);

CREATE TABLE shopping_list(
id SERIAL4 PRIMARY KEY,
recipe_id INT4 REFERENCES recipes(id) ON DELETE CASCADE, 
name VARCHAR(255)
);