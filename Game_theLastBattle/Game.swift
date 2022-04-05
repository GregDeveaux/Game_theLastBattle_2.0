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
    static var player1 = Player()
    static var player2 = Player()
    
   
    
    var round = 0  // number of round in the game

    
    
    
    // Creation of the Guild of each player
    
    func createTheGuilds() {
        Game.player1.EnterTheNameOfGuild(guild: 1)
        Game.player1.messageCreateGuild()
        Game.player1.selectFightersForTheGuild()
        Game.player2.EnterTheNameOfGuild(guild: 2)
        Game.player2.messageCreateGuild()
        Game.player2.selectFightersForTheGuild()
    }
    

    
    // Call the informations from different teams for present at players
    
    func presentationGuilds() {
        print("""
              
                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 •––•––•––––––––––––––––––––––––––––•                SUMMARY                 •––––––––––––––––––––––––––––•––•––•
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)
        print("   The guild \(Game.player1.name.uppercased()) is composed of :")
        Game.player1.guild.fighters.forEach {
            print("      • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        
        print("")
        print("   The guild \(Game.player2.name.uppercased()) is composed of :")
        Game.player2.guild.fighters.forEach {
            print("     • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        

        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)


    }
    
    
    // Start the fight with a loop until one whole team dead
    
    func goFight() {
        
        // create shortcut used to switch player in the round
        let activePlayer = Game.player1
        

        print("""
            
            
              XXXXXX  XX   XX  XXXXXX     XXXXXX  XXXX  XXXXXXX  XX   XX  XXXXXX     XXXXXX   XXXXXX  XXXXXXX  XXXX  XX   XX   XXXXX
                XX    XX   XX  XX         XX       XX   XX       XX   XX    XX       XX   XX  XX      XX        XX   XXX  XX  XX
                XX    XXXXXXX  XXXX       XXXX     XX   XX  XXX  XXXXXXX    XX       XXXXXX   XXXX    XX  XXX   XX   XX X XX   XXXX
                XX    XX   XX  XX         XX       XX   XX   XX  XX   XX    XX       XX   XX  XX      XX   XX   XX   XX  XXX      XX
                XX    XX   XX  XXXXXX     XX      XXXX  XXXXXXX  XX   XX    XX       XXXXXX   XXXXXX  XXXXXXX  XXXX  XX   XX  XXXXX

            
            """)
        
        // Quit loop when the whole fighters of one guild are dead
        while true {
            
            round += 1 // init round number 1
            print("||||||||||||||||||||||||||||||||||||||||||||||||||||| ROUND \(round) |||||||||||||||||||||||||||||||||||||||||||||||||||||")
            print("")
            
            for _ in 1...2 {                                                                                    // create loop to play the 2 players
                activePlayer.selectAttackOrHeal()                                                               // the first player begin the round
                activePlayer.switchPlayers(&Game.player1, &Game.player2)                                        // Next player plays
            }
            
            if Game.player1.guild.allFightersDead() {                         // we verify that all the fighters are dead in the guild of player 1
                print("\(Game.player2.name) wins the game")                                                     // if that the case, Player 2 wins the game
                break                                                                                           // we exit of loop
            }
            else if Game.player2.guild.allFightersDead() {                    // we verify that all the fighters are dead in the guild of player 2
                print("\(Game.player1.name) wins the game")                                                     // if that the case, Player 1 wins the game
                break                                                                                           // we exit of loop
            }
            
            if round == 5 { // for test
                break
            }
        }
    }
    
    
    // Stop fight, declare the winner and present the result of fight
    
    func gameOver() {
        print("""
            
            
              XXXXXXX    XXX    XX   XX  XXXXXX      XXXXX   XX     XX  XXXXX    XXXXXX
              XX       XX   XX  XXX XXX  XX         XX   XX  XX     XX  XX       XX   XX
              XX  XXX  XXXXXXX  XX X XX  XXXX       XX   XX   XX   XX   XXXX     XXXXXX
              XX   XX  XX   XX  XX   XX  XX         XX   XX    XX XX    XX       XX  XX
              XXXXXXX  XX   XX  XX   XX  XXXXXX      XXXXX      XXX     XXXXXXX  XX   XX

            
            """)
        // summary of the round
        print("TOTAL ROUND FOR THE BATTLE: \(round)")
        presentationGuilds()
    }
    
}
