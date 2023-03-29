

print("""ICE CREAM HUNT SPICED ACADEMY

=========================================\n
""")


name = input("Type your name: \n")


name = name.upper()
print("Welcome", name, "to this adventure!\n")


info = input("""You are located at the Bicycle Parking of SPICED ACADEMY.\n""")

print("""Where would you like to go?", 'You can travell to:\n: 'Reception', '1 floor', 'Kitchen'""")

Locations = {
    "reception": ["1 floor", "Kitchen"],
    "1 floor": ["reception", "kitchen"],
    "kitchen": ["reception", "1 floor"],
    "green plant": ["reception"],
    }

player = input("Where do you want to go?\n ")

print()







player = input("Are you at reception?\n").lower() 
# input = player ('Please enter Yes, or Not: ')
print(player)
if player == "yes":
    print("Great, let's go to the next step!")
elif player == "no":
    print("Go back to the backyard and look for the entrance")
else:
    print('I do not know where are you!')
    
print("To help you find exactly what you're looking for, we'll route you through the space.")

print ("Press enter to continue...")
input()

print(""" SPICED ACADEMY space has 2 blocs of 4 floor conected to 3 buildgs. 
Your mission is to find the ICE CREAM maxine on 4 flooat at 2 bloc on the 2 building. 
How you gonna do it: 

1. at reception left corner you can see a small poster
2. take the small poster
3. at backside of the poster has 5 numbers you need to calculet 
4. with the results go to the 1 fisrt buiding and take the stairs
5. the number result will take to the floor where you can see the green plant
""")
















player = input('Are you there? ')
input = player ('Please enter Yes, or Not: ')
if player == "Yes":
    print("Congratulations!")
elif player == "No":
    print("Go back to the backyard and look for the entrance")
else:
    print('I do not know where are you!')

    










import time

for i in [1, 2, 3, 4, 5]: 
    print("GAME OVER!")
    time.sleep(5)

