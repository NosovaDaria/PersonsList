//
//  DataManager.swift
//  PersonsList
//
//  Created by Дарья Носова on 29.12.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Peter", "John", "Daenerys",
        "Tirion", "May", "Norman",
        "Otto", "Max", "Curt", "Ned"
    ]
    
    let surnames = [
        "Stark", "Targaryen", "Lanister",
        "Parker", "Osborn", "Octavius",
        "Dillon", "Connors", "Leeds", "Marko"
    ]
    
    let emails = [
        "aaaa@gmail.com", "bbbb@gmail.com", "cccc@gmail.com",
        "dddd@gmail.com", "eeee@gmail.com", "ffff@gmail.com",
        "gggg@gmail.com", "hhhh@gmail.com", "iiii@gmail.com",
        "jjjj@gmail.com"
    ]
    
    let phones = [
        "731939994", "555444333", "999333444", "666555444",
        "495848382", "385748382", "848599392", "485949392",
        "485578284", "495839293"
    ]
    
    private init() {}
}
