This was the second project of a large, two-part project. The idea for the project
was for students to create a "Fantasy Fight Arena" game. The game would be a
text-based fighting game with a leveling system and different items that could be
bought in a store and used by the player. The idea of the project was to explore
the concepts of polymorphism and inheritance such as in the classes of different
items inheriting from an overall "SalableItem" class. This specific part of the
project completes the first part of the project, now adding the fighting game on
top of the store from the previous project. The original part of the project can be
found in the project folder "Fantasy Fight Store Inventory."

I did notice in the aftermath of the project that there is an error I believe with
inventory data in stored and retrieved. However, the program should still give most
of the overall function of the intended game.

The below is a description of this project's program, adapted from the README of
the original submission of this project.: 


First of all, it should be noted that the program displays a Greek Mythological 
theme, hence all of the weird inventory names and the fact that the game currency is
the drachma.

The program certainly tries to be as clear as possible for the user. But, to just
reiterate some things: 1) most of the commands are single character letters and
2) when selecting a catalog index in the browsing section or cart, the letter
of the item index (e.g.,A1,S3,H2) has to be capitalized in order for the program to
understand the command.

Deeper explanations of the program from the coding end are explained in the
Fantasy Fight Store Inventory and the Fantasy Fighting Arena Game
Pre-Production assignment submissions. One major difference to be noted, however,
is that there are no Health, Defense, or Armor classes within the code, being
removed to have more smoothness within the code. Also, the instructions say to
"derive a player class from the Inventory bass class," but I derived the Arena
class from the bass class since it seemed to make more sense than explicitly calling
it a "Player" class. I hope that is fine.

Finally, if you want to reset the save file, I included a standard, starting save
file, named "Standard Data for Fantasy Fight Character Inventory.txt," which can be
copy and pasted into "Fantasy Fight Character Inventory."

- Michael, 2/28/21