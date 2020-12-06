import 'dart:io';
import 'dart:math';


String getPlayerMove() {
  print("What Would you like (1)Papel, (2)Gunting, or (3)Bato");
  String selection = stdin.readLineSync().toUpperCase();
  
  switch (selection) {
    case "1":
      return "Papel";
      break;
    case "2":
      return "Gunting";
      break;
    case "3":
      return "Bato";
      break;
    default: 
      return "Quit";
      break;
  }
}


String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  
  
  switch (move) {
    case 0:
      return "Papel";
      break;
    case 1:
      return "Gunting";
      break;
    case 2:
      return "Bato";
      break;
    default:
      break;
  }
}


String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) { 
    return "Tie";
  } else if (playerMove == "Papel" && computerMove == "Bato") {
    return "You Win!";
  } else if (playerMove == "Bato" && computerMove == "Gunting") {
    return "You Win!";
  } else if (playerMove == "Gunting" && computerMove == "Papel") {
    return "You Win!";
  } else { 
    return "Computer Wins!";
  }
}

void main() {
  while(true) {  
    print('Papel Gunting Bato');
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") {
      return;  
    }
    
    print("You played $playerMove");
      String computerMove = getComputerMove();
      print("Computer played $computerMove");
      print(whoWon(playerMove, computerMove));
  }
}