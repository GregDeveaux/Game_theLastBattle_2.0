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
    
    var currentType: Kind {get}// Either wizard or warrior or dwarf
    var name: String {get set} // Character name which must be unique and not yet used
    
    var lifepoint: Int {get set} // Character lifepoint who is different depending on type
    var heal: Int {get} // Character heal who is different depending on type
    
    var powerAttack: [String: Int] {get} // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)

    var dead: Bool {get set} // Is the character dead?
    
    var description: String {get set} // Details of the fighter
    
}





// -------------------------------------------------------------------------------------------------------
// MARK: Kind of Fighters
// >>> Gives its properties to the character
// -------------------------------------------------------------------------------------------------------

enum Kind: String {
    case wizard, warrior, dwarf
}





// -----------------------------------------------------------------------------------------------------
// MARK: Class Fighter
// >>> General characteristics of characters
// -----------------------------------------------------------------------------------------------------

class Fighter: FighterProtocol {
    
    var currentType: Kind // Either wizard or warrior or dwarf
    var name: String // Character name which must be unique and not yet used
    
    var lifepoint: Int // Character lifepoint who is different depending on type
    var heal: Int // Character heal who is different depending on type
    
    var powerAttack: [String: Int] = [:] // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)

    var dead: Bool // Is the character dead?
    
    var description: String // Details of the fighter
    
    
    // The different elements that make up the character are initialized
    init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String: Int], dead: Bool, description: String) {
        self.currentType = currentType
        self.name = name
        self.lifepoint = lifepoint
        self.heal = heal
        self.powerAttack = powerAttack
        self.dead = dead
        self.description = description
    }
    
    
    
    
    
    
    
    // Remove life of an ennemy
//    func attackTheEnnemy(powerAttackCharacter: Int, lifepointEnnemy: Int) {
//        var lifepointEnnemy = lifepoint
//        let powerAttackCharacter = powerAttack
//        lifepointEnnemy -= powerAttackCharacter.power
//        print("\(name), your \(currentType) attack with \(powerAttack) ")
//        print("\(name), your ennemy had \(lifepoint) before the attack, now he has left \(lifepointEnnemy)")
//    }
    
    
    // Add life of a companion
//    func healMyFriend(healCharacter: Int, lifepointCompanion: Int) {
//        var lifepointCompanion = lifepoint
//        let healCharacter = heal
//        lifepointCompanion += healCharacter
//        print("\(name), your \(currentType) attack with \(heal) ")
//        print("\(name), your companion had \(lifepoint) before the attack, now he has \(lifepointCompanion)")
//    }

    
    // If a character has his lifepoint = 0, he's dead
    func characterDead() {
        if lifepoint == 0 {
            dead = true
            print("☠️ ☠️ ☠️ OH NOOO! \(name) your \(currentType) not have surviving ☠️ ☠️ ☠️")
        }

    }
    
}









// -------------------------------------------------------------------------------------------------------
// MARK: Class Wizard
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

class Wizard: Fighter, NSCopying {
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
//    // Dictionnary of available weapons for the wizard
//    var availableWeaponsOfWizard: [String: Int] = [:]
//
//    init(availableWeaponsOfWizard: [String: Int]) {
//        for weapon in availableWeaponsOfWizard {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//
//    }
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String : Int], dead: Bool, description: String) {
        super.init(currentType: .wizard, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead, description: description)
        
        
    }
        
    convenience init() {
        self.init(currentType: .wizard,
                  name: "unknown",
                  lifepoint: 75,
                  heal: 25,
                  powerAttack: ["Froggy rain": 5],
                  dead: false,
                  description:  "·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️›› lifepoint=(lifepoint) ; ❤️‍🩹›› heal=(heal) ; ⚔️›› power of attack=(powerAttack))")
    }
    
  // function for the create copy
    func copy(with zone: NSZone? = nil) -> Any {
            let copy = Wizard()
            return copy
        }

// List of weapons of the wizard
//let CreateWeaponsOfWizardList = ["Froggy rain": 5,
//                                 "Staff of power" : 10,
//                                 "Fire ball": 15]
//let AddWeaponsOfWizardList = Wizard(availableWeaponsOfWizard: CreateWeaponsOfWizardList)
    
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Warrior
// >>> characteristics of warrior
// -------------------------------------------------------------------------------------------------------

class Warrior: Fighter {
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
    // Dictionnary of available weapons for the Warrior
    var availableWeaponsOfWarrior: [String: Int] = [:]
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String : Int], dead: Bool, description: String) {
        super.init(currentType: .warrior, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead,description: description)
    }
    
    convenience init() {
        self.init(currentType: .warrior,
                  name: "unknown",
                  lifepoint: 100,
                  heal: 10,
                  powerAttack: ["Oak stick": 10],
                  dead: false,
                  description: "·2· -> 🧝 Warrior : intelligent and agile swordsman, the best in category (❤️›› lifepoint=(lifepoint) ; ❤️‍🩹›› heal=(heal) ; ⚔️›› power of attack=(powerAttack))")
    }
    
  // function for the create copy of the class
    func copy(with zone: NSZone? = nil) -> Any {
            let copy = Warrior()
            return copy
        }
    
    
//    init(availableWeaponsOfWarrior: [String: Int]) {
//        for weapon in availableWeaponsOfWarrior {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//    }

}

// List of weapons of the warrior
//let CreateWeaponsOfWarriorList = ["Oak stick": 10,
//                                  "Shuriken": 15,
//                                  "Sword Kiss of dragon": 20]
//let AddWeaponsOfWarriorList = Warrior(availableWeaponsOfWarrior: CreateWeaponsOfWarriorList)




// -------------------------------------------------------------------------------------------------------
// MARK: Class Dwarf
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

class Dwarf: Fighter {
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
//    // Dictionnary of available weapons for the dwarf
//    var availableWeaponsOfDwarf: [String: Int] = [:]
    
//    let weaponsDwarf: [String: Int] = ["Volcano Slingshot": 25,
//                                       "Hammer Dammer": 30,
//                                       "Ax Kiss of dragon": 35]
//    let availableWeaponsOfDwarf = Array(weaponsDwarf.keys)
    
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String : Int], dead: Bool, description: String) {
        super.init(currentType: .dwarf, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead,description: description)
    }
    
    
    convenience init() {
        self.init(currentType: .dwarf,
                  name: "unknown",
                  lifepoint: 50,
                  heal: 5,
                  powerAttack: ["Volcano Slingshot": 25],
                  dead: false,
                  description: "·3· -> 🎅 Dwarf : his weapon is devastating and this hurt (❤️›› lifepoint=(lifepoint) ; ❤️‍🩹›› heal=(heal) ; ⚔️›› power of attack=(powerAttack))")
    }
    
  // function for the create copy
    func copy(with zone: NSZone? = nil) -> Any {
            let copy = Dwarf()
            return copy
        }
    
//    init(availableWeaponsOfDwarf: [String: Int]) {
//        for weapon in availableWeaponsOfDwarf {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//    }

}

// List of weapons of the dwarf
//let CreateWeaponsOfDwarfList = ["Volcano Slingshot": 25,
//                                "Hammer Dammer": 30,
//                                "Ax Kiss of dragon": 35]
//let AddWeaponOfDwarfList = Dwarf(availableWeaponsOfDwarf: CreateWeaponsOfDwarfList)




