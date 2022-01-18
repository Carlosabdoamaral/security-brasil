//
//  NewsModel.swift
//  SecurityBrasil
//
//  Created by Carlos Amaral on 17/01/22.
//

import Foundation

struct NewsModel : Decodable, Identifiable {
    var id : Int
    var date : Date
    var title : String
    var content : String
    var likes : Int
}
