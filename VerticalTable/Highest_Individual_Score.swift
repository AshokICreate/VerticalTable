//
//  Rank.swift
//  VerticalTable
//
//  Created by Ashok on 11/6/16.
//  Copyright © 2016 Ashok. All rights reserved.
//

import UIKit

class Highest_Individual_Score: NSObject {
    
    var player: String!
    var opp: String!
    var runs: String!
    var balls: String!
    var strikeRate: String!
    var fours: String!
    var sixes: String!
    var count: String!
    
    init(player: String!, opp: String, runs: String, balls: String, strikeRate: String, fours: String, sixes: String, count: String) {
        self.player = player
        self.opp = opp
        self.runs = runs
        self.balls = balls
        self.strikeRate = strikeRate
        self.fours = fours
        self.sixes = sixes
        self.count = count
    }
}
