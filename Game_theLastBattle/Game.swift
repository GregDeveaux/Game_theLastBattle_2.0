//
//  Game.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: - Classe Game
// >>> Step to play with the "Game"
// -----------------------------------------------------------------------------------------------------

class Game {
    
    // Message that introduces the game
    func welcomeMessage() {
        
        print("""
            
            
                              ····                                           ····                                                ····
                           ···••••···                                     ···••••···                                          ···••••···
                           ···••••···                                     ···••••···                                          ···••••···
                       ·····••••••••·····                             ·····••••••••·····                                  ·····••••••••·····
                       ·····••••••••·····                             ·····••••••••·····                                  ·····••••••••·····
              |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
              |—————————————————————————————————⌘    ⌽———⌽———⌽    Welcome to the last battle    ⌽———⌽———⌽    ⌘——————————————————————————————————————|
              |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
              |                                                                                                                                     |
              |                                                                                                                                     |
              |                                        XXXXXXXXXXXXXX          XXXXXXXXXXX        XXXXXX         XXXXXX     XXXXXXXXXXXXXXXXX       |
              |       ————————————————————————        XXXXXXXXXXXXXXXX        XXXXXXXXXXXXX       XXXXXXX       XXXXXXX     XXXXXXXXXXXXXXXXX       |
              |       ————————————————————————       XXX            XXX      XXX         XXX      XXX  XXX     XXX  XXX     XXX                     |
              |                                      XXX            XXX     XXX           XXX     XXX   XXX   XXX   XXX     XXX                     |
              |       XXXXXX   XX  XX   XXXXXX       XXX                    XXX           XXX     XXX    XXX XXX    XXX     XXX                     |
              |         XX     XX  XX   XX           XXX                    XXX           XXX     XXX     XXXXX     XXX     XXXXXXXXX               |
              |         XX     XXXXXX   XXXX         XXX        XXXXXXX     XXXXXXXXXXXXXXXXX     XXX      XXX      XXX     XXXXXXXXX               |
              |         XX     XX  XX   XX           XXX        XXXXXXX     XXXXXXXXXXXXXXXXX     XXX               XXX     XXX                     |
              |         XX     XX  XX   XXXXXX       XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
              |                                      XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
              |       ————————————————————————       XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
              |       ————————————————————————        XXXXXXXXXXXXXXXX      XXX           XXX     XXX               XXX     XXXXXXXXXXXXXXXXX       |
              |                                        XXXXXXXXXXXXXX       XXX           XXX     XXX               XXX     XXXXXXXXXXXXXXXXX       |
              |                                                                                                                                     |
              |                                                                                                                                     |
              |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
              |————————————————————————————————————————      oº°·.• OpenClassRooms - Project 3 •.·°ºo      —————————————————————————————————————————|
              |——————————————————————————————————————————— — - ·  –⌽– Created by Greg Deveaux –⌽–  · - — ———————————————————————————————————————————|
              |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
                       ·····••••••••·····                              ·····••••••••·····                                 ·····••••••••·····
                       ·····••••••••·····                              ·····••••••••·····                                 ·····••••••••·····
                           ···••••···                                      ···••••···                                         ···••••···
                              ·••·                                            ·••·                                               ·••·
                              ····                                            ····                                               ····
            
            
            """)
        
    }
    
    
    
    // Creation of 2 players with one name for the team
    
    var player1 = Player()
    var player2 = Player()
    
    var player1Team = player1.teamOfPlayer.guild
    var player2Team = player2.teamOfPlayer.guild
    
    
    // Creation of the Guild of each player
    
    func createTheGuild() {
            player1.EnterTheNameOfGuild(guild: 1)
            player1.messageCreateGuild()
            player1.selectCharactersForTheTeam()
            player2.EnterTheNameOfGuild(guild: 2)
            player2.messageCreateGuild()
            player2.selectCharactersForTheTeam()
    }
    

    
    // Call the informations from different teams for present at players
    
    func presentationTeams() {
        
        print("""

                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––

              """)
        print("   The guild \(player1.name.uppercased()) is composed of :")
        player1.teamOfPlayer.guild.forEach {
            print("      • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal,\($0.powerAttack) of attack power.")
        }
        
        print("")
        print("   The guild \(player2.name.uppercased()) is composed of :")
        player2.teamOfPlayer.guild.forEach {
            print("     • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal,\($0.powerAttack) of attack power.")
        }
        

        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)


    }
    
        
    
    // Start the fight with a loop until one whole team dead
    
    func goFight() {
        
        print("""
            3...
            2...
            1... FIGHT !
            """)
                    
        }
    
    
    // Stop fight, declare the winner and present the result of fight
    
    func gameOver() {
        print("GAME OVER")
        presentationTeams()

        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
//        let playAgain: String?
//
//        if let playAgain = readLine() {
//            repeat {
//
//                switch playAgain {
//                case "y":
//                    print("Play again")
//
//                case "n":
//                    print("Hasta la vista, Baby!")
//                    break
//
//                default:
//                    print("⚠️ Wrong letter, try again! ⚠️ ")
//                }
//            } while playAgain == "y" || playAgain == "n"
//
//        }
    }
}
