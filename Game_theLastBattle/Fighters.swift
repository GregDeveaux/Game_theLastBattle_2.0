//
//  Fighter.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: Protocol FighterProtocol
// >>> General characteristics of fighter to join the team
// -----------------------------------------------------------------------------------------------------

protocol FighterProtocol {
    var currentType:    Kind            { get }         // Either wizard or warrior or dwarf
    var name:           String          { get set }     // Character name which must be unique and not yet used
    var lifepoint:      Int             { get set }     // Character lifepoint who is different depending on type
    var heal:           Int             { get }         // Character heal who is different depending on type
    var weapons:        [Weapon]        { get set }     // Array of weapons for each kind
    var nameWeapon:     String          { get set }     // Name of the weapon used
    var powerAttack:    Int             { get set }     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String          { get }         // Details of the fighter
}

extension FighterProtocol {
    
    // If a fighter has his lifepoint = 0, he's dead
    var dead: Bool {
        lifepoint == 0
    }
    
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    mutating func giveNameToFighter(different otherFighters: [FighterProtocol]) -> String {
        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        while name.isEmpty {
            if let nameCharacterWrites = readLine()?.uppercased() {
                if otherFighters.contains(where: ({$0.name == nameCharacterWrites})) {  // if the layer write a name already contains in the both team
                    print("⚠️ This name is already taken, please enter an other ⚠️")
                    name = ""
                } else {
                    name = nameCharacterWrites
                }
            }
        }
        return name
    }
    
    mutating func randomPowerWeapon(numberOfFighter: Int) {
        switch powerAttack {
        case 0:
            print("completely failed, you messed up, you lose 1 point")
            lifepoint -= 1
        case 1..<weapons[0].power:
            print("it's not all that crazy")
        default:
            print("Yeah baby yeah, you attack with divine power")
        }
    }
    
    mutating func choisenYourWeapon() {
        var num = 1

        print("Select one of your fighter's weapons according to his characteristics")
        
        for weapon in weapons {
            print("\(num) • \(weapon.name), the possibles damages are of \(weapon.power) and you can use \(weapon.numberUse) times")
            num += 1
        }
        if let choiceWeapon = Int(readLine()!) {
            switch choiceWeapon {
            case 1 :
                nameWeapon = weapons[0].name
                powerAttack = Int.random(in: 0...weapons[0].power)
                randomPowerWeapon(numberOfFighter: 0)
                weapons[0].numberUse -= 1
                weapons = weapons.filter { $0.numberUse != 0 }
            case 2 :
                nameWeapon = weapons[1].name
                powerAttack = Int.random(in: 0...weapons[1].power)
                randomPowerWeapon(numberOfFighter: 1)
                weapons[1].numberUse -= 1
                weapons = weapons.filter { $0.numberUse != 0 }
            case 3 :
                nameWeapon = weapons[2].name
                powerAttack = Int.random(in: 0...weapons[2].power)
                randomPowerWeapon(numberOfFighter: 2)
                weapons[2].numberUse -= 1
                weapons = weapons.filter { $0.numberUse != 0 }
            default:
                print(" ⚠️ Wrong number, try again! ⚠️ ")
                print(" Only used number 1, 2 and 3, please ")
            }
        }
    }
    
}



// -------------------------------------------------------------------------------------------------------
// MARK: Kind of Fighters
// >>> Gives its properties to the character
// -------------------------------------------------------------------------------------------------------

enum Kind: String {
    case wizard
    case warrior
    case dwarf
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Wizard
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

struct Wizard: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
        return "·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️ ›› lifepoint = \(lifepoint) ; ❤️‍🩹 ›› heal = \(heal) ; ⚔️ ›› weapons power to attack: from \(rain.power) to \(fireBall.power) )"  // Details of the fighter
    }
    
    // add 3 specific weapons for the wizards
    var rain = Weapon(nameWeapon: "Froggy rain", powerWeapon: 5, numberUse: 50)
    var staff = Weapon(nameWeapon: "Staff of power", powerWeapon: 15, numberUse: 3)
    var fireBall = Weapon(nameWeapon: "Fire ball", powerWeapon: 25, numberUse: 1)
        
    init() {
        self.currentType   = .wizard
        self.name          = ""
        self.lifepoint     = 75
        self.heal          = 25
        self.weapons       = [rain, staff, fireBall]
        self.nameWeapon    = rain.name
        self.powerAttack   = rain.power
    }
    
  
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Warrior
// >>> characteristics of warrior
// -------------------------------------------------------------------------------------------------------

struct Warrior: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
            return "·2· -> 🧝 Warrior : intelligent and agile swordsman, the best in category (❤️ ›› lifepoint = \(lifepoint) ; ❤️‍🩹 ›› heal = \(heal) ; ⚔️ ›› weapons power to attack: from \(oak.power) to \(sword.power) )"  // Details of the fighter
    }
    
    // add 3 specific weapons for the warriors
    var oak = Weapon(nameWeapon: "Oak stick", powerWeapon: 10, numberUse: 50)
    var shuriken = Weapon(nameWeapon: "Shuriken", powerWeapon: 20, numberUse: 3)
    var sword = Weapon(nameWeapon: "Sword \"Thunder of fire\"", powerWeapon: 30, numberUse: 1)
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .warrior
        self.name           = ""
        self.lifepoint      = 100
        self.heal           = 10
        self.weapons        = [oak, shuriken, sword]
        self.nameWeapon     = oak.name
        self.powerAttack    = oak.power
    }
    
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Dwarf
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

struct Dwarf: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
            return "·3· -> 🎅 Dwarf : his weapon is devastating and this hurt (❤️ ›› lifepoint = \(lifepoint) ; ❤️‍🩹 ›› heal = \(heal) ; ⚔️ ›› weapons power to attack: from \(volcano.power) to \(ax.power))"  // Details of the fighter
    }
    
    // add 3 specific weapons for the dwarves
    var volcano = Weapon(nameWeapon: "Volcano Slingshot", powerWeapon: 80, numberUse: 50)
    var hammer = Weapon(nameWeapon: "Hammer Dammer", powerWeapon: 30, numberUse: 3)
    var ax = Weapon(nameWeapon: "Ax \"Kiss of dragon\"", powerWeapon: 40, numberUse: 1)
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .dwarf
        self.name           = ""
        self.lifepoint      = 50
        self.heal           = 5
        self.weapons        = [volcano, hammer, ax]
        self.nameWeapon     = volcano.name
        self.powerAttack    = volcano.power
    }
  
}
