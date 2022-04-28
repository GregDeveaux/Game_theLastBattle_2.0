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
    var guild = Guild(sizeMaxFighters: 3)
    
    // fighters currently in the guild
    var fightersInGuild = 0
    
    // recording the names of fighters write by player if different
    static var stealTheNameOfAllFighters: Set<String>  = []

    // recover the index of the weapon choicen to display the random text
    var textRandomWeapon = ""
    
    // Enter the name of the guild
    func enterTheNameOfGuild(_ numberPlayer: Int, nameDifferent otherPlayer: Player) {
        print(" \n–⌽–> PLAYER \(numberPlayer), enter your Guild name")
        
        while name.isEmpty {
            if let nameWrites = readLine() {
                if !nameWrites.isEmpty && nameWrites.uppercased() != otherPlayer.name {
                    name = nameWrites.uppercased()
                }
                else {
                    print(" ⚠️ Please, enter the other Guild name, thanks ⚠️")
                }
            }
        }
    }
    
    
    
        // message for choice other fighter
    enum MessageCurrentChoice: String {
        case first = " –⌽–> You can select your first fighter"
        case second = " –⌽–> You can select your second fighter"
        case last = " –⌽–> You can select your last fighter"
    }
    
    
    
        // Message for the seclection of fighter
    func messageSelectAgain(_ fightersInGuild: Int) {
        
        if fightersInGuild == 0 {
            print(MessageCurrentChoice.first.rawValue)
        }
        else if fightersInGuild == 1 {
            print(MessageCurrentChoice.second.rawValue)
        }
        else if fightersInGuild == 2 {
            print(MessageCurrentChoice.last.rawValue)
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
        
         ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
           You've selected a \(kind.currentType) that you named: \(guild.fighters[fightersInGuild].name).
         ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        
        
        """)
        
        fightersInGuild += 1
        messageSelectAgain(fightersInGuild)
    }
    
    
    
        // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    func giveNameToFighter(_ numberOfFighter: Int) -> String {
        
            // Text for name request
        print(" \n–⌽–> Give him a name!")
        
            // call an empty variable for the integration of the fighter name
        while guild.fighters[numberOfFighter].name.isEmpty {
            
            if let nameFighterWrites = readLine() {
                
                let nameFighter = nameFighterWrites.uppercased()
                
                    // if the layer write a name already contains in the both team
                if Player.stealTheNameOfAllFighters.contains(nameFighter) {
                    print(" ⚠️ This name is already taken, please enter an other ⚠️")
                    guild.fighters[numberOfFighter].name = ""
                } else {
                    guild.fighters[numberOfFighter].name = nameFighter
                    Player.stealTheNameOfAllFighters.insert(nameFighter)
                }
            }
        }
        return guild.fighters[numberOfFighter].name
    }
    
    
    
        // Select a existing fighter in a guild
    func chooseTheFighter(of category: String, by player: Player, weapon: Bool) -> Int {
        var num = 1
        
        print(" –⌽–> Guild \(player.name), Select the number of one of \(category)")
        
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
        
            
            // We choise the fighter in the list by his number (not possible if he's dead)
        while isDead == true  {
            if let selectNumberString = readLine() {
                
                if let selectNumber = Int(selectNumberString) {
                    numberOfFighter = selectNumber - 1
                    
                    if  numberOfFighter + 1 <= guild.sizeMaxFighters && guild.fighters[numberOfFighter].dead == true {
                        print(" –⌽–> this fighter is dead! Please, choose the another")
                        isDead = true
                    }
                    else if 1...guild.sizeMaxFighters ~= selectNumber {
                        print(" \n–⌽–> you have selected your \(guild.fighters[numberOfFighter].currentType) \(guild.fighters[numberOfFighter].name)\n")
                        
                        if weapon == true {
                            choisenYourWeapon(numberOfFighter)
                        }
                        isDead = false
                        return numberOfFighter
                    }
                }
            }
            print(" ⚠️ Wrong number, try again! ⚠️ ")
            print(" –⌽–> Please reselect a valid number between 1 and \(guild.sizeMaxFighters)")
            isDead = true
        }
        return numberOfFighter
    }
    

       
    
    
    func choisenYourWeapon(_ numberOfFighter: Int) {
        var num = 0
        var weapon = false
        
        print(" –⌽–> Select your WEAPON, be careful, you are not sure to hit the enemy… Luck will play its part 🤞🍀 ")
        
        for weapon in guild.fighters[numberOfFighter].weapons {
            num += 1
            print("    \(num) • \(weapon.name), the possible damages are of \(weapon.power) and you can use \(weapon.numberUse) times")
        }
        
        // the player chooses the weapon
        while !weapon {
            if let choiceWeaponString = readLine() {
                if let choiceWeapon = Int(choiceWeaponString) {
                    if choiceWeapon <= num && choiceWeapon > 0 {
                        initNewWeapon(numberOfFighter: numberOfFighter, index: choiceWeapon - 1)
                        weapon = true
                    } else {
                        print(" ⚠️ Wrong number, try again! ⚠️ ")
                        weapon = false
                    }
                }
            }
        }
    }
    
    
        // after its selection, we initialize the new chosen weapon and we include a random luck to hit
    func initNewWeapon(numberOfFighter: Int, index: Int) {
        
            // we choose the weapon with the index then we modify weapon of fighter
        guild.fighters[numberOfFighter].nameWeapon = guild.fighters[numberOfFighter].weapons[index].name
        
            // we recover the powerAttack of the weapon for make it random (luck to hit the enemy)
        guild.fighters[numberOfFighter].powerAttack = Int.random(in: 0...guild.fighters[numberOfFighter].weapons[index].power)
        
            // we recover the funny text for explanation of success or not
        textRandomWeapon = guild.fighters[numberOfFighter].randomPowerWeaponMessage(index)
        
            // we delete one unity of the weapon
        guild.fighters[numberOfFighter].weapons[index].numberUse -= 1
        
            // we verify that the weapon unity are always OK otherwise we delete it of the list
        guild.fighters[numberOfFighter].weapons = guild.fighters[numberOfFighter].weapons.filter{ $0.numberUse != 0 }
    }
    
}
