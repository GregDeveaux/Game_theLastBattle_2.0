//
//  Decoration.swift
//  Game_theLastBattle
//
//  Created by Greg-Mini on 24/03/2022.
//

import Foundation

class Cards {
//    
//    var cardWizard = print ("""
//        /—————————————————————————————————————————\
//        |                 WIZARD                  |
//        |   ///////////////////////////////////   |
//        |   //                               //   |
//        |   //             _-^-_             //   |
//        |   //            ∫     \            //   |
//        |   //           /       \           //   |
//        |   //          /    ô    \          //   |
//        |   //         /    (§)     \        //   |
//        |   //        /      ¨      \        //   |
//        |   //       /_–··¯¯¯¯¯¯¯··–_\       //   |
//        |   //      |_–-··¯¯¯¯¯¯¯··–-_|      //   |
//        |   //    ∑ |                  |     //   |
//        |   //    ∑ | _---"     “---_   |     //   |
//        |   //   (  |  <{ø}  ||  {ø}>  |?)    //   |
//        |   //      |        )(              //   |
//        |   //      |       °--°               //   |
//        |   //     (                     //   |
//        |   //       (                      //   |
//        |   //         \                   //   |
//        |   //          \                    //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   ///////////////////////////////////   |
//        |                                         |
//        \—————————————————————————————————————————/  AZERTYUIOPPŒïªŸ™‚ÊÅΩ∑∆·ﬂÎÍË|Ó‰‰#±\•¿ı∫√¢⁄››››››≥/ë“‘¶«¡Ç—}øÇ¡«¶{‘“
//
//
//        """)
//    
//    
//    
//    
//    
static var cardWarriors: String = """
        o—————————————————————————————————————————o        o—————————————————————————————————————————o        o—————————————————————————————————————————o
        |                                         |        |                                         |        |                                         |
        |             °·. WARRIOR .·°             |        |             °·. WARRIOR .·°             |        |             °·. WARRIOR .·°             |
        |                                         |        |                                         |        |                                         |
        |   ///////////////////////////////////   |        |   ///////////////////////////////////   |        |   ///////////////////////////////////   |
        |   //                               //   |        |   //                               //   |        |   //                               //   |
        |   //              _:-·_ _          //   |        |   //              _:-·_ _          //   |        |   //              _:-·_ _          //   |
        |   //        _.·-⁄¨     Y L._       //   |        |   //        _.·-⁄¨     Y L._       //   |        |   //        _.·-⁄¨     Y L._       //   |
        |   //      _/  _.–––√·–––__  L_     //   |        |   //      _/  _.–––√·–––__  L_     //   |        |   //      _/  _.–––√·–––__  L_     //   |
        |   //     | _/             L  /.    //   |        |   //     | _/             L  /.    //   |        |   //     | _/             L  /.    //   |
        |   //    | _/               L  |    //   |        |   //    | _/        X      L  |    //   |        |   //    | _/               L  |    //   |
        |   //    | |                 | |­­    //   |        |   //    | |          X      | |­­    //   |        |   //    | |                 | |­­    //   |
        |   //    | |                 | |­­    //   |        |   //    | |           X     | |­­    //   |        |   //    | |                 | |­­    //   |
        |   //    | | .-==-’   ’-==-. | |­­    //   |        |   //    | | .-==-’   ’-==-. | |­­    //   |        |   //    | | .-==-’   ’-==-. | |­­    //   |
        |   //    |_| <(•)> | | <(•)> |_|    //   |        |   //    |_| <(•)> | | ≤––≥  |_|    //   |        |   //    |_| <(•)> | | <(•)> |_|    //   |
        |   //   ( ~|   ¯¯   |   ¯¯   |~ )   //   |        |   //   ( ~|   ¯¯  | |    X  |~ )   //   |        |   //   ( ~|   ¯¯   |   ¯¯   |~ )   //   |
        |   //    [ |       | |       | ]    //   |        |   //    [ |       | |     X | ]    //   |        |   //    [ |       | |       | ]    //   |
        |   //    (_|      <___>      |_)    //   |        |   //    (_|      d___b      |_)    //   |        |   //    (_|      <___>      |_)    //   |
        |   //      |                 |      //   |        |   //   _| |                 | |_   //   |        |   //      |                 |      //   |
        |   //      |    (==—--==)    |      //   |        |   //   |  |    (==—--==)    |   |  //   |        |   //      |    (==—--==)    |      //   |
        |   //      L                 /      //   |        |   //  _|  L    L ·.—.· /    /   |  //   |        |   //      L                 /      //   |
        |   //       L_      _      _/       //   |        |   //  |    L_   L     /   _/   /   //   |        |   //       L_     _       _/       //   |
        |   //        |L___(_¡­­_)___/|        //   |        |   //  |     |L___L_ _/___/|   |    //   |        |   //        |L_         _/|        //   |
        |   //        |             |        //   |        |   //   L    |      V      |   L    //   |        |   //        |  L___¡­­___/  |        //   |
        |   //    _.–-|             |-–._    //   |        |   //    L.–-|             |-–._|   //   |        |   //    _.–-|             |-–._    //   |
        |   // ||||L¨¯’-  L     ∫   ‘¯¨/|||| //   |        |   // ||||L¨¯’-  L     ∫   ‘¯¨/|||| //   |        |   // ||||L¨¯’-  L     ∫   ‘¯¨/|||| //   |
        |   // |||||ddd  -·L   ∫·—  bbb||||| //   |        |   // |||||ddd  -·L   ∫·—  bbb||||| //   |        |   // |||||ddd  -·L   ∫·—  bbb||||| //   |
        |   // ||||||dd'~-.__||__.—~'bb||||| //   |        |   // ||||||dd'~-.__||__.—~'bb||||| //   |        |   // ||||||dd'~-.__||__.—~'bb||||| //   |
        |   // |||||||dddddddHbbbbbbb||||||| //   |        |   // |||||||dddddddHbbbbbbb||||||| //   |        |   // |||||||dddddddHbbbbbbb||||||| //   |
        |   // ||||||||ddddddHbbbbbb|||||||| //   |        |   // ||||||||ddddddHbbbbbb|||||||| //   |        |   // ||||||||ddddddHbbbbbb|||||||| //   |
        |   // |||||||||||dddHbbb||||||||||| //   |        |   // |||||||||||dddHbbb||||||||||| //   |        |   // |||||||||||dddHbbb||||||||||| //   |
        |   //                               //   |        |   //                               //   |        |   //                               //   |
        |   ///////////////////////////////////   |        |   ///////////////////////////////////   |        |   ///////////////////////////////////   |
        |                                         |        |                                         |        |                                         |
        |   NAME :                                |        |   NAME :                                |        |   NAME :                                |
        |                                         |        |                                         |        |                                         |
        |   Life 000 .·° Heal 000 °·. Power 000   |        |   Life 000 .·° Heal 000 °·. Power 000   |        |   Life 000 .·° Heal 000 °·. Power 000   |
        |                                         |        |                                         |        |                                         |
        o—————————————————————————————————————————o        o—————————————————————————————————————————o        o—————————————————————————————————————————o


        """
    
//
//    
//    
//    
//    
//    
//    var cardWarrior = print ("""
//        o—————————————————————————————————————————o
//        |                  DWARF                  |
//        |   ///////////////////////////////////   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //       ««~““-_                 //   |
//        |   //          _   \   _-““““””~    //   |
//        |   //        <(•)>  | |  <(•)>      //   |
//        |   //               ( )             //   |
//        |   //               / \             //   |
//        |   //             C(   )D           //   |
//        |   //         <§§§§>- <§§§§>        //   |
//        |   //       _/  \  ·___·  /  \      //   |
//        |   //      /      \ / \ /    \_     //   |
//        |   //     //       /    \     \\    //   |
//        |   //     v       |     |      v    //   |
//        |   //     |        \   /      |/    //   |
//        |   //               ===        /    //   |
//        |   //               |||         /   //   |
//        |   //               V V        **   //   |
//        |   //         **************        //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   //                               //   |
//        |   ///////////////////////////////////   |
//        |                                         |
//        o—————————————————————————————————————————o
//
//
//        """)
//
//        
//    
//    
//    
//    
}
