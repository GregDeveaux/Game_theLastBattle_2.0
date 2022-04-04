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
    
    var sizeMaxFighters: Int                // number of fighters maximum for each team
    var fighters: [FighterProtocol] = []    // The guild is composed of 3 fighters
    
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters
    }
    

    func allFightersDead() -> Bool {
        var totalDead = 0
        while totalDead != sizeMaxFighters {
//            let deadFighter = inGuild.contains(where: {$0.dead == true})
            for fighter in fighters {
                if fighter.dead {
                    totalDead += 1
                }
            }
            return false
        }
        print("☠️☠️☠️ All Fighters are dead! ☠️☠️☠️")
        return true
    }
    
}

