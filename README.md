# MYRUBYCOOK.RB

This repository contains a simple but powerful Ruby script that functions as a digital recipe book. The script allows users to insert their favorite recipes, view them, and exit the program whenever they wish.

## Code Description

I've organized the code into several functions to facilitate reading and maintenance.

`welcome()`: This function is responsible for displaying a welcome message to the user.

`menu()`: This function displays a menu of options to the user, allowing them to insert a new recipe, view all recipes, or exit the program.

`insertRecipe()`: This function is where the user can enter the name and type of a new recipe. It returns a hash with the name and type of the recipe.

`printRecipes()`: This function prints all the recipes the user has entered. If the recipe list is empty, the function will inform that no recipes have been registered.

In the main body of the program, I use the above functions to create a loop that runs until the user decides to exit the program. In each iteration of the loop, the menu function is called to collect the user's choice, and then the appropriate action is executed based on that choice.

## How to Use

To use this script, you can clone the repository, navigate to the script directory in your terminal, and run it with the `ruby myrubycook.rb` command.

The program will display a welcome message and a menu of options. Just type the number of the option you want and press Enter.

I hope this digital recipe book in Ruby will be useful to you! If you have any suggestions or improvements, feel free to open an issue or a pull request.
