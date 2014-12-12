//
// zalgo.swift
//
// Created by Ben Flannery on 12/11/14

import UIKit

func zalgoText(plainText: String) -> String {
    
    let up: [String] = ["\u{030D}", "\u{030E}", "\u{0304}", "\u{0305}", "\u{033F}",
        "\u{0311}", "\u{0306}", "\u{0310}", "\u{0352}", "\u{0357}",
        "\u{0351}", "\u{0307}", "\u{0308}", "\u{030A}", "\u{0342}",
        "\u{0343}", "\u{0344}", "\u{034A}", "\u{034B}", "\u{034C}",
        "\u{0303}", "\u{0302}", "\u{030C}", "\u{0350}", "\u{0300}",
        "\u{0301}", "\u{030B}", "\u{030F}", "\u{0312}", "\u{0313}",
        "\u{0314}", "\u{033D}", "\u{0309}", "\u{0363}", "\u{0364}",
        "\u{0365}", "\u{0366}", "\u{0367}", "\u{0368}", "\u{0369}",
        "\u{036A}", "\u{036B}", "\u{036C}", "\u{036D}", "\u{036E}",
        "\u{036F}", "\u{033E}", "\u{035B}", "\u{0346}", "\u{031A}"]
    
    let mid: [String] = ["\u{0315}", "\u{031B}", "\u{0340}", "\u{0341}", "\u{0358}",
        "\u{0321}", "\u{0322}", "\u{0327}", "\u{0328}", "\u{0334}",
        "\u{0335}", "\u{0336}", "\u{034F}", "\u{035C}", "\u{035D}",
        "\u{035E}", "\u{035F}", "\u{0360}", "\u{0362}", "\u{0338}",
        "\u{0337}", "\u{0361}", "\u{0489}"]
    
    let down: [String] = ["\u{0316}", "\u{0317}", "\u{0318}", "\u{0319}", "\u{031C}",
        "\u{031D}", "\u{031E}", "\u{031F}", "\u{0320}", "\u{0324}",
        "\u{0325}", "\u{0326}", "\u{0329}", "\u{032A}", "\u{032B}",
        "\u{032C}", "\u{032D}", "\u{032E}", "\u{032F}", "\u{0330}",
        "\u{0331}", "\u{0332}", "\u{0333}", "\u{0339}", "\u{033A}",
        "\u{033B}", "\u{033C}", "\u{0345}", "\u{0347}", "\u{0348}",
        "\u{0349}", "\u{034D}", "\u{034E}", "\u{0353}", "\u{0354}",
        "\u{0355}", "\u{0356}", "\u{0359}", "\u{035A}", "\u{0323}"]
    
    let zalgoChars: [[String]] = [up, mid, down]
    
    var zalgoString = ""
    
    for char in plainText {
        var zalgoChar = ""
        for i in 0...2 {
            // add a random number of upper, mid, and lower modifying characters
            var random = Int(arc4random_uniform(3))+1
            for j in 1...random {
                var numChars = UInt32(zalgoChars[i].count)
                var randIndex = Int(arc4random_uniform(numChars))
                zalgoChar += zalgoChars[i][randIndex]
            }
        }
        zalgoString += String(char) + zalgoChar
    }
    
    
    return zalgoString
}