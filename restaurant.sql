CREATE TABLE Restaurants(
  restaurant_id INTEGER PRIMARY KEY   AUTOINCREMENT,
  name TEXT NOT NULL,
  tel INTEGER,
  location TEXT,
  imagelink TEXT
  );
  
CREATE TABLE Menu(
  menu_id INTEGER PRIMARY KEY   AUTOINCREMENT,
  title TEXT,
  restaurant_id INTEGER NOT NULL,
  FOREIGN KEY(restaurant_id) REFERENCES Restaurants(restaurant_id)
  );
  
 CREATE TABLE MenuItems(
   menuitem_id INTEGER PRIMARY KEY   AUTOINCREMENT,
   name TEXT,
   price INTEGER,
   menu_id INTEGER NOT NULL,
   FOREIGN KEY(menu_id) REFERENCES Menu(menu_id)
   );
   
   INSERT INTO Restaurants(name, tel, location, imagelink) VALUES
("Viet Soho", 2074949888, "34 Greek St, London W1D 5DJ", "http://vietsoho.co.uk/menu.pdf"),
("Cay Tre Soho", +442073179118, "42-43 Dean St, London W1D 4PZ", "https://www.caytrerestaurant.co.uk/locations/soho/?utm_source=google&utm_medium=organic&utm_campaign=Google_Business_Soho");

INSERT INTO Menu (title, restaurant_id) VALUES 
("BUN", 1),
("RICE", 1),
 ("UDON", 1),
 ("PHO", 1),
 ("DRINK", 1),
 
 ("BUN Bò", 2),
 ("BUN Bò", 2),
("RICE Nấu", 2),
 ("UDON Nhật", 2),
 ("PHO Gà", 2),
 ("DRINK", 2);
 
 INSERT INTO MenuItems(name, price, menu_id) VALUES
 ("Bún Chả Giò", 9, 1),
 ("Bún Chả Gió Chay", 8.50, 1),
 ("Bún Lá Lốt", 9, 1),
 ("King Prawm", 10, 3),
 ("Beef", 9.50, 3),
 ("Vegetable", 8.50, 3),
 ("Cơm Bì Chả Thịt Nướng", 10, 2),
 ("Cơm Xào Sả Ớt", 9, 2),
 ("Cơm Thịt Cốc Lết Nướng", 9.5, 2),
 ("Coke", 2.5, 5),
 ("Soya Milk", 2.5, 5),
 ("Ice Coffee", 3.5, 5),
 ("Phở", 9.5,4),
 ("Phở Beef Combo", 10, 4),
 ("Mums Hủ Tiếu", 10 ,4),
 
  ("Bún Chả Giò", 9, 6),
 ("Bún Chả Gió Chay", 8.50, 6),
 ("Bún Lá Lốt", 9, 6),
 ("King Prawm", 10, 8),
 ("Beef", 9.50, 8),
 ("Vegetable", 8.50, 8),
 ("Cơm Bì Chả Thịt Nướng", 10, 7),
 ("Cơm Xào Sả Ớt", 9, 7),
 ("Cơm Thịt Cốc Lết Nướng", 9.5, 7),
 ("Coke", 2.5, 10),
 ("Soya Milk", 2.5, 10),
 ("Ice Coffee", 3.5, 10),
 ("Phở", 9.5, 9),
 ("Phở Beef Combo", 10, 9),
 ("Mums Hủ Tiếu", 10 ,9);
 
-- SElECT * FROM Restaurants;
-- SELECT * FROM Menu;
-- SELECT * FROM MenuItems;

-- SELECT Restaurants.name, Menu.title 
-- FROM Restaurants 
-- JOIN Menu ON Restaurants.restaurant_id = Menu.restaurant_id 
-- WHERE Restaurants.restaurant_id = 1;

-- SELECT Menu.title, MenuItems.name
-- FROM Menu
-- JOIN MenuItems ON Menu.menu_id = MenuItems.menu_id
-- WHERE Menu.menu_id = 2;

-- SELECT
-- 	name,
-- 	COUNT(*)
-- FROM
-- 	Restaurants
-- GROUP BY
-- 	name;


-- -- Descending order. 
-- SELECT
-- 	Restaurants.name, 
-- 	COUNT(*)
-- FROM
-- 	Restaurants	
-- INNER JOIN Menu ON
-- 	Menu.restaurant_id = Restaurants.restaurant_id
-- GROUP BY
-- 	Restaurants.name
-- ORDER BY
-- 	COUNT(*) DESC;
    
    
-- --Ascending order.
-- SELECT
-- 	Restaurants.name, 
-- 	COUNT(*)
-- FROM
-- 	Restaurants	
-- INNER JOIN Menu ON
-- 	Menu.restaurant_id = Restaurants.restaurant_id
-- GROUP BY
-- 	Restaurants.name
-- ORDER BY
-- 	COUNT(*) ASC;

-- --Ascending sum(price) order
-- SELECT
-- 	Menu.title, 
-- 	SUM(MenuItems.price)
-- FROM
-- 	Menu	
-- INNER JOIN MenuItems ON
-- 	MenuItems.menu_id = Menu.menu_id
-- GROUP BY
-- 	Menu.title
-- ORDER BY
-- 	SUM(MenuItems.price) ASC;
    
--Descending sum(price) order
SELECT
	Menu.title, 
	SUM(MenuItems.price)
FROM
	Menu	
INNER JOIN MenuItems ON
	MenuItems.menu_id = Menu.menu_id
GROUP BY
	Menu.title
ORDER BY
	SUM(MenuItems.price) DESC;
