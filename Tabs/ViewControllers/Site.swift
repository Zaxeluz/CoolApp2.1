//
//  Site.swift
//  Tabs
//
//  Created by Alumno on 27/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Site {
    
    var name : String
    var description : String
    var image : UIImage
    
    init() {
        name = ""
        description = ""
        image = UIImage()
    }
    
    init(name : String, description : String, image : UIImage) {
        self.name = name
        self.description = description
        self.image = image
    }
}
