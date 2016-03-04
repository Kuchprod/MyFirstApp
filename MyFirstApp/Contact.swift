//
//  Contact.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 03/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import Foundation

struct Contact {
    
    var name = ""
    var forename = ""
    var mail = ""
    var desk = ""
    var address = ""
    var phone = ""
    var website = ""
    var picture = ""
    
    var description : String {
        return "\(name), \(forename), \(mail), \(desk), \(address), \(phone), \(website), \(picture)"
    }
}