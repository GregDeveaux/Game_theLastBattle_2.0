//
//  Player.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation



// -----------------------------------------------------------------------------------------------------
// MARK: Class Player
// >>> Steps to différent actions of players
// -----------------------------------------------------------------------------------------------------

class Player {
    
    var name: String // create the players for dictionary
    
    var teamOfPlayer: [Guild] = [] // Array call each team of player
  
    
    init(name: String) {
        self.name = name
    }
    
    
    // Enter the name of team
    func EnterTheNameOfTeam() {
        print("Player 1, enter your team name")
        
        if let nameWrites = readLine() {
            name = nameWrites
            print("")
        }
    }
    
    
    
    func messageCreateTeam() {
        print ("""
                
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
                                                                🌑🌒🌓🌔🌕  𝑷𝑳𝑨𝒀𝑬𝑹 \(name)  🌕🌖🌗🌘🌑
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

              Welcome to the guild "\(name)"!
                     
              You must choose 3 characters in the list (same or different).
              Select the number corresponding to the type of character desired and give him a name:
                
      """)
                Team.wizard.description()
        print("")
                Team.warrior.description()
        print("")
                Team.dwarf.description()
        print("""
      
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

      """)
    
      
    }
    
    
    
    
    
    // Selection list of characters for the player of an integer between 1 and 3
        
    func selectCharactersForTheTeam() {
        
        while Team.currentSizeTeam <= Team.sizeMaxTeam {
            if let choiceCharacters = readLine(){
                
                switch choiceCharacters {
                case "1" :
                    print("Give him a name!")
                    teamOfPlayer.append(Team.wizard)
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You're selected a wizard.             <------
                       -----------------------------------------------------------------

                    """)
                    Team.currentSizeTeam += 1
                    
                case "2" :
                    print("Give him a name!")
                    teamOfPlayer.append(Team.warrior)
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You're selected a warrior.             <------
                       -----------------------------------------------------------------

                    """)
                    Team.currentSizeTeam += 1


                case "3" :
                    print("Give him a name!")
                    teamOfPlayer.append(Team.dwarf)
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You're selected a dwarf.             <------
                       -----------------------------------------------------------------

                    """)
                    Team.currentSizeTeam += 1


                default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
                }
            }
        }
        Team.currentSizeTeam = 0
    }
    
    
    //
    //            if i == 1 {
    //                print("""
    //
    //                      Kudos!
    //                      Your team is composed to a \(teamOfPlayer1["Perso1"]!.currentType), a \(teamOfPlayer1["Perso2"]!.currentType) and a \(teamOfPlayer1["Perso3"]!.currentType).
    //                      Good choice, may the force to be with you!
    //
    //                      """)
    //            } else {
    //                print("""
    //
    //                      Kudos!
    //                      Your team is composed to a \(teamOfPlayer2["Perso1"]!.currentType), a \(teamOfPlayer2["Perso2"]!.currentType) and a \(teamOfPlayer2["Perso3"]!.currentType).
    //                      Good choice, may the force to be with you!
    //
    //                      """)
    //            }
    //
    //
    //
    //        }
    //
    //    }
    //
    //

    //
    //
    //    // Count the characters dead in the team if all three is killed, the game is finish
    //
    //    func countCharactersDead(){
    //
    ////        for character in teamCharactersArray {
    ////            character =
    ////
    ////        }
    //
    //        }
    //
    //}
    //    }
    //
    //}
    //








        
    
    
    // Write the character name in the console
    
//    func writeNameForCharacter() {
//
//       if let newName = readLine() {
//
//            if Team.teamOfPlayer1.values.contains(where: ({ $0.name != newName })) && Team.teamOfPlayer2.values.contains(where: ({ $0.name != newName })) {
//                Characters.dwarf.name = newName
//
//            print("""
//
//                           -----------------------------------------------------------------
//                           --------------->        Your \(Team.teamOfPlayer1["Perso1"]!.currentType) is name \(Team.teamOfPlayer1["Perso1"]!.name)
//                           -----------------------------------------------------------------
//
//                """)
//
//            } else {
//                print("The name is already done, can you try again, please")
//            }
//        }
//
//    }
    
    
    
    
    // Select a fighter of your team to attack
    
    func chooseCharacterToFight() {
        
    }
    
    
    
    
    // Select a fighter of your team to heal
    
    func chooseCharacterToHeal() {
        
    }
    
   
    
    
    // Select one enemy character for an attack
    
    func selectEnemy() {
        
    }
    
   
    
    
    // Select one companion character for a care
    
    func selectCompanion(){
        
    }
    
    
    
    
    // begin a new battle
    
    func playAgain() {
        
    }
    
}
