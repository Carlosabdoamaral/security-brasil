//
//  PhoneModel.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 09/02/22.
//

import Foundation

struct Phone : Identifiable, Codable {
    var id = UUID()
    var i : Int
    var phone : Int
    var name : String
}
