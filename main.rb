#Link: https://youtube.com/playlist?list=PLajdzeQ7QG3iXblkBah6Ffoaa7Idxn4cT

INSERT_RECIPE = 1
VIEW_RECIPE = 2
# SEARCH_RECIPE = 0
EXIT = 3

def welcome()
  puts
  puts "WELCOME TO THE MYRUBYCOOK.RB"
  puts
end

def menu()
  puts
  puts "[#{INSERT_RECIPE}] TO INSERT A NEW RECIPE"
  puts "[#{VIEW_RECIPE}] TO SEE ALL RECIPES"
  puts "[#{EXIT}] EXIT"

  puts
  print "TYPE THE OPTION DO YOU PREFER: "
  puts
  return gets.to_i()
end

def insertRecipe()
  puts
  puts "ENTER THE RECIPE'S NAME: "
  name = gets.chomp()
  puts
  puts "ENTER THE TYPE'S NAME: "
  type = gets.chomp()

  puts
  puts "RECIPE #{name} REGISTERED SUCCESSFULLY!"
  puts

  return { name: name, type: type }
end

def printRecipes(recipe = recipes)
  puts
  puts "***** RECIPES REGISTERED *****"
  puts

  recipe.each do |recipe|
    puts " - RECIPE: #{recipe[:name]} | TYPE: #{recipe[:type]}"
  end

  if recipe.empty?
    puts "NO RECIPE REGISTERED."
    puts
  end

end

welcome()

recipes = []

optionMenu = menu()

loop do
  if (optionMenu == INSERT_RECIPE)
    recipes << insertRecipe()
  elsif (optionMenu == VIEW_RECIPE)
    printRecipes(recipes)
  elsif (optionMenu == EXIT)
    break
  else
    puts "INVALID OPTION"
  end

  optionMenu = menu()
end

puts
puts "THANKS FOR YOU CONSIDERATION."
