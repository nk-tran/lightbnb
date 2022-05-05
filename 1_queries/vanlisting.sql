SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;

/*
Instruction
Show specific details about properties located in Vancouver including their average rating.

Select the id, title, cost_per_night, and an average_rating from the properties table for properties located in Vancouver.
Order the results from lowest cost_per_night to highest cost_per_night.
Limit the number of results to 10.
Only show listings that have a rating >= 4 stars.


 id  |       title        | cost_per_night |   average_rating
-----+--------------------+----------------+--------------------
 224 | Nature bite        |          10526 | 4.1000000000000000
 197 | Build they         |          34822 | 4.1000000000000000
  47 | Aside age          |          35421 | 4.2500000000000000
 149 | Present television |          53062 | 4.2222222222222222
(4 rows)*/
