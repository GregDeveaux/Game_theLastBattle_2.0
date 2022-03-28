//
//  Guild.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation





// -----------------------------------------------------------------------------------------------------
// MARK: Struct Team
// >>> Creation of a team of 3 fighters
// -----------------------------------------------------------------------------------------------------

struct Guild {
    
    var sizeMaxFighters: Int // number of fighters maximum for each team
    
    // Kind available to assign to the 3 team fighters
    var wizard = Wizard()
    var warrior = Warrior()
    var dwarf = Dwarf()
       
    
    // The guild is composed of 3 fighters
    var fighters: [FighterProtocol] = []
    
    
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters
    }
    

    

    func allFightersDead() -> Bool {
        if fighters.contains(where: {$0.dead == true}) {
            print("☠️☠️☠️ All Fighters are dead! ☠️☠️☠️")
        }
        return true
    }

}

