//
//  Weapon.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation

struct Weapon {
    var name: String // Name of the arm
    var power: Int // Power of the arm
    var numberUse: Int
    
    init(nameWeapon: String, powerWeapon: Int, numberUse: Int) {
        self.name = nameWeapon
        self.power = powerWeapon
        self.numberUse = numberUse
    }
}
