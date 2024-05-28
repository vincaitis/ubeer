/*
-- Insert breweries
INSERT INTO brewery (name, city) VALUES ('Duff Brewery', 'Springfield');
INSERT INTO brewery (name, city) VALUES ('Pawtucket Patriot Brewery', 'Quahog');
INSERT INTO brewery (name, city) VALUES ('Buzz Beer Company', 'Cleveland');
INSERT INTO brewery (name, city) VALUES ('Alamo Beer Company', 'Arlen');
INSERT INTO brewery (name, city) VALUES ('Fudd Brewery', 'Shelbyville');
INSERT INTO brewery (name, city) VALUES ('Benderbrau Brewery', 'New New York');
INSERT INTO brewery (name, city) VALUES ('Kokanee Beer Co.', 'South Park');
INSERT INTO brewery (name, city) VALUES ('Elsinore Brewery', 'Hamilton');

-- Insert beers
INSERT INTO beer (name, brewery_id, type) VALUES ('Duff Beer', 1, 'Lager');
INSERT INTO beer (name, brewery_id, type) VALUES ('Pawtucket Patriot Ale', 2, 'Pale Ale');
INSERT INTO beer (name, brewery_id, type) VALUES ('Buzz Beer', 3, 'Coffee Beer');
INSERT INTO beer (name, brewery_id, type) VALUES ('Alamo Beer', 4, 'Pilsner');
INSERT INTO beer (name, brewery_id, type) VALUES ('Fudd Beer', 5, 'Lager');
INSERT INTO beer (name, brewery_id, type) VALUES ('Benderbrau', 6, 'Benderbrau');
INSERT INTO beer (name, brewery_id, type) VALUES ('Kokanee Beer', 7, 'Light Lager');
INSERT INTO beer (name, brewery_id, type) VALUES ('Elsinore Beer', 8, 'Canadian Lager');

-- Insert images
INSERT INTO image (url, beer_id) VALUES ('https://example.com/duff_beer.png', 1);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/pawtucket_patriot_ale.png', 2);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/buzz_beer.png', 3);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/alamo_beer.png', 4);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/fudd_beer.png', 5);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/benderbrau.png', 6);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/kokanee_beer.png', 7);
INSERT INTO image (url, beer_id) VALUES ('https://example.com/elsinore_beer.png', 8);
*/