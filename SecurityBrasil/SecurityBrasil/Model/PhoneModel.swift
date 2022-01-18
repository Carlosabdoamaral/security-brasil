//
//  PhoneModel.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import Foundation

struct PhoneModel : Identifiable, Decodable {
    var id : Int
    var tel : Int
    var companyName : String
    var distancy : Int
}
