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
    var weapon:         [Weapon]        { get set }     // Array of weapons for each kind
    var powerAttack:    Int             { get set }     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String          { get }         // Details of the fighter
}

extension FighterProtocol {
    
    // If a fighter has his lifepoint = 0, he's dead
    var dead: Bool {
        lifepoint == 0
//            print("☠️ Oh no! \(name) your \(currentType) not have surviving ☠️")
    }
    
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    mutating func giveNameToFighter() -> String {
//        let fightersGuildPlayer1And2 = guildPlayer1 + guildPlayer2
        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        while name.isEmpty && name == name {
            if let nameCharacterWrites = readLine()?.uppercased() {
//                if fightersGuildPlayer1And2.contains(where: ({$0.name == nameCharacterWrites})) {  // if the layer write a name already contains in the both team
//                    print("This name is already taken, please enter an other")
//                } else {
                    name = nameCharacterWrites
//                }
            }
        }
        return name
    }
    
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
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapon:         [Weapon]    // Array of weapons for each kind
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
            return "·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
    }
    
        
    init() {
        self.currentType   = .wizard
        self.name          = "unknown"
        self.lifepoint     = 75
        self.heal          = 25
        self.weapon        = [Weapon]()
        self.powerAttack   = 5
    }
    
    //    var nameWeapon: String // Name of the arm ["Froggy rain": 5]
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
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapon:         [Weapon]    // Array of weapons for each kind
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
            return "·2· -> 🧝 Warrior : intelligent and agile swordsman, the best in category (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
    }
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .warrior
        self.name           = ""
        self.lifepoint      = 100
        self.heal           = 10
        self.weapon         = [Weapon]()
        self.powerAttack    = 10
    }
    
//    var nameWeapon: String // Name of the arm ["Oak stick": 10]
//    var powerWeapon: Int // Power of the arm
//
    // Dictionnary of available weapons for the Warrior
//    var availableWeaponsOfWarrior: [String: Int] = [:]
    

    
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
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Character name which must be unique and not yet used
    var lifepoint:      Int         // Character lifepoint who is different depending on type
    var heal:           Int         // Character heal who is different depending on type
    var weapon:         [Weapon]    // Array of weapons for each kind
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String  {
            return "·3· -> 🎅 Dwarf : his weapon is devastating and this hurt (❤️›› lifepoint=\(lifepoint) ; ❤️‍🩹›› heal=\(heal) ; ⚔️›› power of attack=\(powerAttack))"  // Details of the fighter
    }
    
    
    // The different elements that make up the character are initialized
    init() {
        self.currentType    = .dwarf
        self.name           = ""
        self.lifepoint      = 50
        self.heal           = 5
        self.weapon         = [Weapon]()
        self.powerAttack    = 75
    }
    
  
//
//    // Dictionnary of available weapons for the dwarf ["Volcano Slingshot": 25]
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


struct Weapon {
    var nameWeapon: String // Name of the arm
    var powerWeapon: Int // Power of the arm
    
}

