<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Product::class, function (Faker\Generator $faker) {
    $name = $faker->unique()->word;
    return [
		'code' => $faker->unique()->ean13,
		'name' => $name,
		'slug' => str_slug($name),
		'id_brand' => $faker->randomElement(['1', '2', '3', '12', '13', '6', '7', '8', '9', '10']),
		'id_reference' => $faker->randomElement(['1', '2', '3', '12', '13', '6', '7', '8', '9', '10','12','13','14','15']),
		'id_lot' => $faker->randomElement(['13', '14', '15', '18', '19', '20', '21', '23', '24', '25','26','27','28','29']),
		'full_description' => $faker->text($maxNbChars = 200),
		'short_description' => $faker->text($maxNbChars = 50),
		'tags' => str_slug($name)
    ];
});