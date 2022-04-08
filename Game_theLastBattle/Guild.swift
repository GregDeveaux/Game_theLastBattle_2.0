//
//  Guild.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: Struct Team
// >>> Creation of a team of 3 fighters
// -----------------------------------------------------------------------------------------------------

class Guild {
    
    var sizeMaxFighters: Int                        // number of fighters maximum for each team
    var fighters: [FighterProtocol] = []            // The guild is composed of 3 fighters
    var fightersInGuild = 0                         // fighters currently in the guild

    
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters      // Used to create the guild with n fighters
    }
    
   
    
    // Selection list of characters for the player of an integer between 1 and 3
    func selectFighters() {
        while fightersInGuild < sizeMaxFighters {
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
            
        }
    }
    
    
    
    // append fighters in the array guild of player
    func appendInGuild(kind: FighterProtocol) {
        fighters.append(kind)
        fighters[fightersInGuild].name = fighters[fightersInGuild].giveNameToFighter()
        print("""
        
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        –––––>          You've selected a \(kind.currentType).
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––


        """)
        fightersInGuild += 1
        messageSelectAgain(fightersInGuild)
    }
    
    
    // Select a existing fighter in a guild
    func chooseTheFighter(in category: String, of player: Player) -> Int {
        print("Guild \(player.name), Select the number of one of \(category)")
        var num = 1
        var numberOfFighter = 0
        let selectFighter = player.guild.fighters[numberOfFighter]
        var isDead = selectFighter.dead
        
        for fighter in fighters {
            if fighter.dead == false {
                print("   \(num) • a \(fighter.currentType), his name is \(fighter.name) and have \(fighter.lifepoint) of lifepoint, \(fighter.heal) of heal and \(fighter.powerAttack) of attack power.")
            } else {
                print("   \(num) • ☠️ ☠️ \(fighter.name) your \(fighter.currentType) not have surviving ☠️ ☠️")
            }
            num += 1
        }
        
        while numberOfFighter + 1 <= sizeMaxFighters && !isDead {
            if let selectNumber = Int(readLine()!) {
                if 1...sizeMaxFighters ~= selectNumber {
                    numberOfFighter = selectNumber - 1
                    print("you have selected your \(selectFighter.currentType) \(selectFighter.name)")
                    print("")
                    isDead = false
                    return numberOfFighter
                 }
                else if selectFighter.dead == true {
                    print(" this fighter is dead! Please, choose the another")
                    isDead = true
                }
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                for numRange in 1...sizeMaxFighters {
                    print(" Only used \(numRange), please ")
                }
            }
        }
        return numberOfFighter
    }
    
    
    // we verify that all fighters of the guild is dead then we return the value
    func allFightersDead() -> Bool {
        var totalDead = 0
        for fighter in fighters {
            if fighter.dead {
                totalDead += 1
            }
        }
        return totalDead == sizeMaxFighters
    }
    
    
}

