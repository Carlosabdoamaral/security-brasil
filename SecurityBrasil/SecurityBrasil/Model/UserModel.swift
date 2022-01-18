//
//  UserModel.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import Foundation

struct UserModel : Decodable, Identifiable {
    var id : Int
    var firstName : String
    var lastName : String
    var username : String
    var email : String
    var city : String
    var password : String
    var history : [String]
}
