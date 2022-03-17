//
//  Team.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation


// -----------------------------------------------------------------------------------------------------
// MARK: Struct Team
// >>> Creation of a team of 3 characters
// -----------------------------------------------------------------------------------------------------

struct Team {
    
    static var currentSizeTeam = 1 // characters in the team
    
    static let sizeMaxTeam = 3 // 3 Characters maximum for each team
    
    
    // Kind available to assign to the 3 team characters

    static let wizard = Wizard(currentType: .wizard, name: "Lala", lifepoint: 75, heal: 25, powerAttack: ["Froggy rain": 5], dead: false)
    
    static let warrior = Warrior(currentType: .warrior, name: "Bob", lifepoint: 100, heal: 10, powerAttack: ["Oak stick": 10], dead: false)
    
    static let dwarf = Dwarf(currentType: .dwarf, name: "Patrick", lifepoint: 50, heal: 5, powerAttack: ["Volcano Slingshot": 25] , dead: false)
    
    
    // Array of characters in the guild
    
    let guild: [Guild] = [wizard, warrior, dwarf]

    
    
    
    
    
    
//    func allCharactersDead() {
//        if Team.teamOfPlayer.contains({$0.dead == true}) {
//            return
//        }
//    }
                                    
}
