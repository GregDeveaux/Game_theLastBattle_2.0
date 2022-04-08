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
    
    // Creation of 2 players with one Guild name
    var player1 = Player()
    var player2 = Player()
    
    // fighters currently in the guild
    var fightersInGuild = 0
    
    // number of round in the game
    var round = 0

    
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
        
        print("""
            Once upon a time a big king loved of whole kigdom...
            """)

    }

    
    
    // Message explaining the creation of the guild, nominative per each player
    func messageForCreateGuild(of guild: Player) {

        print ("""
                
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
                                   🌑🌑🌑🌑🌑🌒🌓🌔🌕🌕🌕🌕🌕  WELCOME TO THE GUILD "\(guild.name.uppercased())"  🌕🌕🌕🌕🌕🌕🌖🌗🌘🌑🌑🌑🌑🌑
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

            You have to choose 3 fighters in the list (you can take same or different).
            For that you select the number corresponding to the type of fighter desired and the you give him a name:
              
            \(Wizard().description)
              
            \(Warrior().description)
              
            \(Dwarf().description)
              
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


        """)
        print(Guild.MessageCurrentChoice.first.rawValue)
    }
    
    
    
    func summaryKindInGuild(of player: Player) {
    print("""
          
          Kudos!
          Your guild \(player.name) is composed of a \(player.guild.fighters[0].currentType), a \(player.guild.fighters[1].currentType) and a \(player.guild.fighters[2].currentType).
          Good choice, may the force to be with you!

          """)
    
    }
    
    
    
    
    // Creation of the Guild of each player
    
    func createTheGuilds() {
        player1.EnterTheNameOfGuild(guildPlayer: 1, nameDifferent: player2)
        messageForCreateGuild(of: player1)
        player1.guild.selectFighters()
        summaryKindInGuild(of: player1)
        player2.EnterTheNameOfGuild(guildPlayer: 2, nameDifferent: player1)
        messageForCreateGuild(of: player2)
        player2.guild.selectFighters()
        summaryKindInGuild(of: player2)
    }
    

    
    // Call the informations from different teams for present at players
    
    func presentationGuilds() {
        print("""
              
                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 •––•––•––––––––––––––––––––––––––––•                SUMMARY                 •––––––––––––––––––––––––––––•––•––•
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)
        print("   The guild \(player1.name.uppercased()) is composed of :")
        player1.guild.fighters.forEach {
            print("      • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        
        print("")
        print("   The guild \(player2.name.uppercased()) is composed of :")
        player2.guild.fighters.forEach {
            print("     • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        

        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)


    }
    
    
    
    
    
    func selectAttackOrHeal(activePlayer: Player, inactivePlayer: Player) /* -> (totalDamages: Int, totalHeals: Int)*/ {

        print("""
              Guild \(activePlayer.name), you can choose one action in the list:
              - select A -> to attack the fighter enemy.
              - select H -> to heal the fighter companion.
        """)
        
        if let selectedAction = readLine()?.uppercased() {
            switch selectedAction {
            case "A":
                print("You have decided to attack")
                let numberOfAttacker = activePlayer.guild.chooseTheFighter(in: "your guild", of: activePlayer)          // we recover the number of attacker fighter in the list
                let numberOfEnemy = inactivePlayer.guild.chooseTheFighter(in: "the enemy guild", of: inactivePlayer)    // we recover the number of enemy fighter in the list
                let attacker = activePlayer.guild.fighters[numberOfAttacker]                                            // we give at attacker his indice
                var enemy = inactivePlayer.guild.fighters[numberOfEnemy]                                                // we give at enemy his indice
                
                let beforeLifepointEnnemy = enemy.lifepoint                                                             // we record the lifepoint before to the explanation to attack
                var totalDamages: Int = 0 {                                                                             // property to calculate the sum of damages
                    didSet {
                        totalDamages += attacker.powerAttack
                    }
                }
                
                enemy.lifepoint -= attacker.powerAttack                                                                 // the enemy lose the lifepoint because of the weapon power
                
                if enemy.lifepoint <= 0 {
                    enemy.lifepoint = 0
                    print("☠️ Oh no! \(enemy.name) your \(enemy.currentType) not have surviving ☠️")
                }
                
                inactivePlayer.guild.fighters[numberOfEnemy].lifepoint = enemy.lifepoint                                // we save the remaining lifepoint of chosen fighter in the guild of inactive player
                
                print("""
                      \(attacker.name), your \(attacker.currentType) attack with \(attacker.powerAttack)
                      Your ennemy, \(enemy.name), had \(beforeLifepointEnnemy) before the attack, now he has left \(enemy.lifepoint)
                      
                      """)
                print (enemy.lifepoint)
                
//                return totalDamages
                
            case "H":
                print("You want heal the companion")
                let numberOfHealer = activePlayer.guild.chooseTheFighter(in: "your guild", of: activePlayer)                // we recover the number of healer fighter in the list
                var numberOfCompanion = activePlayer.guild.chooseTheFighter(in: "your companions", of: activePlayer)        // we recover the number of companion fighter in the list
                
                while numberOfHealer == numberOfCompanion {                                                                 // The healer cannot choose as hurt fighter
                    print(" ⚠️ you cannot care the healer, select another fighter, please ⚠️ ")
                    print("")
                    numberOfCompanion = activePlayer.guild.chooseTheFighter(in: "your companions", of: activePlayer)        // we recover the number of companion fighter in the list
                }
                
                let healer = activePlayer.guild.fighters[numberOfHealer]                                                    // we give at healer his indice
                var companion = activePlayer.guild.fighters[numberOfCompanion]                                              // we give at hurt companion his indice
                    
                let beforeLifepointCompanion = companion.lifepoint                                                          // we record the lifepoint before to the explanation to attack
                companion.lifepoint += healer.heal                                                                          // the hurt companion wins of lifepoint
                
                var totalHeals: Int = 0 {                                                                                   // property to calculate the sum of heals
                    didSet {
                        totalHeals += healer.heal
                    }
                }

                if companion.currentType == .wizard {
                    if companion.lifepoint >= Wizard().lifepoint {
                        companion.lifepoint = Wizard().lifepoint
                    }
                }
                else if companion.currentType == .warrior {
                    if companion.lifepoint >= Warrior().lifepoint {
                        companion.lifepoint = Warrior().lifepoint
                    }
                }
                else if companion.currentType == .dwarf {
                    if companion.lifepoint >= Dwarf().lifepoint {
                        companion.lifepoint = Dwarf().lifepoint
                    }
                }
                
                print("""
                      \(healer.name), your \(healer.currentType) heal with \(healer.heal)
                      \(companion.name), your companion had \(beforeLifepointCompanion) before the care, now he has \(companion.lifepoint)
                      
                      """)
                
                activePlayer.guild.fighters[numberOfCompanion].lifepoint = companion.lifepoint                       // we save the remaining lifepoint of chosen fighter in the guild of active player
                print (companion.lifepoint)
                
//                return totalHeals

            default:
                print(" ⚠️ Wrong letter, try again! ⚠️ ")
                print("select the letter A or H")
            }
        }
//        return (totalDamages, totalHeals)
    }
    
    
    
    // Start the fight with a loop until one whole team dead
    
    func goFight() {

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
            
            selectAttackOrHeal(activePlayer: player1, inactivePlayer: player2)          // the first player begins the round
            selectAttackOrHeal(activePlayer: player2, inactivePlayer: player1)          // the second player finishes the round

            if player1.guild.allFightersDead() {
                print("☠️☠️☠️ All Fighters are dead! ☠️☠️☠️")                          // we verify that all the fighters are dead in the guild of player 1
                print("\(player2.name) wins the game")                                  // if that the case, Player 2 wins the game
                print()
                break                                                                   // we exit of loop
            }
            else if player2.guild.allFightersDead() {
                print("☠️☠️☠️ All Fighters are dead! ☠️☠️☠️")                          // we verify that all the fighters are dead in the guild of player 2
                print("\(player1.name) wins the game")                                  // if that the case, Player 1 wins the game
                break                                                                   // we exit of loop
            }
            
            if round == 5 { // for test
                break
            }
        }
    }
    
    
    func selectPlayAgain() -> Bool {
        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
        var goNextGame = false
        // Ask the players, if they play a new game
        while !goNextGame {
            if let playAgain = readLine()?.uppercased() {
                switch playAgain {
                case "Y":
                    print("Play again")
                    goNextGame = true
                case "N":
                    print("Hasta la vista, Baby!")
                    goNextGame = false
                default:
                    print("⚠️ Wrong letter, try again! ⚠️ ")
                    print("select the letter Y or N")
                    goNextGame = false
                }
            }
        }
        return true
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
