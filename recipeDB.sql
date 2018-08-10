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



-- --------------------------------------------------------

--
-- Table structure for table category
--

CREATE TABLE category (
  categoryId int NOT NULL PRIMARY KEY,
  categoryName varchar(40) NOT NULL
)

--
-- Dumping data for table category
--

INSERT INTO category (
	categoryId, 
	categoryName
	) 
VALUES
	 
	(1, 'Asian'),
	(3, 'SideDish'),
	(4, 'Cookies'),
	(5, 'Dessert'),
	(6, 'Holiday'),
	(7, 'Treats'),
	(8, 'Easy'),
	(9, 'No Bake'),
	(10, 'Baked'),
	(13, 'Seafood / Fish'),
	(14, 'Entree'),
	(15, 'Meat'),
	(16, 'Sandwich'),
	(17, 'BBQ'),
	(18, 'Slow Cooked'),
	(20, 'Pasta'),
	(23, 'Salad');

-- --------------------------------------------------------

--
-- Table structure for table recipe
--

CREATE TABLE recipe (
  recipeId int NOT NULL PRIMARY KEY,
  recipeTitle varchar(100) NOT NULL,
  recipeDescrip varchar(1000) NOT NULL,
  recipeNeed varchar(500) NOT NULL,
  recipeYield varchar(20) NOT NULL,
  recipePrepTime varchar(10) NOT NULL,
  recipeCookTime varchar(10) NOT NULL,
  recipeTemperature varchar(10) NOT NULL,
  recipeIngred varchar(500) NOT NULL,
  recipeSteps varchar(4000) NOT NULL,
  recipeTips varchar(2000) NOT NULL
) 

--
-- Dumping data for table recipe
--

INSERT INTO recipe (
	recipeId, 
	recipeTitle, 
	recipeDescrip, 
	recipeNeed, 
	recipeYield, 
	recipePrepTime, 
	recipeCookTime, 
	recipeTemperature, 
	recipeIngred, 
	recipeSteps, 
	recipeTips
	) 
	VALUES
(1,  'Chinese Fried Rice','', 'wok or large non stick frying pan\n', 4, '','' ,'' , '3/4	cup	finely chopped	onion	\r\n2 1/2	tbsp	oil	\r\n1    	large	lightly beaten	eggs 	\r\n3    	drops	soy sauce	\r\n3    	drops	sesame oil	\r\n8    	ounces	cooked, chopped	lean boneless pork	\r\n8       ounces  chopped chicken\r\n1/2	cup	finely chopped	carrot	\r\n1/2	cup	thawed	frozen peas	\r\n4    	cups	cooked cold, separated 	medium grain rice  	\r\n4    	chopped	green onion	\r\n2    	cups	bean sprouts	\r\n2    	tbsp	light soy sauce	 (add more if you like)\r\n, Heat 1 tbsp oil in wok; add chopped onions and stir-fry until onions turn a nice brown color, about 8-10 minutes; remove from wok\r\nAllow wok to cool slightly\r\nMix egg with 3 drops of soy and 3 drops of sesame oil; set aside\r\nAdd 1/2 tbsp oil to wok, swirling to coat surfaces.\r\nAdd egg mixture; working quickly, swirl egg until egg sets against wok. \r\nWhen egg puffs, flip egg and cook other side briefly; remove from wok, and chop into small pieces\r\nHeat 1 tbsp oil in wok; add selected meat to wok, along with carrots, peas, and cooked onion; stir-fry for 2 minutes\r\nAdd rice, green onions, and bean sprouts, tossing to mix well; stir-fry for 3 minutes\r\nAdd 2 tbsp of light soy sauce and chopped egg to rice mixture and fold in; stir-fry for 1 minute more. \r\nServe\r\nSet out additional soy sauce on the table, if desired., ),
(14, Easy Oven Baked Ribs, These were amazing. Never made ribs before and this recipe was so easy and I had everything on hand. The only change I made was to sprinkle everything with Lawry\s Season Salt before I put it in the oven. So so so good. Nice and tender. Just fell right off the bones., Mixing bowl\r\nAluminum roast pan\r\nWhisk\r\nAluminum foil, 6, 5, 240, 300, 4 lbs country-style pork ribs\r\n1 1/2 cups favorite barbecue sauce\r\n1 cup thawed orange juice concentrate \r\n1 whole sliced vidalia onion, Preheat oven to 300 degrees.\r\nArrange ribs in 9x13 baking dish meat side down bones up. \r\nTop with sliced onions.\r\nWhisk together BBQ sauce and Orange juice.\r\nPour sauce over ribs and onions.\r\nCover dish tightly with heavy duty aluminum foil and bake for three hours.\r\nUncover, increase oven temp to 350 degrees.\r\nBake for one hour longer, turning once after 30 minutes. \r\nRemove ribs to a warm platter, cover and let stand for 15 minutes.\r\nSpoon fat off the sauce and serve with the ribs., ),
(17, Crispy Onion Rings, This recipe for onion rings is so easy and so amazingly crispy, you can now make up for all those years of deep-fried denial by making these at home., Large pan for frying\r\nShallow bowl\r\nIce cube bath in large bowl\r\nWire cooling rack with paper towels\r\nTongs\r\nWhisk\r\nPaper towels or napkins, 2, 20, 5, 350, 1/2 cup all-purpose flour\r\n1/4 cup cornstarch\r\n2 tbsp dry potato flakes\r\n1/8 teaspoon cayenne pepper\r\n1 cup chilled club soda\r\n2 cups panko bread crumbs\r\n2 cups vegetable oil for frying\r\n2 large onions cut into 1/2 thick slices and seperated rings\r\n1 pinch of salt to taste, Whisk together flour, cornstarch, dry potato flakes, and cayenne pepper in a large bowl.\r\nWhisk in club soda to make a smooth batter.\r\nPlace panko bread crumbs in a shallow bowl.\r\nHeat oil in a deep fryer or large saucepan to 350 degrees F (175 degrees C).\r\nPlace a few onion rings at a time into the bowl of batter and turn to coat all sides with batter.\r\nRemove onion rings from batter and place into pan of panko bread crumbs; turn\r\nto coat completely with crumbs.\r\nCook a few rings at a time in the hot oil until golden brown, about 2 to 3 minutes.\r\nTransfer to a cooling rack set over paper towels to drain. Season with salt to taste and serve., Slice and separate onions and soak in large bowl of ice with water so slices are submerged in water and ice and chill in fridge for hour.\r\nPat dry on paper towel and then place in prepared batter to fry.\r\nSomething about the club soda helps keep batter and onion together along with ice bath for crispy onion rings),
(24, One Pot Bacon Mac and Cheese, Cheesy, gooey perfection made easy in only one pot. Literally one big cheese ball when mixing the cheese, Cheese grater\r\nDutch oven or casserole dish\r\nSlotted spoon, 6, , 30, , 4 slices thick-cut bacon, chopped (about 1/2 pound)\r\n1 lb cavatappi pasta\r\nkosher salt & freshly ground black pepper\r\n8 ounces mozzarella cheese, coarsely grated (about 2 cups, packed)\r\n6 ounces sharp cheddar cheese, coarsely grated (about 2 cups, packed)\r\n3 ounces Fontina cheese, coarsely grated (about 1 cup, packed)\r\n3 ounces cream cheese\r\n1/3 - 1  cup milk\r\n2 tablespoons unsalted butter\r\n1 teaspoon mustard powder\r\nhandful chives, chopped, Add bacon to a 5 1/2 quart Dutch oven over medium-heat and cook, stirring, until crispy. \r\nRemove bacon with a slotted spoon and set aside.\r\nAdd pasta to pot with the rendered bacon fat. \r\nAdd 4 cups water and one teaspoon salt. \r\nBring to a boil over high heat and cook, stirring frequently, until pasta is just tender and a small amount of water still remains, about 10 mins.\r\nAdd mozzarella, cheddar, fontina, cream cheese, milk, butter, mustard powder, and cayenne. \r\nReduce heat to low, stirring until cheese is melted. \r\nSeason to taste with salt and pepper. \r\nRemove from heat and serve immediately, garnished with reserved bacon, chives, and additional cayenne, if desired., You can use a regular pasta non stick saucepan if no dutch oven since it does not need to bake in oven.\r\nMake only half recipe if only two people as this is large recipe.\r\nHave someone with strong arm as you will be stirring a lot of cheese for a few minutes.),
(25, Sesame Shrimp Stir Fry, This quick and tasty main dish has a double hit of sesame oil and seeds that add nutty flavor to crisp peppers and shrimp., Medium saucepan\r\nPlastic food storage bag for marinating\r\nLarge wok or skillet, 4, 20, 35, , 2 cups water\r\n1 cup uncooked white rice\r\n1 pound medium shrimp, peeled and deveined\r\n1/4 teaspoon ground ginger\r\n1/4 teaspoon cayenne pepper\r\n1 clove garlic, minced\r\n1 tablespoon sesame seeds\r\n1/4 teaspoon ground black pepper \r\n2 tablespoons sesame oil\r\n1 red bell pepper, sliced into thin strips\r\n3 green onions, sliced\r\n3 tablespoons teriyaki sauce\r\n1/2 pound sugar snap peas\r\n1/8 cup cornstarch\r\n3/4 cup chicken broth\r\n1/4 teaspoon salt, In a medium saucepan, bring salted water to a boil. \r\nAdd rice, reduce heat, cover and simmer for 20 minutes.\r\nWhile rice is simmering, combine shrimp, ginger, cayenne pepper, garlic, sesame seeds and black pepper in a large plastic food storage bag. \r\nAllow to marinate in the refrigerator.\r\nHeat sesame oil in a large wok or skillet. \r\nAdd red bell pepper and green onions; sautee 3 to 4 minutes to soften slightly \r\nAdd teriyaki sauce. \r\nAdd peas and shrimp with seasoning; sautee 4 minutes or until shrimp are opaque.\r\nStir cornstarch into chicken broth and add to wok; cook, stirring until mixture boils. \r\nSprinkle with salt. \r\nSpoon shrimp mixture over rice., );

-- --------------------------------------------------------

--
-- Table structure for table recipecategory
--

CREATE TABLE recipecategory (
  recipeCategoryId int NOT NULL,
  categoryId int NOT NULL,
  recipeId int NOT NULL
) 

--
-- Dumping data for table recipecategory
--

INSERT INTO recipecategory (recipeCategoryId, categoryId, recipeId) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 2),
(4, 5, 2),
(5, 6, 3),
(6, 7, 3),
(7, 8, 3),
(10, 9, 3),
(11, 10, 4),
(12, 4, 4),
(13, 6, 4),
(14, 3, 5),
(15, 11, 5),
(16, 12, 5),
(17, 13, 6),
(18, 14, 6),
(19, 15, 7),
(20, 16, 7),
(21, 17, 7),
(22, 18, 7),
(23, 15, 8),
(24, 14, 8),
(25, 10, 8),
(26, 19, 9),
(27, 15, 9),
(28, 14, 9),
(29, 10, 9),
(30, 14, 10),
(31, 20, 10),
(32, 15, 10),
(33, 21, 11),
(34, 10, 11),
(35, 5, 11),
(36, 7, 12),
(37, 9, 12),
(38, 15, 13),
(39, 14, 13),
(40, 10, 13),
(41, 10, 14),
(42, 17, 14),
(43, 18, 14),
(44, 14, 14),
(45, 15, 14),
(46, 8, 14),
(47, 4, 15),
(48, 6, 15),
(49, 10, 15),
(50, 7, 16),
(51, 8, 16),
(52, 9, 16),
(53, 3, 17),
(54, 22, 17),
(55, 23, 18),
(56, 5, 18),
(57, 3, 18),
(58, 23, 19),
(59, 3, 19),
(60, 5, 19),
(61, 4, 20),
(62, 8, 20),
(63, 7, 20),
(64, 9, 21),
(65, 4, 21),
(66, 7, 21),
(67, 7, 22),
(68, 9, 22),
(69, 7, 23),
(70, 10, 23),
(71, 20, 24),
(72, 14, 24),
(73, 15, 24),
(74, 9, 24),
(75, 1, 25),
(76, 14, 25),
(77, 13, 25),
(78, 9, 25),
(79, 1, 61),
(80, 3, 62),
(81, 4, 62),
(82, 23, 63),
(83, 23, 64),
(84, 1, 65),
(85, 3, 66),
(86, 3, 67),
(87, 3, 68),
(88, 3, 69),
(89, 3, 70),
(90, 3, 71),
(91, 1, 72),
(92, 4, 72),
(93, 3, 73),
(94, 4, 73),
(95, 10, 74),
(96, 10, 74),
(97, 0, 8),
(98, 0, 8),
(99, 0, 8),
(100, 20, 75),
(101, 23, 75),
(102, 20, 75),
(103, 4, 21);

--
-- Indexes for dumped tables
--

--
 Indexes for table category

ALTER TABLE category
  ADD PRIMARY KEY (categoryId);


 Indexes for table recipe

ALTER TABLE recipe
  ADD PRIMARY KEY (recipeId);


 Indexes for table recipecategory

ALTER TABLE recipecategory
  ADD PRIMARY KEY (recipeCategoryId);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table category
--
ALTER TABLE category
  MODIFY categoryId int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table recipe
--
ALTER TABLE recipe
  MODIFY recipeId int NOT NULL AUTO_INCREMENT COMMENT PRIMARY, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table recipecategory
--
ALTER TABLE recipecategory
  MODIFY recipeCategoryId int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
