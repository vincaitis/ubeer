-- Create the tables
CREATE TABLE brewery (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         city VARCHAR(255) NOT NULL,
                         description VARCHAR(255) NOT NULL
);

CREATE TABLE beer (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      name VARCHAR(255) NOT NULL,
                      brewery_id INT,
                      type VARCHAR(255),
                      description VARCHAR(255) NOT NULL,
                      FOREIGN KEY (brewery_id) REFERENCES brewery(id)
);

CREATE TABLE image (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       url VARCHAR(255) NOT NULL,
                       beer_id INT,
                       FOREIGN KEY (beer_id) REFERENCES beer(id)
);

-- Insert breweries
INSERT INTO brewery (name, city, description) VALUES ('Duff Brewery', 'Springfield', 'Duff Brewery: The heart and soul of Springfield, where every sip of Duff Beer makes you feel like a local hero.');
INSERT INTO brewery (name, city, description) VALUES ('Pawtucket Patriot Brewery', 'Quahog', 'Pawtucket Patriot Brewery: Quahog’s pride, brewing beers as bold and refreshing as Peter Griffin’s antics.');
INSERT INTO brewery (name, city, description) VALUES ('Buzz Beer Company', 'Cleveland', 'Buzz Beer Company: Where coffee meets beer, because why choose between being wired or tipsy?');
INSERT INTO brewery (name, city, description) VALUES ('Alamo Beer Company', 'Arlen', 'Alamo Beer Company: The pride of Arlen, making every BBQ and propane conversation a bit more interesting.');
INSERT INTO brewery (name, city, description) VALUES ('Fudd Brewery', 'Shelbyville', 'Fudd Brewery: Because every rival town needs a beer that’s just a bit different, yet oddly familiar.');
INSERT INTO brewery (name, city, description) VALUES ('Benderbrau Brewery', 'New New York', 'Benderbrau Brewery: The future of brewing, where bending rules and beer bottles is just another day.');
INSERT INTO brewery (name, city, description) VALUES ('Kokanee Beer Co.', 'South Park', 'Kokanee Beer Co.: Perfect for those who want a cool, crisp drink after surviving another crazy day in South Park.');
INSERT INTO brewery (name, city, description) VALUES ('Elsinore Brewery', 'Hamilton', 'Elsinore Brewery: Where Canadian tradition meets the hilarity of beer-loving hosers.');


-- Insert beers
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Duff Beer', 1, 'Lager', 'Duff Beer: A classic lager that’s as iconic as Homer Simpson’s love for donuts.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Pawtucket Patriot Ale', 2, 'Pale Ale', 'Pawtucket Patriot Ale: A pale ale that’s as bold and hearty as Peter Griffin’s laugh.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Buzz Beer', 3, 'Coffee Beer', 'Buzz Beer: The perfect mix of coffee and beer for when you need to be awake, but also want to relax.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Alamo Beer', 4, 'Pilsner', 'Alamo Beer: A pilsner that’s as reliable and steadfast as Hank Hill’s love for propane.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Fudd Beer', 5, 'Lager', 'Fudd Beer: Shelbyville’s finest, perfect for those who want something just a bit different from their neighbors.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Benderbrau', 6, 'Benderbrau', 'Benderbrau: A beer from the future, brewed by a robot with impeccable taste and questionable ethics.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Kokanee Beer', 7, 'Light Lager', 'Kokanee Beer: A light lager that’s as refreshing and cool as a day in the mountains of South Park.');
INSERT INTO beer (name, brewery_id, type, description) VALUES ('Elsinore Beer', 8, 'Canadian Lager', 'Elsinore Beer: A Canadian lager that’s as friendly and welcoming as our neighbors to the north.');


-- Insert images
INSERT INTO image (url, beer_id) VALUES ('https://chopedebiere.com/cdn/shop/products/Pin_s-biere-duff-beer_1200x1200.jpg', 1);
INSERT INTO image (url, beer_id) VALUES ('https://www.narragansettbeer.com/cdn/shop/articles/Untitled_design_62.png', 2);
INSERT INTO image (url, beer_id) VALUES ('https://www.theoriginalunderground.com/cdn/shop/products/buzz-light-beer-can-koozie-915402_1024x.jpg', 3);
INSERT INTO image (url, beer_id) VALUES ('https://ih1.redbubble.net/image.4562968086.0536/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', 4);
INSERT INTO image (url, beer_id) VALUES ('https://static.wikia.nocookie.net/fictionalcompanies/images/6/6e/Fudd_Beer.png', 5);
INSERT INTO image (url, beer_id) VALUES ('https://i.pinimg.com/736x/d7/39/e6/d739e6edf3d90eece2e48e7584a09aff.jpg', 6);
INSERT INTO image (url, beer_id) VALUES ('https://kootenaymountainculture.com/wp-content/uploads/2023/03/Kokanee-beer-label-1999-340x759.png', 7);
INSERT INTO image (url, beer_id) VALUES ('https://i.ebayimg.com/images/g/WoQAAOSwVddjDoNS/s-l1600.jpg', 8);
