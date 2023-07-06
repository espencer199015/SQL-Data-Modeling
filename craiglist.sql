DROP DATABASE IF EXISTS craiglist;

CREATE DATABASE craiglist;

\c craiglist

CREATE TABLE posts
(
    post_id SERIAL PRIMARY KEY,
    region_name TEXT NOT NULL,
    preferred_region TEXT NOT NULL,
    users INT,
    categories TEXT NOT NULL
);

CREATE TABLE post_details
(
    post_id SERIAL PRIMARY KEY,
    post_user TEXT NOT NULL,
    title TEXT NOT NULL,
    post_text TEXT NOT NULL,
    post_location TEXT NOT NULL,
    post_region TEXT NOT NULL
);

INSERT INTO posts
(post_id, region_name, preferred_region, users, categories)
VALUES
  ('1', 'Central US', 'Central US, All Regions', '100', 'farming, gardening, country living'),
  ('2', 'South US', 'Eastern Seaboard, Western Seaboard', '300', 'surfing, beach, water sports'),
  ('3', 'North US', 'North US', '28', 'moose, wildlife, woodland animals');

INSERT INTO post_details
  (post_id, post_user, title, post_text, post_location, post_region)
VALUES
  ('1', 'farmerGirl33', 'How to make raised garden boxes', 'Over the weekend I made my very first garden box. It was super simple. Check my pics to see how I did it step by step. Happy Gardening!',
  'Idaho', 'Central US'),
  ('2', 'surferDude101', 'Killer rip out on the surf', 'YO! Crazy surf day out on the banks! My bros and I got caught in a rip, but we caught a gnarly wave about a mile from a starting point. Surfing Outer Banks Style!',
  'South Carolina', 'South US'),
  ('3', 'midlifeMomAdventurer', 'Moose Sighting', 'Just caught a glimpse of our beautiful wildlife this evening! A moose and her young made an appearance during our group hike. What a time to be alive!',
  'North Dakota', 'North US');