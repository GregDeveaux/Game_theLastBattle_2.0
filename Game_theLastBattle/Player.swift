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
    var guild = Guild(sizeMaxFighters: 2)  //  call each team array of player with maximun of 3 fighters
    var fightersInGuild = 0 // fighters currently in the guild

    
    // Enter the name of the guild
    func EnterTheNameOfGuild(guild numberPlayer: Int) {
        print("Player \(numberPlayer), enter your team name")
        while name.isEmpty {
            if let nameWrites = readLine()?.uppercased() {
                if !nameWrites.isEmpty && nameWrites != Game.player1.name {
                    name = nameWrites
                }
                else {
                    print("Please, enter the other Guild Name, thanks")
                }
            }
        }
    }
    
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    func giveNameToFighter() -> String {
        
        // create shortcut for the way
        let guildPlayer1 = Game.player1.guild.fighters
        let guildPlayer2 = Game.player2.guild.fighters
        let allTheGuilds = guildPlayer1 + guildPlayer2

        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        var name = ""
        
        while name.isEmpty && name == name {
            if let nameCharacterWrites = readLine()?.uppercased() {
                if allTheGuilds.contains(where: ({$0.name == nameCharacterWrites})) {  // if the layer write a name already contains in the both team
                    print("This name is already taken, please enter an other")
                } else {
                    name = nameCharacterWrites
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

            You have to choose 3 fighters in the list (same or different).
            For that you select the number corresponding to the type of fighter desired and give him a name:
              
            \(Wizard().description)
              
            \(Warrior().description)
              
            \(Dwarf().description)
              
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


        """)
        print(MessageCurrentChoice.first.rawValue)
      
    }
    
      
    // message for choice other fighter
    enum MessageCurrentChoice: String {
        case first = "––> you can select your first fighter"
        case second = "––> you can select your second fighter"
        case last = "––> you can select your last fighter"
    }
    
    
    
    // Message for the seclection of fighter
    func messageSelectAgain(_ fightersInGuild: Int) {
        
        if fightersInGuild == 1 {
            print(MessageCurrentChoice.second.rawValue)
        }
        else if fightersInGuild == 2 {
            print(MessageCurrentChoice.last.rawValue)
        }
        else {
            print("""
                  
                  Kudos!
                  Your guild \(name) is composed of a \(guild.fighters[0].currentType), a \(guild.fighters[1].currentType) and a \(guild.fighters[2].currentType).
                  Good choice, may the force to be with you!

                  """)
        }
    }
    
    
    
    // append fighters in the array guild of player
    func appendInGuild(kind: FighterProtocol) {
        guild.fighters.append(kind)
        guild.fighters[fightersInGuild].name = giveNameToFighter()
        print("""
        
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        –––––>          You've selected a \(kind.currentType).
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––


        """)
        fightersInGuild += 1
        messageSelectAgain(fightersInGuild)
    }
    
    
    
    // Selection list of characters for the player of an integer between 1 and 3
    func selectFightersForTheGuild() {
        while fightersInGuild < guild.sizeMaxFighters {
            if let choiceCharacters = readLine(){
                switch choiceCharacters {
                case "1" :
                    appendInGuild(kind: Wizard())
                case "2" :
                    appendInGuild(kind: Warrior())
                case "3" :
                    appendInGuild(kind: Dwarf())
                default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
                }
            }
        }
    }
    
    
    
    // The active player is modified
    func switchPlayers(_ activePlayer: inout Player, _ defenderPlayer: inout Player) {
        let tmp = activePlayer   // we record a first active player
        activePlayer = defenderPlayer  // the defender player become the first player
        defenderPlayer = tmp  // the first player become the defender player
    }
    

    
    // Select a fighter in a guild
    func chooseTheFighter(_ inGuild: [FighterProtocol], in category: String) -> FighterProtocol {
        print("Select the number of one of your \(category)")
        var num = 1

        for fighter in inGuild {
            print("   \(num) • a \(fighter.currentType), his name is \(fighter.name) and have \(fighter.lifepoint) of lifepoint, \(fighter.heal) of heal, \(fighter.powerAttack) of attack power.")
            num += 1
        }
        
        var numberOfFighter = 0
        var activeFighter = inGuild[numberOfFighter]
        
        while numberOfFighter + 1 <= guild.sizeMaxFighters {
            if let selectNumber = Int(readLine()!) {
                if 1...guild.sizeMaxFighters ~= selectNumber {
                    numberOfFighter = selectNumber - 1
                    activeFighter = inGuild[numberOfFighter]
                    print("you have selected your \(activeFighter.currentType) \(activeFighter.name)")
                    print("")
                    return activeFighter
                    }
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                for numRange in 1...guild.sizeMaxFighters {
                    print(" Only used \(numRange), please ")
                }
            }
        }
        return activeFighter
    }
    
    
    func selectAttackOrHeal() {
        print("""
              Guild \(Game.player1.name), you can choose one action in the list:
              - select A -> to attack the fighter enemy.
              - select H -> to heal the fighter companion.
        """)
        
        if let selectedAction = readLine()?.uppercased() {
            switch selectedAction {
            case "A":
                print("You have decided to attack")
                let attacker = chooseTheFighter(Game.player1.guild.fighters, in: "companions") // player selects a fighter in his guild who attacks
                var enemy = chooseTheFighter(Game.player2.guild.fighters, in: "enemies") // player selects a fighter in opposing guild who suffers damage
                enemy.loseLife(attacker: attacker, enemy: &enemy)
                print (enemy.lifepoint)
            case "H":
                print("You want heal the companion")
                let healer = chooseTheFighter(Game.player1.guild.fighters, in: "companions") // player selects a fighter in his guild who heals his companion
                var companion = chooseTheFighter(Game.player1.guild.fighters, in: "companions") // player selects a fighter in his guild to heal
                companion.winLife(healer: healer, companion: &companion)
            default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print("select the letter A or H")
            }
        }
    }
    
    
    
    
    
    static func selectPlayAgain() -> Bool {
        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
        var goNextGame = false
        // Ask the players, if they play a new game
        while !goNextGame {
            if let playAgain = readLine()?.uppercased() {
                switch playAgain {
                case "Y":
                    print("Play again")
                    Game.player1.guild.fighters.removeAll()  // reset the guild player1
                    Game.player2.guild.fighters.removeAll()  // reset the guild player2
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
        
    
    
}
