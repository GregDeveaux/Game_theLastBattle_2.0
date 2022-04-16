//
//  Fighters.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
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
    var rain = Weapon(name: "Froggy rain", power: 5, numberUse: 50)
    var staff = Weapon(name: "Staff of power", power: 15, numberUse: 3)
    var fireBall = Weapon(name: "Fire ball", power: 25, numberUse: 1)
        
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
    var oak = Weapon(name: "Oak stick", power: 10, numberUse: 50)
    var shuriken = Weapon(name: "Shuriken", power: 20, numberUse: 3)
    var sword = Weapon(name: "Sword \"Thunder of fire\"", power: 30, numberUse: 1)
    
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
    var volcano = Weapon(name: "Volcano Slingshot", power: 80, numberUse: 50)
    var hammer = Weapon(name: "Hammer Dammer", power: 30, numberUse: 3)
    var ax = Weapon(name: "Ax \"Kiss of dragon\"", power: 40, numberUse: 1)
    
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
