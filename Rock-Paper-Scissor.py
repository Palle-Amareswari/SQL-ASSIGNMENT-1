player1 = input("Enter choice of player1:")
player2 = input("Enter choice of player2:")

if player1 == "rock":
    if player2 == "scissor":
        print("Congratulations, Player1. You are the WINNER")
    elif player2 == "paper":
        print("Congratulations, Player2. You are the WINNER")
    else:
        print("Same choices, Its a tie")
elif player1 == "scissor":
    if player2 == "paper":
        print("Congratulations, Player1. You are the WINNER")
    elif player2 == "rock":
        print("Congratulations, Player2. You are the WINNER")
    else:
        print("Same choices, Its a tie")

elif player1 == "paper":
    if player2 == "rock":
        print("Congratulations, Player1. You are the WINNER")
    elif player2 == "scissor":
        print("Congratulations, Player2. You are the WINNER")
    else:
        print("If both are same choices, Its a tie")
    new_game = input("Do you want to start new game, click (yes/no)?")
    if new_game == "yes":
        print("Continue the game")
    else:
        print("Stop the game")
