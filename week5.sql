
User {
	user_id integer pk increments unique
	email_id varchar unique
	password_id varchar unique
}

Recipies {
	recipe_id integer pk increments unique
	name varchar
	description varchar
	instructions varchar
	Private boolean def(false)
	user_id integer > User.user_id
	Ingredient_id integer > ingredients.Ingredient_id
}

ingredients {
	Ingredient_id varchar pk increments
	name varchar unique
	unit_of_measure decimal
	unit_amount decimal
	recipe_id integer > Recipies.recipe_id
}

Grocery_list {
	user_id integer pk increments > User.user_id
	recipe_id integer pk > Recipies.recipe_id
}

Occasions {
	Occasions_id integer pk null increments
	Recipe_id integer > Recipies.recipe_id
	user_id integer > User.user_id
	name varchar unique
}

