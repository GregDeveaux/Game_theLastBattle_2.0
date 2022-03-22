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
    
    var name: String = "" // create the players for dictionary
    
    var teamOfPlayer = Guild.init(sizeMaxFighters: 3)  //  call each team array of player with maximun of 3 fighters
    
  
    
    
    
    
    // Enter the name of the guild
    func EnterTheNameOfGuild(guild numberPlayer: Int) {
            print("Player \(numberPlayer), enter your team name")
        repeat {
            if let nameWrites = readLine() {
                if !nameWrites.isEmpty {
                    name = nameWrites
                } else {
                    print("Please, enter the Guild Name, thanks")
                }
            }
        } while name.isEmpty
        
    }
    
    
    
    func messageCreateGuild() {
        print ("""
                
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
                                                                🌑🌒🌓🌔🌕  GUILD : \(name.uppercased())  🌕🌖🌗🌘🌑
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

              Welcome to the guild "\(name.uppercased())"!
                     
              You must choose 3 characters in the list (same or different).
      
              Select the number corresponding to the type of character desired and give him a name:
                
      """)
//        print("           ·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️›› lifepoint=\(Wizard.lifepoint) ; ❤️‍🩹›› heal=\(Wizard.heal) ; ⚔️›› power of attack=\(Wizard.powerAttack))")
//        print("")
//                Warrior.init(description: <#T##String#>)
//        print("")
//                Dwarf.init(description: <#T##String#>)
        print("""
      
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

      """)
    
      
    }
    
    
    
    
    
    
    
    // Selection list of characters for the player of an integer between 1 and 3
        
    func selectCharactersForTheTeam() {
        
        teamOfPlayer.sizeMaxFighters = 3
        
        var currentSizeGuild = 1 // fighters currently in the guild

        while currentSizeGuild <= teamOfPlayer.sizeMaxFighters {
            if let choiceCharacters = readLine(){
                
                switch choiceCharacters {
                case "1" :
                    teamOfPlayer.guild.append(teamOfPlayer.wizard)
                    
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You've selected a wizard.             <------
                       -----------------------------------------------------------------

                    """)
                    currentSizeGuild += 1
                    
                case "2" :
                    teamOfPlayer.guild.append(teamOfPlayer.warrior)
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You've selected a warrior.             <------
                       -----------------------------------------------------------------

                    """)
                    currentSizeGuild += 1


                case "3" :
                    teamOfPlayer.guild.append(teamOfPlayer.dwarf)
                    print("""
                    
                       -----------------------------------------------------------------
                       ------>             You've selected a dwarf.             <------
                       -----------------------------------------------------------------

                    """)
                    currentSizeGuild += 1


                default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
                }
            }
        }
        
        // we notify the choices and that the guild is complete
        print("""

              Kudos!
              Your guild \(name) is composed of a \(teamOfPlayer.guild[0].currentType), a \(teamOfPlayer.guild[1].currentType) and a \(teamOfPlayer.guild[2].currentType).
              Good choice, may the force to be with you!

              """)
        
        currentSizeGuild = 1  // currentSize back to the initial value for start the creation of team 2
    }
    
    
                    
  
    
    
    
    
    
    
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
    
    
    
}
