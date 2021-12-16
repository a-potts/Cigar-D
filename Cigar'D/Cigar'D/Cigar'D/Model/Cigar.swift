//
//  Cigar.swift
//  Cigar'D
//
//  Created by Austin Potts on 12/15/21.
//

import Foundation

class Cigar {
    
    var cigarBrand: String
    var cigarDate: Date
    var cigarLocation: String
    
    init(cigarBrand: String, cigarDate: Date, cigarLocation: String) {
        self.cigarBrand = cigarBrand
        self.cigarDate = cigarDate
        self.cigarLocation = cigarLocation
    }
    
}
