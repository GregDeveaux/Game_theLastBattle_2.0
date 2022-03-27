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
    var guild: [FighterProtocol] = []
    
    
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters
    }
    

    
    

//    func allCharactersDead() {
//        if Player.teamOfPlayer.contains({$0.dead == true}) {
//            return
//        }
//    }

}

