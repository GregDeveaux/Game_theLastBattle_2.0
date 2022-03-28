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
    var currentType:    Kind            { get }       // Either wizard or warrior or dwarf
    var name:           String          { get set }   // Character name which must be unique and not yet used
    var lifepoint:      Int             { get set }   // Character lifepoint who is different depending on type
    var heal:           Int             { get }       // Character heal who is different depending on type
    var powerAttack:    [String: Int]   { get set }       // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var dead:           Bool            { get }   // Is the character dead?
    var description:    String          { get }   // Details of the fighter
}

extension FighterProtocol {



// Remove life of an ennemy
    func attackTheEnnemy(powerAttackCharacter: Int, lifepointEnnemy: Int) {
        var lifepointEnnemy = lifepoint
//        let powerAttackCharacter = powerAttack.flatMap(/.value)
        lifepointEnnemy -= powerAttackCharacter
        print("\(name), your \(currentType) attack with \(powerAttack) ")
        print("\(name), your ennemy had \(lifepoint) before the attack, now he has left \(lifepointEnnemy)")
    }


// Add life of a companion
    func healMyFriend(healCharacter: Int, lifepointCompanion: Int) {
        var lifepointCompanion = lifepoint
        let healCharacter = heal
        lifepointCompanion += healCharacter
        print("\(name), your \(currentType) attack with \(heal) ")
        print("\(name), your companion had \(lifepoint) before the attack, now he has \(lifepointCompanion)")
    }


// If a character has his lifepoint = 0, he's dead

//    mutating func characterDead() {
//        if lifepoint == 0 {
//            dead = true
//            print("☠️ ☠️ ☠️ OH NOOO! \(name) your \(currentType) not have surviving ☠️ ☠️ ☠️")
//        }
//
//    }

}



// -------------------------------------------------------------------------------------------------------
// MARK: Kind of Fighters
// >>> Gives its properties to the character
// -------------------------------------------------------------------------------------------------------

enum Kind: String {
    case wizard, warrior, dwarf
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Wizard
// >>> characteristics of wizard
// -------------------------------------------------------------------------------------------------------

struct Wizard: FighterProtocol {
    var currentType:    Kind                    // Either wizard or warrior or dwarf
    var name:           String                  // Character name which must be unique and not yet used
    var lifepoint:      Int                     // Character lifepoint who is different depending on type
    var heal:           Int                     // Character heal who is different depending on type
    var powerAttack:    [String: Int] = [:]     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var dead:           Bool    {
        get {
            lifepoint == 0  // Is the character dead?
        }
    }
    var description:    String  {
        get {
            return "·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
        }
    }
    
    init() {
        self.currentType    = .wizard
        self.name          = "unknown"
        self.lifepoint     = 75
        self.heal          = 25
        self.powerAttack   = ["Froggy rain": 5]
    }
    
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

// List of weapons of the wizard
//let CreateWeaponsOfWizardList = ["Froggy rain": 5,
//                                 "Staff of power" : 10,
//                                 "Fire ball": 15]
//let AddWeaponsOfWizardList = Wizard(availableWeaponsOfWizard: CreateWeaponsOfWizardList)
    
//    characterDead()
    
}



// -------------------------------------------------------------------------------------------------------
// MARK: Class Warrior
// >>> characteristics of warrior
// -------------------------------------------------------------------------------------------------------

struct Warrior: FighterProtocol {
    var currentType:    Kind                    // Either wizard or warrior or dwarf
    var name:           String                  // Character name which must be unique and not yet used
    var lifepoint:      Int                     // Character lifepoint who is different depending on type
    var heal:           Int                     // Character heal who is different depending on type
    var powerAttack:    [String: Int] = [:]     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var dead:           Bool    {
        get {
            lifepoint == 0  // Is the character dead?
        }
    }
    var description:    String  {
        get {
            return "·2· -> 🧝 Warrior : intelligent and agile swordsman, the best in category (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
        }
    }
    
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .warrior
        self.name           = ""
        self.lifepoint      = 100
        self.heal           = 10
        self.powerAttack    = ["Oak stick": 10]
    }
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
    // Dictionnary of available weapons for the Warrior
    var availableWeaponsOfWarrior: [String: Int] = [:]
    

    
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

struct Dwarf: FighterProtocol {
    var currentType:    Kind                    // Either wizard or warrior or dwarf
    var name:           String                  // Character name which must be unique and not yet used
    var lifepoint:      Int                     // Character lifepoint who is different depending on type
    var heal:           Int                     // Character heal who is different depending on type
    var powerAttack:    [String: Int] = [:]     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var dead:           Bool    {
        get {
            lifepoint == 0  // Is the character dead?
        }
    }
    var description:    String  {
        get {
            return "·3· -> 🎅 Dwarf : his weapon is devastating and this hurt (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
        }
    }
    
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .dwarf
        self.name           = ""
        self.lifepoint      = 50
        self.heal           = 5
        self.powerAttack    = ["Volcano Slingshot": 25]
    }
    
//    var nameWeapon: String // Name of the arm
//    var powerWeapon: Int // Power of the arm
//
//    // Dictionnary of available weapons for the dwarf
//    var availableWeaponsOfDwarf: [String: Int] = [:]
    
//    let weaponsDwarf: [String: Int] = ["Volcano Slingshot": 25,
//                                       "Hammer Dammer": 30,
//                                       "Ax Kiss of dragon": 35]
//    let availableWeaponsOfDwarf = Array(weaponsDwarf.keys)
    
    

    
//    init(availableWeaponsOfDwarf: [String: Int]) {
//        for weapon in availableWeaponsOfDwarf {
//            self.nameWeapon = weapon.key
//            self.powerWeapon = weapon.value
//        }
//    }

}




