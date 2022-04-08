//
//  Player.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation



// -----------------------------------------------------------------------------------------------------
// MARK: Class Player
// >>> Steps to différent actions of players
// -----------------------------------------------------------------------------------------------------

class Player {
    
    var name: String = "" // create the players for dictionary
    var guild = Guild(sizeMaxFighters: 2)  //  call each team array of player with maximun of 3 fighters

    
    // Enter the name of the guild
    func EnterTheNameOfGuild(guildPlayer numberPlayer: Int, nameDifferent otherPlayer: Player) {
        print("Player \(numberPlayer), enter your team name")
        while name.isEmpty {
            if let nameWrites = readLine()?.uppercased() {
                if !nameWrites.isEmpty && nameWrites != otherPlayer.name {
                    name = nameWrites
                }
                else {
                    print("Please, enter the other Guild Name, thanks")
                }
            }
        }
    }
    
    
}
