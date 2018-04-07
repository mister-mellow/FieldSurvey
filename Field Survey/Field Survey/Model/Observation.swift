//
//  Animal.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

enum Observation: String {
    case amphibian
    case insect
    case fish
    case mammal
    case bird
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}



