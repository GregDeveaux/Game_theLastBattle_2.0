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
    
    var teamOfPlayer = Guild(sizeMaxFighters: 3)  //  call each team array of player with maximun of 3 fighters
    
    
    
    
    // Enter the name of the guild
    func EnterTheNameOfGuild(guild numberPlayer: Int) {
            print("Player \(numberPlayer), enter your team name")
        repeat {
            if let nameWrites = readLine() {
                if !nameWrites.isEmpty && nameWrites != Game.player1.name {
                    name = nameWrites
                } else {
                    print("Please, enter the other Guild Name, thanks")
                }
            }
        } while name.isEmpty
        
    }
    
    
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    func giveNameToFighter() -> String {
        
        // create shortcut for the way
        let guildPlayer1 = Game.player1.teamOfPlayer.guild
        let guildPlayer2 = Game.player2.teamOfPlayer.guild
        let allTheGuilds = guildPlayer1 + guildPlayer2

        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        var name = ""
        
        while name.isEmpty && name == name {
            if let nameCharacterWrites = readLine() {
                if allTheGuilds.contains(where: ({$0.name.lowercased() == nameCharacterWrites.lowercased()})) {  // if the layer write a name already contains in the both team
                    print("This name is already taken, please enter an other")
                    
                } else {
                    name = nameCharacterWrites.uppercased()
                }
            }
        }
        
        return name
    }
    
    
    
    // Message explaining the creation of the guild
    
    func messageCreateGuild() {

        print ("""
                
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
          🌑🌑🌑🌑🌑🌒🌓🌔🌕🌕🌕🌕🌕  WELCOME TO THE GUILD "\(name.uppercased())"  🌕🌕🌕🌕🌕🌕🌖🌗🌘🌑🌑🌑🌑🌑
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

              You must choose 3 characters in the list (same or different).
      
              Select the number corresponding to the type of character desired and give him a name:
      
              \(teamOfPlayer.wizard.description)
      
              \(teamOfPlayer.warrior.description)
      
              \(teamOfPlayer.dwarf.description)
      
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
          ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

      """)
    
      
    }
    
    
      
    
    
    
    // Selection list of characters for the player of an integer between 1 and 3
        
    func selectCharactersForTheTeam() {
        
        var FightersInGuild = 0 // fighters currently in the guild
        
//        enum CurrentChoice: String {
//            case two = "select two more fighters"
//            case one = "select a last fighter"
//        }
//
     

        while FightersInGuild < teamOfPlayer.sizeMaxFighters {
            if let choiceCharacters = readLine(){
                
                switch choiceCharacters {
                case "1" :
                    teamOfPlayer.guild.append(teamOfPlayer.wizard)
                    teamOfPlayer.guild[FightersInGuild].name = giveNameToFighter()

                    print("""
                    
                       ------>             You've selected a wizard.
                       -----------------------------------------------------------------
                       -----------------------------------------------------------------


                    """)
                    FightersInGuild += 1
                    
                case "2" :
                    teamOfPlayer.guild.append(teamOfPlayer.warrior)
                    teamOfPlayer.guild[FightersInGuild].name = giveNameToFighter()

                    print("""
                    
                       ------>             You've selected a warrior.
                       -----------------------------------------------------------------
                       -----------------------------------------------------------------

                    
                    """)
                    FightersInGuild += 1


                case "3" :
                    teamOfPlayer.guild.append(teamOfPlayer.dwarf)
                    teamOfPlayer.guild[FightersInGuild].name = giveNameToFighter()

                    print("""
                    
                       ------>             You've selected a dwarf.
                       -----------------------------------------------------------------
                       -----------------------------------------------------------------

                    """)
                    FightersInGuild += 1


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
        
        FightersInGuild = 0  // currentSize back to the initial value for start the creation of team 2
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
