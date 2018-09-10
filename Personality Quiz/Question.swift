//
//  Question.swift
//  Personality Quiz
//
//  Created by Denis Zubkov on 10/09/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы окружаете себя людьми, которые Вам нравятся и любите проводить время с друзьями"
        case .cat:
            return "Вам нравится все делать самостоятельно"
        case .rabbit:
            return "Вам нравится все мягкое, Вы здоровы и полны энергии"
        case .turtle:
            return "Вы умны не по годам, любите вникать в детали. Медленный и аккуратный выигрывает"
        }
    }
}
