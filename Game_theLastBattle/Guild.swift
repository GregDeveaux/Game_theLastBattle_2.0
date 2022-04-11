//
//  Guild.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: Class Guild
// >>> Creation of a team of 3 fighters
// -----------------------------------------------------------------------------------------------------

class Guild {
    
    var sizeMaxFighters: Int                        // number of fighters maximum for each team
    var fighters: [FighterProtocol] = []            // The guild is composed of 3 fighters
    var fightersInGuild = 0                         // fighters currently in the guild
    
    // Recover the damages of guild
    var totalDamagesInfliged = 0
    
    // Recover the heals of guild
    var totalHealsOnYourCompanions = 0

        
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters      // Used to create the guild with n fighters
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
    
    
    // Select one fighter in the list of kinds
    func selectYourFighters() {
        while fightersInGuild < sizeMaxFighters {
            if let choiceOfFighters = readLine(){
                switch choiceOfFighters {
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
    
    
    func namesOfAllFighters() -> [FighterProtocol] {
        var namesFighters: [FighterProtocol] = []
        namesFighters.append(contentsOf: fighters)
        return namesFighters
    }
    
    
    // append fighters in the array guild of player
    func appendInGuild(kind: FighterProtocol) {
        let allTheNamesOfFighters = namesOfAllFighters() // we register the all names fighters of game
        fighters.append(kind)
        fighters[fightersInGuild].name = fighters[fightersInGuild].giveNameToFighter(different: allTheNamesOfFighters)
        print("""
        
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        –––––>          You've selected a \(kind.currentType).
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––


        """)
        for fighter in fighters {
            print(fighter.name)

        }
        fightersInGuild += 1
        messageSelectAgain(fightersInGuild)
    }
    
    
    
    func summaryKindInGuild(_ name: String) {
        var listKindArray: [String] = []
        
        for fighter in fighters {
            let kind = fighter.currentType.rawValue
            listKindArray.append(kind)
        }
        
        let listKind = listKindArray.joined(separator: ", a ")

    
    print("""

          Kudos!
          Your guild \(name) is composed of a \(listKind)

          """)
    
    }
    
    
    
    // Select a existing fighter in a guild
    func chooseTheFighter(in category: String, by player: Player) -> Int {
        var num = 1
        print("Guild \(player.name), Select the number of one of \(category)")
        var numberOfFighter = 0
        var isDead = true
        
        // We create a list of the fighters of the guild whether he's alive or dead
        for fighter in fighters {
            if fighter.dead == false {
                print("   \(num) • a \(fighter.currentType), his name is \(fighter.name) and have \(fighter.lifepoint) of lifepoint, \(fighter.heal) of heal and a weapon \(fighter.nameWeapon) with \(fighter.powerAttack) of attack power.")
            } else {
                print("   \(num) • ☠️ ☠️ your \(fighter.currentType) \(fighter.name) can no longer be selected ☠️ ☠️")
            }
            num += 1
        }
        
        while isDead == true  {
            if let selectNumber = Int(readLine()!) {
                numberOfFighter = selectNumber - 1
                 if  numberOfFighter + 1 <= sizeMaxFighters && fighters[numberOfFighter].dead == true {
                    print(" this fighter is dead! Please, choose the another")
                    isDead = true
                }
                else if 1...sizeMaxFighters ~= selectNumber {
                    print("you have selected your \(fighters[numberOfFighter].currentType) \(fighters[numberOfFighter].name) \(fighters[numberOfFighter].dead)")
                    print("")
                    fighters[numberOfFighter].choisenYourWeapon()
                    isDead = false
                    return numberOfFighter
                }
            }
            print(" ⚠️ Wrong number, try again! ⚠️ ")
            print("Please select only a number between 1 and \(sizeMaxFighters)")
                isDead = true
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
    
    
    
    
    

