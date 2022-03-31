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
            if let nameWrites = readLine() {
                if !nameWrites.isEmpty && nameWrites.lowercased() != Game.player1.name.lowercased() {
                    name = nameWrites
                }
            }
            print("Please, enter the other Guild Name, thanks")
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
              
            \(guild.wizard.description)
              
            \(guild.warrior.description)
              
            \(guild.dwarf.description)
              
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
                    appendInGuild(kind: guild.wizard)
                case "2" :
                    appendInGuild(kind: guild.warrior)
                case "3" :
                    appendInGuild(kind: guild.dwarf)
                default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
                }
            }
        }
    }
    
    
    
    // Select a fighter in a guild
    func chooseTheFighter(_ inGuild: [FighterProtocol]) -> FighterProtocol {
        print("Select the number of your fighter")
        var num = 1

        for fighter in inGuild {
            print("   \(num) • a \(fighter.currentType), his name is \(fighter.name) and have \(fighter.lifepoint) of lifepoint, \(fighter.heal) of heal,\(fighter.powerAttack) of attack power.")
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
    
    
    
    func goAttack(with attacker: FighterProtocol, on defender: FighterProtocol) {
        attackTheEnnemy(powerAttackFighter: attacker.powerAttack, lifepointEnnemy: defender.lifepoint)
    }
    
    
    func goHeal(healer: FighterProtocol, hurter: FighterProtocol) {
        let healer = chooseTheFighter(Game.player1.guild.fighters)
        let hurter = chooseTheFighter(Game.player1.guild.fighters)
        healMyCompanion(healCharacter: healer.heal, lifepointCompanion: hurter.lifepoint)
    }
    
    
    
    func selectAttackOrHeal() -> String {
        let attack = "A"
        let heal = "H"
        if let selectedAction = readLine() {
            switch selectedAction {
            case "A":
                print("You have decided to attack")
                return goAttack(attacker: FighterProtocol, defender: <#T##FighterProtocol#>)
            case "H":
                print("You want heal the companion")
                return goHeal(healer: <#T##FighterProtocol#>, hurter: <#T##FighterProtocol#>)
            default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
            }
        }
        return ""
    }
    
    
    
    static func selectPlayAgain() -> Bool {
        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
        // Ask the players, if they play a new game
        if let playAgain = readLine() {
            switch playAgain {
            case "y":
                print("Play again")
                Game.player1.guild.fighters.removeAll()  // reset the guild player1
                Game.player2.guild.fighters.removeAll()  // reset the guild player1
                return true
            case "n":
                print("Hasta la vista, Baby!")
            default:
                print("⚠️ Wrong letter, try again! ⚠️ ")
            }
        }
        return false
    }
    
    
}
