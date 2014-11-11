# ------------users------------
user_1 = User.create do |u|
  u.fname = "Anh"
  u.lname = "LaRusso"
  u.email = "aphuong85@gmail.com"
  u.password = "anh"
end

user_2 = User.create do |u|
  u.fname = "Sam"
  u.lname = "Burn"
  u.email = "sam@gmail.com"
  u.password = "sam"
end

user_3 = User.create do |u|
  u.fname = "Kylie"
  u.lname = "Smith"
  u.email = "kylie@gmail.com"
  u.password = "kylie"
end

user_4 = User.create do |u|
  u.fname = "Jesse"
  u.lname = "Alexander"
  u.email = "jesse@gmail.com"
  u.password = "jesse"
end

user_5 = User.create do |u|
  u.fname = "Julie"
  u.lname = "Newman"
  u.email = "julie@gmail.com"
  u.password = "julie"
end

user_6 = User.create do |u|
  u.fname = "Libby"
  u.lname = "Frank"
  u.email = "libby@gmail.com"
  u.password = "libby"
end

user_7 = User.create do |u|
  u.fname = "Sarah"
  u.lname = "Dean"
  u.email = "sarah@gmail.com"
  u.password = "sarah"
end

user_8 = User.create do |u|
  u.fname = "Laura"
  u.lname = "Garcia"
  u.email = "laura@gmail.com"
  u.password = "laura"
end

user_9 = User.create do |u|
  u.fname = "Dan"
  u.lname = "Green"
  u.email = "dan@gmail.com"
  u.password = "dan"
end

user_10 = User.create do |u|
  u.fname = "Kenny"
  u.lname = "Reed"
  u.email = "kenny@gmail.com"
  u.password = "kenny"
end


# ------------categories-----------
category_1 = Category.create do |c|
  c.name = "Garden"
  c.image_url = "category/gardening.jpg"
end

category_2 = Category.create do |c|
  c.name = "Food"
  c.image_url = "category/food.jpg"
end

category_3 = Category.create do |c|
  c.name = "Lifestyle"
  c.image_url = "category/lifestyle.jpg"
end

category_4 = Category.create do |c|
  c.name = "Home"
  c.image_url = "category/home.jpg"
end

category_5 = Category.create do |c|
  c.name = "Beauty"
  c.image_url = "category/beauty.jpg"
end

category_6 = Category.create do |c|
  c.name = "Arts & Crafts"
  c.image_url = "category/craft.jpg"
end

category_7 = Category.create do |c|
  c.name = "Technology"
  c.image_url = "category/tech.jpg"
end


# ------------tutorials  & steps ------------
tutorial_1 = Tutorial.create do |t|
  t.title = "How To Dye Canvas Sneakers"
  t.main_image = File.new('app/assets/images/tutorial/dye_canvas.jpg', 'r')
  t.user_id = user_2.id
  t.category_id = category_6.id
  t.supplies = "Bucket for Water, Liquid Fabric Dye, White Canvas Sneakers"
end

tutorial_1.steps << Step.create do |s|
  s.body = "Fill basin with hot water. Add dye to water, following manufacturer's instructions for sink or bucket dyeing."
  s.position = 1
  s.step_image = nil
end

tutorial_1.steps << Step.create do |s|
  s.body = "Wet sneakers with hot water, and place in dye bath."
  s.position = 2
  s.step_image = nil
end

tutorial_1.steps << Step.create do |s|
  s.body = "Stir for amount of time stated on dye bottle. Rinse as directed."
  s.position = 3
  s.step_image = nil
end

tutorial_1.steps << Step.create do |s|
  s.body = "Air-dry shoes, or place in dryer."
  s.position = 4
  s.step_image = nil
end

tutorial_1.steps << Step.create do |s|
  s.body = "Clean basin immediately to avoid staining."
  s.position = 5
  s.step_image = nil
end

# --------------------
tutorial_2 = Tutorial.create do |t|
  t.title = "How To Make A Gold Sequin Cake"
  t.main_image = File.new('app/assets/images/tutorial/sequin_cake.jpg', 'r')
  t.user_id = user_1.id
  t.category_id = category_2.id
  t.supplies = "Fondant Covered Cake, Piping Gel, Edible Sequin Sprinkles, Gold Dust, Vodka, Wide Paintbrush"
end

tutorial_2.steps << Step.create do |s|
  s.body = "Cover your cake with fondant."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/cake1.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Cover entire cake with generous layer of piping gel. If stacking another cake layer on top of the sequin layer, trace out the diameter of the upper tier onto the sequin layer."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/cake2.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Scoop a handful of candy sequins and sprinkle a complete layer onto the piping gel. You will need a gentle but deliberate touch to attach the sequins."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/cake3.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Let the piping gel and sequin layer dry completely, to ensure they are firmly attached before painting."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/cake4.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Mix your gold and silver dust with vodka until it reaches a thick consistency."
  s.position = 5
  s.step_image = File.new('app/assets/images/step/cake5.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Using a wide paintbrush, paint this mixture over the entire cake until everything is covered. You will need to let it dry and then touch it up."
  s.position = 6
  s.step_image = File.new('app/assets/images/step/cake6.jpg', 'r')
end

tutorial_2.steps << Step.create do |s|
  s.body = "Let the cake dry overnight. If stacking the cake, this is a very important step, to avoid the metallic color transferring to the rest of the cake."
  s.position = 7
  s.step_image = File.new('app/assets/images/step/cake7.png', 'r')
end

# -------------------------
tutorial_3 = Tutorial.create do |t|
  t.title = "How To Make A Light For Photography"
  t.main_image = File.new('app/assets/images/tutorial/light.jpg', 'r')
  t.user_id = user_3.id
  t.category_id = category_7.id
  t.supplies = "Base Board, Corrugated Plastic, Velcro Tape, Aluminum Foil, Socket, Double Sided Tape, Switch, Outlet, Joining Terminal, Distribution Cable, Tripod, Glue, Ruler, Scissors"
end

tutorial_3.steps << Step.create do |s|
  s.body = "Put double sided tape on the corrugated plastic."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/light1.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Attach aluminum foil to corrugated plastic."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/light2.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Finish part of the lampshade. Make four pieces in total in the same way. Attach the aluminum foil with the base board."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/light3.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Make a hole in the corrugated plastic to exhaust heat from a fluorescent lamp."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/light4.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Screw the socket on the base board."
  s.position = 5
  s.step_image = File.new('app/assets/images/step/light5.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Join sockets to the distribution cable."
  s.position = 6
  s.step_image = File.new('app/assets/images/step/light6.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Install the fluorescent lamp. It's brightness is 400W in total."
  s.position = 7
  s.step_image = File.new('app/assets/images/step/light7.png', 'r')
end

tutorial_3.steps << Step.create do |s|
  s.body = "Fix light to the tripod and turn on!"
  s.position = 8
  s.step_image = File.new('app/assets/images/step/light8.png', 'r')
end

# --------------------------------------------
tutorial_4 = Tutorial.create do |t|
  t.title = "How To Make Caramel Apple"
  t.main_image = File.new('app/assets/images/tutorial/caramel_apple.jpg', 'r')
  t.user_id = user_4.id
  t.category_id = category_2.id
  t.supplies = "6 Apples, Craft Sticks, 14oz Pack of Individually Wrapped Caramels, 2tbs Milk, Water, Optional Candy/Nuts For Garnish"
end

tutorial_4.steps << Step.create do |s|
  s.body = "Bring 3 inches of water in a medium saucepan to a boil."
  s.position = 1
  s.step_image = nil
end

tutorial_4.steps << Step.create do |s|
  s.body = "Insert a craft stick into the top end of each apple."
  s.position = 2
  s.step_image = nil
end

tutorial_4.steps << Step.create do |s|
  s.body = "Dip the apples into the boiling water for 20-30 seconds, this will remove the wax coating on the apples. Dry thoroughly and begin preparing the caramel."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/caramel3.png', 'r')
end

tutorial_4.steps << Step.create do |s|
  s.body = "Prepare the caramel by adding caramel candies and milk to a medium saucepan over medium heat. Stay close and stir often while the candies melt. Once melted, remove from heat and allow to sit about 1 minute."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/caramel4.png', 'r')
end

tutorial_4.steps << Step.create do |s|
  s.body = "Dip each apple in the caramel, turning slowly to coat. Continue to turn, allowing any excess to drip back into the saucepan."
  s.position = 5
  s.step_image = File.new('app/assets/images/step/caramel5.png', 'r')
end

tutorial_4.steps << Step.create do |s|
  s.body = "If desired, dip the bottoms of each apple into nuts, chocolate chips or other garnish."
  s.position = 6
  s.step_image = File.new('app/assets/images/step/caramel6.png', 'r')
end

tutorial_4.steps << Step.create do |s|
  s.body = "Cool apples completely on the prepared sheet pan then wrap individually and store for 2 to 3 days in an airtight container."
  s.position = 7
  s.step_image = nil
end


# ----------------------------------------------------
tutorial_5 = Tutorial.create do |t|
  t.title = "How To Make Cinnamon Apple Rings"
  t.main_image = File.new('app/assets/images/tutorial/apple_rings.jpg', 'r')
  t.user_id = user_5.id
  t.category_id = category_2.id
  t.supplies = "4 Apples, 1 Cup Flour, 1/4tsp Baking Powder, 1tsp Sugar, 1/4tsp Salt, 1/8tsp Cinnamon, 1 Egg, 1 Cup Buttermilk, Vegetable Oil"
end

tutorial_5.steps << Step.create do |s|
  s.body = "Combine flour, baking powder, sugar, salt and ⅛ teaspoon cinnamon. In a small bowl combine egg and buttermilk. In a third dish, make cinnamon-sugar topping by combining ⅓ cup sugar and 2 teaspoons cinnamon."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/applerings_1.jpg', 'r')
end

tutorial_5.steps << Step.create do |s|
  s.body = "Next, slice the apples into ¼-inch thick slices, and use circle biscuit cutters in graduated sizes to make rings out of each slice. Discard the center circles containing the apple core."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/applerings_2.jpg', 'r')
end

tutorial_5.steps << Step.create do |s|
  s.body = "Heat the oil in a frying pan over medium heat to 350°F."
  s.position = 3
  s.step_image = nil
end

tutorial_5.steps << Step.create do |s|
  s.body = "Combine the contents of the first and second dishes as the oil warms up. This will be your batter."
  s.position = 4
  s.step_image = nil
end

tutorial_5.steps << Step.create do |s|
  s.body = "Dip the apple rings in and out of the batter one at a time, removing any dripping excess by tapping the rings against the side of the bowl."
  s.position = 5
  s.step_image = nil
end

tutorial_5.steps << Step.create do |s|
  s.body = "Fry the rings in small batches, turning them to ensure browning on both sides."
  s.position = 6
  s.step_image = File.new('app/assets/images/step/applerings_6.jpg', 'r')
end

tutorial_5.steps << Step.create do |s|
  s.body = "Once the rings are golden and crispy, transfer them to a plate lined with paper towel for a few seconds."
  s.position = 7
  s.step_image = nil
end

tutorial_5.steps << Step.create do |s|
  s.body = "Quickly transfer the apple rings, one by one, into the cinnamon-sugar mixture and coat evenly."
  s.position = 8
  s.step_image = File.new('app/assets/images/step/applerings_8.jpg', 'r')
end

tutorial_5.steps << Step.create do |s|
  s.body = "Transfer to a wire rack and serve warm."
  s.position = 9
  s.step_image = File.new('app/assets/images/step/applerings_9.jpg', 'r')
end

# ------------------------------------
tutorial_6 = Tutorial.create do |t|
  t.title = "DIY Pressed Flower iPhone Case"
  t.main_image = File.new('app/assets/images/tutorial/iphone_case.jpg', 'r')
  t.user_id = user_6.id
  t.category_id = category_6.id
  t.supplies = "Pressed Dried Flowers, Solid Flat White iPhone Case, Clear Craft Glue, Tape, Scissors, Parchment Paper, Ruler, Timer, Cups, 2 Wooden Craft Sticks, 50/50 Clear-Casting Epoxy Resin, Acetone, Q-tips, Glitter"
end

tutorial_6.steps << Step.create do |s|
  s.body = "Place pressed flowers in your case and play around with the different arrangements. Once you have found one that you like, take a snapshot of it for future reference."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/iphonecase1.png', 'r')
end

tutorial_6.steps << Step.create do |s|
  s.body = "Dab a small amount of glue on the largest flower and carefully glue it to the case. Follow suit with the rest of your flowers until your arrangement is complete."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/iphonecase2.png', 'r')
end

tutorial_6.steps << Step.create do |s|
  s.body = "Tape parchment paper to work surface. Pour resin(3/8 inches high), hardener(3/4 inches high) into cup. Stir for 2 minutes. Pour into another cup, stir for 1 minute, let it rest for 5 minutes."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/iphonecase3.png', 'r')
end

tutorial_6.steps << Step.create do |s|
  s.body = "Pour the resin onto the center of the case and spread to the edge using a craft stick. Set the case on parchment paper to dry - one to two hours."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/iphonecase4.png', 'r')
end

tutorial_6.steps << Step.create do |s|
  s.body = "Dip Q-tips in acetone and wipe any spills."
  s.position = 5
  s.step_image = File.new('app/assets/images/step/iphonecase5.png', 'r')
end

tutorial_6.steps << Step.create do |s|
  s.body = "Once your first coat of resin has dried, examine your case to make sure all the flowers have been properly coated. If needed, add a second coat of resin."
  s.position = 6
  s.step_image = File.new('app/assets/images/step/iphonecase6.png', 'r')
end

# -----------------------------
tutorial_7 = Tutorial.create do |t|
  t.title = "How To Make A Rope Tree Swing"
  t.main_image = File.new('app/assets/images/tutorial/swing.jpg', 'r')
  t.user_id = user_7.id
  t.category_id = category_4.id
  t.supplies = "2x6 Piece Of Wood At Least 6ft Long, 1 Inch Rope, 16 - 3 Inch Screws, 16 Washers, Stain or Paint, Drill, Saw"
end

tutorial_7.steps << Step.create do |s|
  s.body = "Cut the 2x6 into 4 pieces. 2 that are 24 inches long and 2 that are 10 inches long. Drill the screws into the wood. Use washers to ensure the screws don't come through to the other side."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/swing1.png', 'r')
end

tutorial_7.steps << Step.create do |s|
  s.body = "Add distressing if desired and sand down the swing seat."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/swing2.png', 'r')
end

tutorial_7.steps << Step.create do |s|
  s.body = "Use a 1 inch wood drill bit and drill 4 holes. Paint or stain if desired."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/swing3.png', 'r')
end

tutorial_7.steps << Step.create do |s|
  s.body = "Cut two pieces of rope, 6 feet long and thread through holes of swing seat, tying a secure knot at the end of the ropes."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/swing4.png', 'r')
end

#-----------------------
tutorial_8 = Tutorial.create do |t|
  t.title = "How To Spray Paint Wicker"
  t.main_image = File.new('app/assets/images/tutorial/wicker_chair.jpg', 'r')
  t.user_id = user_9.id
  t.category_id = category_4.id
  t.supplies = "Paint Strainer, HomeRight Finish Max, Chalk Based Paint, Clean Water"
end

tutorial_8.steps << Step.create do |s|
  s.body = "Dust/vacuum the chair. Strain the paint to prevent it from clogging the sprayer."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/chair1.png', 'r')
end

tutorial_8.steps << Step.create do |s|
  s.body = "Apply 2 coats of paint and let it dry for 24 hours. Then apply a water-based top coat."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/chair2.png', 'r')
end

tutorial_8.steps << Step.create do |s|
  s.body = "The HomeRight Sprayer is easy to clean and lets you paint your wicker furniture any color you want!"
  s.position = 3
  s.step_image = File.new('app/assets/images/step/chair3.png', 'r')
end

# ---------------------
tutorial_9 = Tutorial.create do |t|
  t.title = "How To Perform Hip Flexor Stretches"
  t.main_image = File.new('app/assets/images/tutorial/yoga.jpg', 'r')
  t.user_id = user_9.id
  t.category_id = category_3.id
  t.supplies = "Yoga Mat"
end

tutorial_9.steps << Step.create do |s|
  s.body = "Do a camel pose. It will open up the chest and increase the flexibility of the spine. The exercise tightens the waist and strengthens the arms and shoulders as well."
  s.position = 1
  s.step_image = nil
end

tutorial_9.steps << Step.create do |s|
  s.body = "Do the garland pose in yoga. It will open up the hips and improves balance. This pose will also increase flexibility in your thighs and ankles while toning your core."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/yoga1.png', 'r')
end

tutorial_9.steps << Step.create do |s|
  s.body = "Do the reclined bound angle pose in yoga. This simple pose stretches the groin and inner thighs while opening up the chest. Make sure that your spine does not arch as you perform this pose."
  s.position = 3
  s.step_image = nil
end

tutorial_9.steps << Step.create do |s|
  s.body = "Do the perfect pose, it opens your hips while stretching your ankles and your back. This pose is often used for meditation, and you can hold it for as long as needed to center yourself."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/yoga2.png', 'r')
end

# -------------------
tutorial_10 = Tutorial.create do |t|
  t.title = "How To Make Bloody Halloween Nails"
  t.main_image = File.new('app/assets/images/tutorial/bloody_nails.jpg', 'r')
  t.user_id = user_8.id
  t.category_id = category_5.id
  t.supplies = "Pale Pink Nail Polish, Red Nail Polish, Dotting Tool"
end

tutorial_10.steps << Step.create do |s|
  s.body = "Paint on 2 coats of pale pink nail polish."
  s.position = 1
  s.step_image = nil
end

tutorial_10.steps << Step.create do |s|
  s.body = "Use a dotting tool to place four random dots of red nail polish along the top of the nail. You can also use the end of the polish brush if you don't have a dotting tool."
  s.position = 2
  s.step_image = nil
end

tutorial_10.steps << Step.create do |s|
  s.body = "Lastly, go back and connect the dots to the tip of your nail and seal with a top coat. It should look drippy. For a more gory version, why not try an oxblood hue on a bare nail?"
  s.position = 3
  s.step_image = nil
end

# -----------------------
tutorial_11 = Tutorial.create do |t|
  t.title = "How To Tightline Eyes"
  t.main_image = File.new('app/assets/images/tutorial/eyes.jpg', 'r')
  t.user_id = user_8.id
  t.category_id = category_5.id
  t.supplies = "Kohl Pencil"
end

tutorial_11.steps << Step.create do |s|
  s.body = "Tightlining your eyes is a great way to add subtle definition. Gently lift your lashes upward. You'll see tiny gaps between your lash hairs, which you'll be filling in with eyeliner."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/eyes1.png', 'r')
end

tutorial_11.steps << Step.create do |s|
  s.body = "Using your eyeliner, lightly dab it in between each individual lash and get as close to the root as possible."
  s.position = 2
  s.step_image = File.new('app/assets/images/step/eyes2.png', 'r')
end

tutorial_11.steps << Step.create do |s|
  s.body = "Technically you’re done, but if you’d like to intensify the look even more, you can tightline your bottom lash line, too."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/eyes3.png', 'r')
end

tutorial_11.steps << Step.create do |s|
  s.body = "Gently lift lower lashes downwards, and fill in the gaps between each lash."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/eyes4.png', 'r')
end

# ----------------------------
tutorial_12 = Tutorial.create do |t|
  t.title = "How To Grow Garlic"
  t.main_image = File.new('app/assets/images/tutorial/garlic.jpg', 'r')
  t.user_id = user_10.id
  t.category_id = category_1.id
  t.supplies = "Clove Of Garlic, Soil, Planting Pot"
end

tutorial_12.steps << Step.create do |s|
  s.body = "Fall is the time to plant garlic. It loves the cold and will be ready to use next spring and summer."
  s.position = 1
  s.step_image = nil
end

tutorial_12.steps << Step.create do |s|
  s.body = "Just place the end of the clove with the root down into the soil the same way that you plant any other bulb.  You do not need to remove the paper slip from the clove.  The dark area will turn into a root in time."
  s.position = 2
  s.step_image = nil
end

tutorial_12.steps << Step.create do |s|
  s.body = "If you plant the garlic in pots, place your container in a warm part of your home with direct sunlight, or outside on a deck or porch, and wait for the garlic to root itself and begin to send up new shoots."
  s.position = 3
  s.step_image = nil
end

tutorial_12.steps << Step.create do |s|
  s.body = "Once the garlic has become established in the soil, cut back the scrapes (the shooting flowery tendrils) and the plant will begin to put all its resources into growing a big delicious garlic bulb."
  s.position = 4
  s.step_image = nil
end

# -------------------
tutorial_13 = Tutorial.create do |t|
  t.title = "How To Grow Succulents"
  t.main_image = File.new('app/assets/images/tutorial/succulents.jpg', 'r')
  t.user_id = user_1.id
  t.category_id = category_1.id
  t.supplies = "Succulents, Soil, TLC"
end

tutorial_13.steps << Step.create do |s|
  s.body = "Plant succulents in well draining soil made for cacti and succulents. If you can’t find that kind of soil mix, simply mix some perlite with regular potting soil."
  s.position = 1
  s.step_image = File.new('app/assets/images/step/succulents1.png', 'r')
end

tutorial_13.steps << Step.create do |s|
  s.body = "Don’t over water succulents. They like it relatively dry, so only water them when your soil is getting on the dry side. Succulents can be watered more frequently in the spring and summer, but make sure to check the soil often."
  s.position = 2
  s.step_image = nil
end

tutorial_13.steps << Step.create do |s|
  s.body = "Be sure they are planted in a well draining pot. If they are planted in a container with no drainage, they will rot."
  s.position = 3
  s.step_image = File.new('app/assets/images/step/succulents2.png', 'r')
end

tutorial_13.steps << Step.create do |s|
  s.body = "If you want to plant them in a non draining container, just be sure they have plenty of room at the bottom of the container for drainage. For the mason jar planters above, I filled the bottom of each jar with stones before planting them."
  s.position = 4
  s.step_image = File.new('app/assets/images/step/succulents4.png', 'r')
end

tutorial_13.steps << Step.create do |s|
  s.body = "Place them in a sunny spot, but not direct sunlight. Follow these steps and your succulents will flourish!"
  s.position = 5
  s.step_image = nil
end





