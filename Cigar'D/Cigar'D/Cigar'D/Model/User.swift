//
//  User.swift
//  Cigar'D
//
//  Created by Austin Potts on 12/15/21.
//

import Foundation


class User {
    
    var name: String
    var email: String
    var cigars: [Cigar]
    
    init(name: String, email: String, cigars: [Cigar]){
        self.name = name
        self.email = email
        self.cigars = cigars
    }
    
}
