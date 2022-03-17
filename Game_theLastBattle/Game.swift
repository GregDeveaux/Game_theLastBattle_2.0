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
    
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
    
    
    
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
//
//        let player1Perso1 = player1.teamOfPlayer1["Perso1"]!
//        let player1Perso2 = player1.teamOfPlayer1["Perso2"]!
//        let player1Perso3 = player1.teamOfPlayer1["Perso3"]!
//
//        let player2Perso1 = player2.teamOfPlayer2["Perso1"]!
//        let player2Perso2 = player2.teamOfPlayer2["Perso2"]!
//        let player2Perso3 = player2.teamOfPlayer2["Perso3"]!
//
//        print("""
//
//            ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
//            –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
//
//               The team 1 is composed of :
//                • a \(player1Perso1.currentType), his name is \(player1Perso1.name) and have \(player1Perso1.lifepoint) of lifepoint, \(player1Perso1.heal) of heal, \(player1Perso1.powerAttack) of attack power.
//                • a \(player1Perso2.currentType), his name is \(player1Perso2.name) and have \(player1Perso2.lifepoint) of lifepoint, \(player1Perso2.heal) of heal, \(player1Perso2.powerAttack) of attack power.
//                • a \(player1Perso3.currentType), his name is \(player1Perso3.name) and have \(player1Perso3.lifepoint) of lifepoint, \(player1Perso3.heal) of heal, \(player1Perso3.powerAttack) of attack power.
//
//
//               The team 2 is composed of :
//                • a \(player2Perso1.currentType), his name is \(player2Perso1.name) and have \(player2Perso1.lifepoint) of lifepoint, \(player2Perso1.heal) of heal, \(player2Perso1.powerAttack) of attack power.
//                • a \(player2Perso2.currentType), his name is \(player2Perso2.name) and have \(player2Perso2.lifepoint) of lifepoint, \(player2Perso2.heal) of heal, \(player2Perso2.powerAttack) of attack power.
//                • a \(player2Perso3.currentType), his name is \(player2Perso3.name) and have \(player2Perso3.lifepoint) of lifepoint, \(player2Perso3.heal) of heal, \(player2Perso3.powerAttack) of attack power.
//
//            –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
//            ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
//
//        """)
//
//
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
        
    }

}
