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
    
    func createTheGuild() {
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

                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––

              """)
        print("   The guild \(Game.player1.name.uppercased()) is composed of :")
        Game.player1.guild.fighters.forEach {
            print("      • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal,\($0.powerAttack) of attack power.")
        }
        
        print("")
        print("   The guild \(Game.player2.name.uppercased()) is composed of :")
        Game.player2.guild.fighters.forEach {
            print("     • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal,\($0.powerAttack) of attack power.")
        }
        

        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)


    }
    
        
    
    // Start the fight with a loop until one whole team dead
    
    func goFight() {
        
        // create shortcut for the way of both guilds
        let player1 = Game.player1
        let player2 = Game.player2
        let inGuildPlayer1 = player1.guild.fighters
        let inGuildPlayer2 = player2.guild.fighters
        
        
//        if player1 {
//            activeplayer = true
//        } if else player2 {
//            activeplayer = false
//        }
        

        print("""
            
            3...
            2...
            1...
            FIIIIIGHT !
            
            """)
        
        // Quit loop when the whole fighters of one guild are dead
        while Guild.allFightersDead(inGuildPlayer1) || Guild.allFightersDead(inGuildPlayer2) {
            round += 1 // init round number 1
            print("||||||||||||||||||||||||| ROUND \(round) |||||||||||||||||||||||||")
            print("""
                      
                \(Game.player1.name) selected a fighter in the guild, please
                """)
            let inGuild = inGuildPlayer1
            let attacker = Game.player1.chooseTheFighter(inGuild) // player selects a fighter in his guild who attacks
            let defender = Game.player1.chooseTheFighter(inGuild) // player selects a fighter in opposing guild who suffers damage
            Game.player1.goAttack(with: attacker, on: defender)   // Action et result of lifepoints of the enemy
            
//            toggle()

//            selectAttackOrHeal()
 
//            activeplayer.toogle()
            
            if round == 10 { // for test
                break
            }
        }
        
        }
    
    
    // Stop fight, declare the winner and present the result of fight
    
    func gameOver() {
        print("GAME OVER")
        print("TOTAL ROUND FOR THE BATTLE: \(round)")
        presentationGuilds()
    }
    
}
