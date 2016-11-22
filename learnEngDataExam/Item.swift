//
//  Item.swift
//  learnEngDataExam
//
//  Created by techmaster on 11/22/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class Item: NSObject {
    var sentence: String?
    var meaning: String?
    var type: String?
    var vocalization: String?
    var sound: String?
    var image: String?
    var synonym: String?
    init(sentence: String, meaning: String, type: String, vocalization: String , sound: String , image: String , synonym: String)
    {
        self.sentence = sentence
        self.meaning = meaning
        self.type = type
        self.vocalization = vocalization
        self.sound = sound
        self.image = image
        self.synonym = synonym
    }
}
