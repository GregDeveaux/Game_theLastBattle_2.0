//
//  Guild.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
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

    // Used to create the guild with n fighters
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters
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
    
    
        
    
    // append fighters in the array guild of player
    func appendInGuild(kind: FighterProtocol) {
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
    
    
    
    func randomPowerWeapon(_ numberOfFighter: Int) {
        switch fighters[numberOfFighter].powerAttack {
        case 0:
            print("👎 completely failed, you messed up, you lose 5 point 👎")
            fighters[numberOfFighter].lifepoint -= 5
        case 1..<fighters[numberOfFighter].weapons[0].power:
            print("👍 it's not all that crazy, but it's OK 👍")
        case fighters[numberOfFighter].weapons[0].power :
            print("💪 Yeah baby yeah, you attack with divine power 💪")
        default:
            print("why not!")
        }
    }
    
    func choisenYourWeapon(_ numberOfFighter: Int) {
        var num = 1

        print("Select one of your fighter's weapons according to his characteristics")
        
        for weapon in fighters[numberOfFighter].weapons {
            print("\(num) • \(weapon.name), the possible damages are of \(weapon.power) and you can use \(weapon.numberUse) times")
            num += 1
        }
        
        if let choiceWeapon = Int(readLine()!) {
            switch choiceWeapon {
            case 1 :
                initNewWeapon(numberOfFighter: numberOfFighter, index: 1)
                
            case 2 :
                initNewWeapon(numberOfFighter: numberOfFighter, index: 2)

            case 3 :
                initNewWeapon(numberOfFighter: numberOfFighter, index: 3)

            default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
            }
        }
    }
    
    func initNewWeapon(numberOfFighter: Int, index: Int) {
        fighters[numberOfFighter].nameWeapon = fighters[numberOfFighter].weapons[index].name
        fighters[numberOfFighter].powerAttack = Int.random(in: 0...fighters[numberOfFighter].weapons[index].power)
        randomPowerWeapon(numberOfFighter)
        fighters[numberOfFighter].weapons[index].numberUse -= 1
        fighters[numberOfFighter].weapons = fighters[numberOfFighter].weapons.filter { $0.numberUse != 0 }
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
    
    
    
    
    

