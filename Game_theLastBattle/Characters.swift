//
//  Characters.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: Protocol Guild
// >>> General characteristics of characters
// -----------------------------------------------------------------------------------------------------

protocol Guild {
    
    var currentType: Kind {get}// Either wizard or warrior or dwarf
    var name: String {get set} // Character name which must be unique and not yet used
    
    var lifepoint: Int {get set} // Character lifepoint who is different depending on type
    var heal: Int {get} // Character heal who is different depending on type
    
    var powerAttack: [String: Int] {get} // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)

    var dead: Bool {get set} // Is the character dead?
    
//    func description() -> String // Details of the wizard

}





// -----------------------------------------------------------------------------------------------------
// MARK: Class Characters
// >>> General characteristics of characters
// -----------------------------------------------------------------------------------------------------

class Characters {
    
    var currentType: Kind // Either wizard or warrior or dwarf
    var name: String // Character name which must be unique and not yet used
    
    var lifepoint: Int // Character lifepoint who is different depending on type
    var heal: Int // Character heal who is different depending on type
    
    var powerAttack: [String: Int] = [:] // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)

    var dead: Bool // Is the character dead?
    
    
    // The different elements that make up the character are initialized
    init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String: Int], dead: Bool) {
        self.currentType = currentType
        self.name = name
        self.lifepoint = lifepoint
        self.heal = heal
        self.powerAttack = powerAttack
        self.dead = dead
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
            print("☠️ ☠️ ☠️ your \(currentType) not have surviving ☠️ ☠️ ☠️")
        }

    }
    
}





// -------------------------------------------------------------------------------------------------------
// MARK: Kind of characters
// >>> Gives its properties to the character
// -------------------------------------------------------------------------------------------------------

enum Kind: String {
    case wizard, warrior, dwarf
}





// -------------------------------------------------------------------------------------------------------
// MARK: Class Wizard
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

class Wizard: Characters, Guild {
    
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
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String: Int], dead: Bool) {
        super.init(currentType: .wizard, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead)
    }
    
    
            
    // Details of the wizard
    func description() {
        print("           ·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))")
    }
    
}

// List of weapons of the wizard
//let CreateWeaponsOfWizardList = ["Froggy rain": 5,
//                                 "Staff of power" : 10,
//                                 "Fire ball": 15]
//let AddWeaponsOfWizardList = Wizard(availableWeaponsOfWizard: CreateWeaponsOfWizardList)




// -------------------------------------------------------------------------------------------------------
// MARK: Class Warrior
// >>> characteristics of warrior
// -------------------------------------------------------------------------------------------------------

class Warrior: Characters, Guild {
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
    // Dictionnary of available weapons for the Warrior
    var availableWeaponsOfWarrior: [String: Int] = [:]
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String: Int], dead: Bool) {
        super.init(currentType: .warrior, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead)
    }
    
//    init(availableWeaponsOfWarrior: [String: Int]) {
//        for weapon in availableWeaponsOfWarrior {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//    }

    
    // Details of the warrior
    func description() {
        print("           ·2· -> 🥷 Warrior : intelligent and agile swordsman, the best in category (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))")
    }
    
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

class Dwarf: Characters, Guild {
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
//    // Dictionnary of available weapons for the dwarf
//    var availableWeaponsOfDwarf: [String: Int] = [:]
    
    override init(currentType: Kind, name: String, lifepoint: Int, heal: Int, powerAttack: [String: Int], dead: Bool) {
        super.init(currentType: .dwarf, name: name, lifepoint: lifepoint, heal: heal, powerAttack: powerAttack, dead: dead)
    }
    
//    init(availableWeaponsOfDwarf: [String: Int]) {
//        for weapon in availableWeaponsOfDwarf {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//    }
    
       
    // Details of the dwarf
    func description() {
        print("           ·3· -> 🤶 Dwarf : his weapon is devastating and this hurt (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))")
    }
    
    }

// List of weapons of the dwarf
//let CreateWeaponsOfDwarfList = ["Volcano Slingshot": 25,
//                                "Hammer Dammer": 30,
//                                "Ax Kiss of dragon": 35]
//let AddWeaponOfDwarfList = Dwarf(availableWeaponsOfDwarf: CreateWeaponsOfDwarfList)
