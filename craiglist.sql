DROP DATABASE IF EXISTS craiglist;

CREATE DATABASE craiglist;

\c craiglist

CREATE TABLE posts
(
    post_id SERIAL PRIMARY KEY,
    post_title TEXT NOT NULL,
    post_text TEXT NOT NULL,
    post_location TEXT NOT NULL,
    Foreign Key (user_id) References users(id),
    Foreign Key (region_id) References regions(id),
    Foreign Key (category_id) References categories(id)
);

CREATE TABLE users
(
  user_id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  encrypted_password TEXT NOT NULL,
  Foreign Key (preferred_region_id) References regions(id)
);

CREATE TABLE regions
(
  region_id SERIAL PRIMARY KEY,
  region_name TEXT NOT NULL
);

CREATE categories
(
  category_id SERIAL PRIMARY KEY,
  category_name TEXT NOT NULL
);

INSERT INTO posts
(post_id, post_name, post_text, post_location, user_id, region_id, category_id)
VALUES
  ('1', 'Best Icecream Shop Around!', 'There is a great icecream shop 
  on this little island that is a must stop for tourists! 
  They have so many varieties and all homemade!', 
  'Chincoteague Island, Virginia', '209', '4', '101');

INSERT INTO users
(user_id, username, encrypted_password, preferred_region_id)
VALUES
  ('209', 'HappyTraveler90', 'highTide6143', '4');

INSERT INTO regions
(region_id, region_name)
VALUES
  ('4', 'East Coast, USA');

INSERT INTO categories
(category_id, category_name)
VALUES
  ('101', 'Food/Desserts');