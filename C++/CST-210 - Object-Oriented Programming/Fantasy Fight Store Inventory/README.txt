This was the first project of a large, two-part project. The idea for the project
was for students to create a "Fantasy Fight Arena" game. The game would be a
text-based fighting game with a leveling system and different items that could be
bought in a store and used by the player. The idea of the project was to explore
the concepts of polymorphism and inheritance such as in the classes of different
items inheriting from an overall "SalableItem" class. This specific part of the
project was to create the fantasy store and the inventory mechanism for the arena
game. This project is completed with the finished fighting arena game in the
project folder "Fantasy Fight Arena Game."

The below is a description of this project's program, adapted from the README of
the original submission of this project.: 


First of all, it be stated should that the program displays a Greek Mythological
theme, hence all of the weird inventory names and the fact that the game currency
is the drachma.

The program certainly tries to be as clear as possible for the user. But, to just
reiterate some things: 1) most of the commands are single character letters and
2) when selecting a catalog index in the browsing section or cart, the letter
of the item index (e.g.,A1,S3,H2) has to be capitalized in order for the program to
understand the command.

From the coding end, there may be a few things that need to be explained.
1) "Fantasy Store Catalog.txt"
This is the file which sets up most of the data for the store. It consists of five
sets of lines. The first set pertains to printing out the full store inventory
for the user, as well as printing out items for the cart. The second set is a list
of the specific names for each of the specific equipment items, used for calling
the player's inventory. The third set is a bunch of integers representing the prices
for each of the items (the zeroes are place holders). The fourth set consists of the
noting the item types for each of the items. Finally, the fifth set consists of a
bunch integers representing the grade of a particular piece of armor or weapon
(the zeroes are place holders). The place holders in the file are present in order
to maintain a mathematical flow of 22 lines per section (the exception being the 
second set which has 15).

2) "Fantasy Fight Character Inventory.txt"
This file consists of the integers maintained for save progress in the game.
It will need to be altered to properly test the program multiple times. Within this
zip folder, the standard data set for this file was included in the file "Standard
Data for Fantasy Fight Character Inventory.txt." It can be easily used for copying
and pasting as need be. The standard data set maintains every data point at zero 
except Drachmas and HP (which both start at 10). Below this is the master key for 
the file, each "#" represents the integer referring to a specific inventory item
in the program.

Master Key:
# - Drachmas
# - Health Points (HP)
# - Defensive Points (DP)
# - Armor Grade
# - Sword Grade
# - Bow Grade
# - Axe Grade
# - Hammer Grade

3) After Exiting the Store
After finishing up the processes within the store, the program checks for and prints
out the inventory for the player. This was included to add an aspect of the 
inheritance files within the program. I was confused as to how to utilize the 
SalableItem class in this project. I went through three or four major code overhauls 
trying to rearrange the code to match this. In the examples, it only appeared that 
the inherited classes were present for functions pertaining to the complete program,
with actually using items and firing weapons. So, I added these extra lines to the 
end of main to demonstrate the use of inheritance in some respect.

- Michael, 2/28/21