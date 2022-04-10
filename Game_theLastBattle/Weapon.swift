//
//  Weapon.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation

struct Weapon {
    var nameWeapon: String // Name of the arm
    var powerWeapon: Int // Power of the arm
    var numberUse: Int
    
    init(nameWeapon: String, powerWeapon: Int, numberUse: Int) {
        self.nameWeapon = nameWeapon
        self.powerWeapon = powerWeapon
        self.numberUse = numberUse
    }
}
