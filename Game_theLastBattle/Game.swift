//
//  Game.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
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
            
            
            
            
            
             (☾☽)––.____                      ___.–--––.___                  ___.–--––.___
             |  |       ¯¯¯°––––._____.–––°¯¯¯             ¯¯°––_____.–––°¯¯¯             ¯¯°––_____.–––°¯¯¯/
             |  |                                                                                      ~_.–<=;
             |  |                                                                                           /
             |  |                                                                                           |
             |  |    𝑶𝑵𝑪𝑬 𝑼𝑷𝑶𝑵 𝑨 𝑻𝑰𝑴𝑬… A BIG KING 🤴 LOVED OF WHOLE KINGDOM ON THE VERGE OF DEATH…        |
             |  |    HE SUMMONED HIS BOTH CHILDS AND PROPOSED THEM TO REALIZE A TOURNAMENT OF FIGHT         /
             |  |    IN SWICH THEY WOULD CHOOSE A GUILD OF THREE FIGHTERS THAT THEY WILL RECRUIT         __L
             |  |    THE SAME DAY IN WHOLE THE VALLEY…                                                 -¯   |
             |  |                                                                                           |
             |  |    … AND THE WINNER TO THE LAST BATTLE, BEFORE THE KING DEATH, WILL BECAME                |
             |  |    THE NEW LEGACY PRINCE OR PRINCESS… 👑                                                  L
             |  |                                                                                            |
             |  |    … YOU ARE THE BOTH CHILDS AND "THE GAME" WILL GO BEGIN SOON.                            /
             |  |                                                                                           |
             |  |    GOOD LUCK! 🍀                                                                          ¦
             |  |                                                                                           |
             |  |                                                                                           /
             ĺ__ĺ––.___                     ____.––––.___                      __.––––.___          _.––~<=;
                      ¯¯¯°––––._____.–––°¯¯¯            ¯¯¯°––––._____.–––°¯¯¯           ¯¯¯°––––._____.__|
             
             
             You will soon be able to recruit your fighters in the Valley!
             But, before, you should be take a great name to your Guild
            
            """)
        

    }

    
    
    // Creation of the Guild of each player
    
    func createAllTheGuilds() {
        // Player 1
        player1.enterTheNameOfGuild(1, nameDifferent: player2)
        player1.guild.createGuild(of: player1)
        player1.guild.summaryKindInGuild(player1.name)
        
        // Player 2
        player2.enterTheNameOfGuild(2, nameDifferent: player1)
        player2.guild.createGuild(of: player2)
        player1.guild.summaryKindInGuild(player2.name)
    }
    
    
    // Call the informations from different teams for present at players
    
    func presentationGuilds() {
        print("""
              
                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 •––•––•–––––––––––––––––––––––•                SUMMARY OF GUILDS                 •–––––––––––––––––––––––•––•––•
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)
        print("  The guild \(player1.name.uppercased()) is composed of :")
        player1.guild.fighters.forEach {
            print("      • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        presentationGuildsWithCards(activePlayer: player1)
        
        print("")
        print("  The guild \(player2.name.uppercased()) is composed of :")
        player2.guild.fighters.forEach {
            print("     • a \($0.currentType), his name is \($0.name) and have \($0.lifepoint) of lifepoint, \($0.heal) of heal, \($0.powerAttack) of attack power.")
        }
        presentationGuildsWithCards(activePlayer: player2)

        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)


    }
    
    
    
    // Call the informations from different teams for present at players with the cards
    func presentationGuildsWithCards(activePlayer: Player) {
        
        let card = Cards()
        let allWizardsCards = [card.wizard1, card.wizard2, card.wizard3]
        let allWarriorsCards = [card.warrior1, card.warrior2, card.warrior3]
        let allDwarfsCards = [card.dwarf1, card.dwarf2, card.dwarf3]

        var cardfighter: [String] = []
        
        for fighter in activePlayer.guild.fighters {
            var number = 0
            if !fighter.dead {
                if fighter.currentType == .wizard {
                    cardfighter += allWizardsCards.filter({$0 == allWizardsCards[number]})
                }
                else if fighter.currentType == .warrior {
                    cardfighter += allWarriorsCards.filter({$0 == allWarriorsCards[number]})
                }
                else if fighter.currentType == .dwarf {
                    cardfighter += allDwarfsCards.filter({$0 == allDwarfsCards[number]})
                }
            } else {
                cardfighter[number].append(card.dead)
            }
                
                
                number += 1
        }
        
        print(card.showTheCards(fighter1: cardfighter[0], fighter2: cardfighter[1], fighter3: cardfighter[2]))
    }
    
    
      
    func selectAttackOrHeal(activePlayer: Player, inactivePlayer: Player) {
        var wrongLetter = false

        print("""
                Guild \(activePlayer.name), you can choose one action in the list:
                - select A -> to attack the fighter enemy.
                - select H -> to heal the fighter companion.
        """)
        repeat {
            if let selectedAction = readLine()?.uppercased() {
                switch selectedAction {
                case "A":
                    print("You have decided to attack")
                    // we recover the number of attacker fighter in the list
                    let numberOfAttacker = activePlayer.chooseTheFighter(in: "your guild", by: activePlayer, weapon: true)
                    
                    // we recover the number of enemy fighter in the list
                    let numberOfEnemy = inactivePlayer.chooseTheFighter(in: "the enemy guild", by: activePlayer, weapon: false)
                    
                    // we give at attacker his indice
                    let attacker = activePlayer.guild.fighters[numberOfAttacker]
                    
                    // we give at enemy his indice
                    var enemy = inactivePlayer.guild.fighters[numberOfEnemy]
                    
                    // we record the lifepoint before to the explanation to attack
                    let beforeLifepointEnnemy = enemy.lifepoint
                    
                    // calculate the sum of damages
                    activePlayer.guild.totalDamagesInfliged += attacker.powerAttack
                    
                    // the enemy lose the lifepoint because of the weapon power
                    enemy.lifepoint -= attacker.powerAttack
                    
//                    activePlayer.guild.fighters[numberOfAttacker].randomPowerWeapon(activePlayer.choisenYourWeapon(numberOfAttacker))
                    
                    // If lifepoint equal 0, the fighter is dead but the lifepoint can't be lower than 0
                    if enemy.lifepoint < 0 {
                        enemy.lifepoint = 0
                        print("☠️ Oh no! \(enemy.name) your \(enemy.currentType) not have surviving ☠️")
                    }
                    
                    // we save the remaining lifepoint of chosen fighter in the guild of inactive player
                    inactivePlayer.guild.fighters[numberOfEnemy].lifepoint = enemy.lifepoint

                    
                    // summary of attack
                    print("""
                          | \(attacker.name), your \(attacker.currentType) attack with \(attacker.nameWeapon) \(attacker.powerAttack)
                          |
                          | Your ennemy, \(enemy.name), had \(beforeLifepointEnnemy) before the attack, now he has left \(enemy.lifepoint)
                          |___________________________________________________________________________________________
                          
                          """)
                    wrongLetter = false
                    
                case "H":
                    print("You want heal the companion")
                    
                    // we recover the number of healer fighter in the list
                    let numberOfHealer = activePlayer.chooseTheFighter(in: "your guild", by: activePlayer, weapon: false)
                    
                    // we recover the number of companion fighter in the list
                    var numberOfCompanion = activePlayer.chooseTheFighter(in: "your companions", by: activePlayer, weapon: false)
                    
                    // The healer cannot choose as hurt fighter
                    while numberOfHealer == numberOfCompanion {
                        print(" ⚠️ you cannot care the healer, select another fighter, please ⚠️ ")
                        print("")
                        // we recover the number of companion fighter in the list
                        numberOfCompanion = activePlayer.chooseTheFighter(in: "your companions", by: activePlayer, weapon: false)
                    }
                    
                    // we give at healer his indice
                    let healer = activePlayer.guild.fighters[numberOfHealer]
                    
                    // we give at hurt companion his indice
                    var companion = activePlayer.guild.fighters[numberOfCompanion]
                    
                    // we record the lifepoint before to the explanation to attack
                    let beforeLifepointCompanion = companion.lifepoint
                    
                    // the hurt companion wins of lifepoint
                    companion.lifepoint += healer.heal
                    
                    activePlayer.guild.totalHealsOnYourCompanions += healer.heal

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
                    
                    // we save the remaining lifepoint of chosen fighter in the guild of active player
                    activePlayer.guild.fighters[numberOfCompanion].lifepoint = companion.lifepoint
                    print (companion.lifepoint)
                    wrongLetter = false
                    
                default:
                    print(" ⚠️ Wrong letter, try again! ⚠️ ")
                    print("select the letter A or H")
                    wrongLetter = true
                }
            }
        } while wrongLetter
    }
    
    
    func andTheWinnerIs(_ player: Player, looser: Player) {
        // we verify that all the fighters are dead in the guild of one player
        print("☠️☠️☠️ All Fighters are dead! ☠️☠️☠️")
        
        // if that the case, the other player wins the game
        print("\(player.name) wins the game")
        
        // summary damages infliged by looser
        print(" you inflicted \(player.guild.totalDamagesInfliged) at \(looser.name)")
        
        // summary damages infliged by looser
        print(" you healed \(player.guild.totalHealsOnYourCompanions) at your companions")
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
            
            // the first player begins the round
            selectAttackOrHeal(activePlayer: player1, inactivePlayer: player2)
            
            // the second player finishes the round
            selectAttackOrHeal(activePlayer: player2, inactivePlayer: player1)

            // if player 2 win
            if player1.guild.allFightersDead() {
                andTheWinnerIs(player2, looser: player1)
                break   // we exit of loop
            }
            // if player 1 win
            else if player2.guild.allFightersDead() {
                andTheWinnerIs(player1, looser: player2)
                break   // we exit of loop
            }
            
            if round == 5 { // for test
                break
            }
        }
    }
    
    
    func selectPlayAgain() -> Bool {
        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
        // Ask the players, if they play a new game
        while true {
            if let playAgain = readLine()?.uppercased() {
                switch playAgain {
                case "Y":
                    print("Play again")
                    return true

                case "N":
                    print("Hasta la vista, Baby!")
                    return false
                    
                default:
                    print("⚠️ Wrong letter, try again! ⚠️ ")
                    print("select the letter Y or N")
                }
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
        print(player1.guild.totalDamagesInfliged)
        print(player1.guild.totalHealsOnYourCompanions)
    }
    
}
