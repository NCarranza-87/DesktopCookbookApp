--
-- Database: TeamDB
--
USE master

IF DB_ID('TeamDB') IS NOT NULL
DROP DATABASE TeamDB
GO

CREATE DATABASE TeamDB
GO

USE TeamDB

--

-- --------------------------------------------------------

--
-- Table structure for table category
--

CREATE TABLE category (
  categoryId int NOT NULL,
  categoryName varchar(40) NOT NULL
) 

--
-- Dumping data for table 'category'
--

INSERT INTO category (categoryId, categoryName) 
VALUES (1, 'Asian')
,(2, 'Side Dish')
,(3, 'No Bake')
,(4, 'Baked')
,(5, 'Seafood')
,(6, 'Entree')
,(7, 'Meat')
,(8, 'Sandwich')
,(9, 'BBQ')
,(10, 'Pasta');

-- --------------------------------------------------------

--
-- Table structure for table 'recipe'
--

CREATE TABLE recipe (
  recipeId int NOT NULL,
  recipeTitle varchar(100) NOT NULL,
  recipeDescrip varchar(1000) NOT NULL,
  recipeNeed varchar(500) NOT NULL,
  recipeYield varchar(20) NOT NULL,
  recipePrepTime varchar(10) NOT NULL,
  recipeCookTime varchar(10) NOT NULL,
  recipeTemp varchar(10) NOT NULL,
  recipeIngred varchar(500) NOT NULL,
  recipeSteps varchar(4000) NOT NULL,
  recipeTips varchar(2000) NOT NULL
) 

--
-- Dumping data for table 'recipe'
--

INSERT INTO recipe (recipeId, recipeTitle, recipeDescrip, recipeNeed, recipeYield, recipePrepTime, recipeCookTime, recipeTemp, recipeIngred, recipeSteps, recipeTips) 
VALUES (1, '3 Ingredient Pulled Pork', 'Only 3 ingredients to moist, flavorful pulled pork that can be prepared in minutes and cooked in a slow cooker.', 'Slowcooker \r\nCasserole dish w/aluminum foil', '8', '30', '', '', '1 (2 lb) (pork shoulder or butt ) pork tenderloin \r\n1 can (12 oz) root beer\r\n1 bottle (18 oz) barbecue sauce\r\n1 8ct package hamburger buns', 'Place the pork tenderloin in a slow cooker and pour the can of root beer over the meat.\r\nCover and cook on low for 6 hours or until pork shreds easily with a fork.\r\nRemove cooked pork to cutting board, and drain and discard the root beer.\r\nShred pork and return it to the slow cooker.\r\nPour the barbecue sauce over the pork and stir to combine.\r\nServe immediately or keep warm in slow cooker until ready to serve.\r\nServe on hamburger buns.', '')
,(2, 'Broccoli and Cheese Stuffed Chicken Breasts', 'Serve this with a side of rice and you have your whole meal taken care of!', 'Small sauce pan\r\nWhisk\r\nMixing Spoon\r\nCheese Grater\r\nToothpicks\r\nLarge Skillet\r\nSpatula\r\n', '4', '15', '30', '', '2 cut in half and butterflied (sliced through the middle-but not all the way through to make a pocket) boneless skinless chicken breasts\r\n1 1/2 cups steamed broccoli\r\n2 tbsp butter\r\n2 tbsp flour\r\n1 cup milk\r\n1/2 cup shredded cheddar cheese (or cubed Velveeta for a smoother sauce)\r\n2 tbsp cream cheese\r\n1/2cup shredded cheddar cheese (not a typo\r\nanother 1/2 cup)\r\n1 pinch salt and pepper \r\n1 pinch garlic powder', 'Make cheese sauce:\r\nMelt butter in a small sauce pan, and then add flour and stir well.\r\nAdd milk gradually, whisking constantly to avoid lumps.\r\nAdd salt, pepper and garlic powder, and stir constantly until thickened.\r\nAdd 1/2 cup cheddar and the cream cheese, and stir to melt. \r\nAdd 1/4 cup of the broccoli pieces, and stir to combine.\r\n\r\nMake chicken:\r\nOpen butterflied chicken pieces.\r\nSprinkle with salt, pepper and garlic powder.\r\nPlace a bit of steamed broccoli and a bit of cheese in each. \r\nFold over, and seal with toothpicks.\r\nHeat about 1-2 tbsp olive oil over medium heat, and brown chicken on all sides, until cooked thoroughly.\r\nPlace chicken in a small casserole dish, and pour cheese sauce over.\r\nThis may either be browned in the oven, or served as is.', '')
,(3, 'Stylish Beef Stroganoff', 'You don''t have to get all dressed up to enjoy a dinner that''s as stylish as it is tasty. Your guests will think you went through a lot of fuss to make this Stylish Beef Stroganoff. Truth is, it''ll only take you 15 minutes, and there''ll hardly be any dishes to wash! ', '', '4', '', '', '', '1 pound boneless cut into 1-inch chunks beef tri-tip (bottom sirloin)\r\n1/4 teaspoon salt\r\n1/8 teaspoon black pepper\r\n1/2 pound cut into -inch slices mushrooms (about 3 cups)\r\n1 small chopped onion\r\n2 tablespoons all-purpose flour \r\n3/4 cup ready-to-use beef broth \r\n1/4 cup sour cream\r\n1 pound cooked egg noodles', 'In a large skillet that has been coated with cooking spray. \r\nBrown the beef with the salt and pepper over medium-high heat for 3 to 5 minutes or until no pink remains.\r\nRemove the meat and all but 2 teaspoons of the pan juices to a medium-sized bowl; set aside.\r\nSautee the mushrooms and onion for 4 to 5 minutes or until tender.\r\nStir in the flour then add the broth, stirring constantly.\r\nBring to a boil and cook for 2 minutes or until the sauce has thickened.\r\nReturn the beef and juices to the skillet and cook for 3 to 4 minutes or until heated through.\r\nServe over noodles with a dollop of sour cream over each serving.', '')
,(4, 'Easy Oven Baked Ribs', 'These were amazing. Never made ribs before and this recipe was so easy and I had everything on hand. The only change I made was to sprinkle everything with Lawry''s Season Salt before I put it in the oven. So so so good. Nice and tender. Just fell right off the bones.', 'Mixing bowl\r\nAluminum roast pan\r\nWhisk\r\nAluminum foil', '6', '5', '240', '300', '4 lbs country-style pork ribs\r\n1 1/2 cups favorite barbecue sauce\r\n1 cup thawed orange juice concentrate \r\n1 whole sliced vidalia onion', 'Preheat oven to 300 degrees.\r\nArrange ribs in 9x13 baking dish meat side down bones up. \r\nTop with sliced onions.\r\nWhisk together BBQ sauce and Orange juice.\r\nPour sauce over ribs and onions.\r\nCover dish tightly with heavy duty aluminum foil and bake for three hours.\r\nUncover, increase oven temp to 350 degrees.\r\nBake for one hour longer, turning once after 30 minutes. \r\nRemove ribs to a warm platter, cover and let stand for 15 minutes.\r\nSpoon fat off the sauce and serve with the ribs.', '')
,(5, 'Crispy Onion Rings', 'This recipe for onion rings is so easy and so amazingly crispy, you can now make up for all those years of deep-fried denial by making these at home.', 'Large pan for frying\r\nShallow bowl\r\nIce cube bath in large bowl\r\nWire cooling rack with paper towels\r\nTongs\r\nWhisk\r\nPaper towels or napkins', '2', '20', '5', '350', '1/2 cup all-purpose flour\r\n1/4 cup cornstarch\r\n2 tbsp dry potato flakes\r\n1/8 teaspoon cayenne pepper\r\n1 cup chilled club soda\r\n2 cups panko bread crumbs\r\n2 cups vegetable oil for frying\r\n2 large onions cut into 1/2 thick slices and seperated rings\r\n1 pinch of salt to taste', 'Whisk together flour, cornstarch, dry potato flakes, and cayenne pepper in a large bowl.\r\nWhisk in club soda to make a smooth batter.\r\nPlace panko bread crumbs in a shallow bowl.\r\nHeat oil in a deep fryer or large saucepan to 350 degrees F (175 degrees C).\r\nPlace a few onion rings at a time into the bowl of batter and turn to coat all sides with batter.\r\nRemove onion rings from batter and place into pan of panko bread crumbs; turn\r\nto coat completely with crumbs.\r\nCook a few rings at a time in the hot oil until golden brown, about 2 to 3 minutes.\r\nTransfer to a cooling rack set over paper towels to drain. Season with salt to taste and serve.', 'Slice and separate onions and soak in large bowl of ice with water so slices are submerged in water and ice and chill in fridge for hour.\r\nPat dry on paper towel and then place in prepared batter to fry.\r\nSomething about the club soda helps keep batter and onion together along with ice bath for crispy onion rings')
,(6, 'One Pot Bacon Mac and Cheese', 'Cheesy, gooey perfection made easy in only one pot. Literally one big cheese ball when mixing the cheese', 'Cheese grater\r\nDutch oven or casserole dish\r\nSlotted spoon', '6', '', '30', '', '4 slices thick-cut bacon, chopped (about 1/2 pound)\r\n1 lb cavatappi pasta\r\nkosher salt & freshly ground black pepper\r\n8 ounces mozzarella cheese, coarsely grated (about 2 cups, packed)\r\n6 ounces sharp cheddar cheese, coarsely grated (about 2 cups, packed)\r\n3 ounces Fontina cheese, coarsely grated (about 1 cup, packed)\r\n3 ounces cream cheese\r\n1/3 - 1  cup milk\r\n2 tablespoons unsalted butter\r\n1 teaspoon mustard powder\r\nhandful chives, chopped', 'Add bacon to a 5 1/2 quart Dutch oven over medium-heat and cook, stirring, until crispy. \r\nRemove bacon with a slotted spoon and set aside.\r\nAdd pasta to pot with the rendered bacon fat. \r\nAdd 4 cups water and one teaspoon salt. \r\nBring to a boil over high heat and cook, stirring frequently, until pasta is just tender and a small amount of water still remains, about 10 mins.\r\nAdd mozzarella, cheddar, fontina, cream cheese, milk, butter, mustard powder, and cayenne. \r\nReduce heat to low, stirring until cheese is melted. \r\nSeason to taste with salt and pepper. \r\nRemove from heat and serve immediately, garnished with reserved bacon, chives, and additional cayenne, if desired.', 'You can use a regular pasta non stick saucepan if no dutch oven since it does not need to bake in oven.\r\nMake only half recipe if only two people as this is large recipe.\r\nHave someone with strong arm as you will be stirring a lot of cheese for a few minutes.')
,(7, 'Sesame Shrimp Stir Fry', 'This quick and tasty main dish has a double hit of sesame oil and seeds that add nutty flavor to crisp peppers and shrimp.', 'Medium saucepan\r\nPlastic food storage bag for marinating\r\nLarge wok or skillet', '4', '20', '35', '', '2 cups water\r\n1 cup uncooked white rice\r\n1 pound medium shrimp, peeled and deveined\r\n1/4 teaspoon ground ginger\r\n1/4 teaspoon cayenne pepper\r\n1 clove garlic, minced\r\n1 tablespoon sesame seeds\r\n1/4 teaspoon ground black pepper \r\n2 tablespoons sesame oil\r\n1 red bell pepper, sliced into thin strips\r\n3 green onions, sliced\r\n3 tablespoons teriyaki sauce\r\n1/2 pound sugar snap peas\r\n1/8 cup cornstarch\r\n3/4 cup chicken broth\r\n1/4 teaspoon salt', 'In a medium saucepan, bring salted water to a boil. \r\nAdd rice, reduce heat, cover and simmer for 20 minutes.\r\nWhile rice is simmering, combine shrimp, ginger, cayenne pepper, garlic, sesame seeds and black pepper in a large plastic food storage bag. \r\nAllow to marinate in the refrigerator.\r\nHeat sesame oil in a large wok or skillet. \r\nAdd red bell pepper and green onions; sautee 3 to 4 minutes to soften slightly \r\nAdd teriyaki sauce. \r\nAdd peas and shrimp with seasoning; sautee 4 minutes or until shrimp are opaque.\r\nStir cornstarch into chicken broth and add to wok; cook, stirring until mixture boils. \r\nSprinkle with salt. \r\nSpoon shrimp mixture over rice.', '');

-- --------------------------------------------------------

--
-- Table structure for table 'recipecategory'
--

CREATE TABLE recipecategory (
  recipeCategoryId int NOT NULL,
  categoryId int NOT NULL,
  recipeId int NOT NULL
)

--
-- Dumping data for table 'recipecategory'
--

INSERT INTO recipecategory (recipeCategoryId, categoryId, recipeId) 
VALUES  (1, 4, 1), (2, 6, 1), (3, 7, 1), (4, 8, 1), (5, 9, 1), (6, 3, 2)
,(7, 6, 2) , (8, 7, 2), (9, 3, 2), (10, 6, 2), (11, 7, 2), (12, 3, 3)
,(13, 6, 3), (14, 7, 3), (15, 10, 3), (16, 4, 4), (17, 6, 4), (18, 7, 4)
,(19, 9, 4), (20, 2, 5), (21, 3, 6), (22, 6, 6), (23, 10, 6), (24, 1, 7)
,(25, 3, 7), (26, 5, 7), (27, 6, 7);
--
-- Indexes for dumped tables
--

--
-- Indexes for table 'category'
--
ALTER TABLE category
  ADD PRIMARY KEY (categoryId);

--
-- Indexes for table recipe
--
ALTER TABLE recipe
  ADD PRIMARY KEY (recipeId);

--
-- Indexes for table recipecategory
--
ALTER TABLE recipecategory
  ADD PRIMARY KEY (recipeCategoryId);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table 'category'
/*
ALTER TABLE 'category'
  MODIFY 'categoryId' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table 'recipe'
--
ALTER TABLE 'recipe'
  MODIFY 'recipeId' int(11) NOT NULL AUTO_INCREMENT COMMENT 'PRIMARY', AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table 'recipecategory'
--

ALTER TABLE 'recipecategory'
  MODIFY 'recipeCategoryId' int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
*/
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;