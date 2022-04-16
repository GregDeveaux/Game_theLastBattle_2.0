//
//  Player.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
//

import Foundation



// -----------------------------------------------------------------------------------------------------
// MARK: Class Player
// >>> Steps to différent actions of players
// -----------------------------------------------------------------------------------------------------

class Player {
    
    // create the name player
    var name: String = ""
    
    // call each team array of player with maximun of 3 fighters
    var guild = Guild(sizeMaxFighters: 2)
    
    // fighters currently in the guild
    var fightersInGuild = 0
    
    // recording the names of fighters write by player if different
    static var stealTheNameOfAllFighters: Set<String>  = []

    
    // Enter the name of the guild
    func enterTheNameOfGuild(_ numberPlayer: Int, nameDifferent otherPlayer: Player) {
        print(">>> PLAYER \(numberPlayer), enter your Guild name")
        while name.isEmpty {
            if let nameWrites = readLine()?.uppercased() {
                if !nameWrites.isEmpty && nameWrites != otherPlayer.name {
                    name = nameWrites
                }
                else {
                    print("Please, enter the other Guild name, thanks")
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
    
    
    
    
       
    // Select one fighter in the list of kinds
    func selectYourFighters() {
        while fightersInGuild < guild.sizeMaxFighters {
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
        guild.fighters.append(kind)
        guild.fighters[fightersInGuild].name = giveNameToFighter(fightersInGuild)
        print("""
        
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        –––––>          You've selected a \(kind.currentType).
        –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––


        """)
        for fighter in guild.fighters {
            print(fighter.name)

        }
        fightersInGuild += 1
        messageSelectAgain(fightersInGuild)
    }
    
    
   
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    func giveNameToFighter(_ numberOfFighter: Int) -> String {
            
        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        while guild.fighters[numberOfFighter].name.isEmpty {
            if let nameFighterWrites = readLine()?.uppercased() {
                if !Player.stealTheNameOfAllFighters.contains(nameFighterWrites) {  // if the layer write a name already contains in the both team
                    print("⚠️ This name is already taken, please enter an other ⚠️")
                    guild.fighters[numberOfFighter].name = ""
                } else {
                    guild.fighters[numberOfFighter].name = nameFighterWrites
                    Player.stealTheNameOfAllFighters.insert(nameFighterWrites)
                }
            }
        }
        return guild.fighters[numberOfFighter].name
    }
    
    
    
    // Select a existing fighter in a guild
    func chooseTheFighter(in category: String, by player: Player, weapon: Bool) -> Int {
        var num = 1
        print("Guild \(player.name), Select the number of one of \(category)")
        var numberOfFighter = 0
        var isDead = true
        
        // We create a list of the fighters of the guild whether he's alive or dead
        for fighter in guild.fighters {
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
                if  numberOfFighter + 1 <= guild.sizeMaxFighters && guild.fighters[numberOfFighter].dead == true {
                    print(" this fighter is dead! Please, choose the another")
                    isDead = true
                }
                else if 1...guild.sizeMaxFighters ~= selectNumber {
                    print("you have selected your \(guild.fighters[numberOfFighter].currentType) \(guild.fighters[numberOfFighter].name) \(guild.fighters[numberOfFighter].dead)")
                    print("")
                    if weapon == true {
                        choisenYourWeapon(numberOfFighter)
                    }
                    isDead = false
                    return numberOfFighter
                }
            }
            print(" ⚠️ Wrong number, try again! ⚠️ ")
            print("Please select only a number between 1 and \(guild.sizeMaxFighters)")
                isDead = true
        }
        return numberOfFighter
    }
    
    
       
    func choisenYourWeapon(_ numberOfFighter: Int) {
        var num = 1

        print("Select one of your fighter's weapons according to his characteristics")
        
        for weapon in guild.fighters[numberOfFighter].weapons {
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
    
    
    func randomPowerWeapon(_ numberOfFighter: Int, _ index: Int) {
        switch guild.fighters[numberOfFighter].powerAttack {
        case 0:
            print("👎 completely failed, you messed up, you lose 5 point 👎")
            guild.fighters[numberOfFighter].lifepoint -= 5
        case 1..<guild.fighters[numberOfFighter].weapons[index].power:
            print("👍 it's not all that crazy, but it's OK 👍")
        case guild.fighters[numberOfFighter].weapons[index].power :
            print("💪 Yeah baby yeah, you attack with divine power 💪")
        default:
            print("why not!")
        }
    }
    
    
    func initNewWeapon(numberOfFighter: Int, index: Int) {
        guild.fighters[numberOfFighter].nameWeapon = guild.fighters[numberOfFighter].weapons[index].name
        guild.fighters[numberOfFighter].powerAttack = Int.random(in: 0...guild.fighters[numberOfFighter].weapons[index].power)
        randomPowerWeapon(numberOfFighter, index)
        guild.fighters[numberOfFighter].weapons[index].numberUse -= 1
        guild.fighters[numberOfFighter].weapons = guild.fighters[numberOfFighter].weapons.filter{ $0.numberUse != 0 }
    }
    
     
}
