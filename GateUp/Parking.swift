//
//  Parking.swift
//  GateUp
//
//  Created by Matheus Leite on 18/11/16.
//  Copyright © 2016 Matheus Leite. All rights reserved.
//

import UIKit

class Parking: NSObject {
    
    static let sharedInstance = Parking()
    var parkings = [Parking]()
    
    var name : String!
    var latitude : String!
    var longitude : String!
    var taxPerMin : String!
    
}
