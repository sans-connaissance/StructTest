//
//  ContentView.swift
//  StructTest
//
//  Created by David Malicke on 1/23/22.
//
import Foundation
import SwiftUI

///MODELS
struct Resume: Identifiable {
    var id: String
    var basics: Basics
    
}

struct Basics: Identifiable {
    var id: String?
    var name: String?
    var label: String?
    var image: String?
    var email: String?
    var phone: String?
    var url: String?
    var summary: String?
    var location: Location?
    var profiles: [Profile]?
    
    
}

struct Location: Identifiable {
    var id: String?
    var address: String?
    var postalCode: String?
    var city: String?
    var countryCode: String?
    var region: String?
}

struct Profile: Identifiable {
    var id: String?
    var network: String?
    var username: String?
    var url: String?
}


///STORE

let davidMalicke = Resume(
    id: UUID().uuidString,
    basics: davidMalickeBasics)

let davidMalickeBasics = Basics(
    id: UUID().uuidString,
    name: "David Malicke",
    label: nil,
    image: "https://picsum.photos/200/303",
    email: "davemalicke@gmail.com",
    phone: "734-231-6980",
    url: "https://www.linkedin.com/in/david-malicke-ios/",
    summary: "Experienced iOS Developer, Operations Lead, and Project Manager.",
    location: davidMalickeLocation,
    profiles: [davidMalickeGitHub])

let davidMalickeLocation = Location(
    id: UUID().uuidString,
    address: "1715 South BLVD",
    postalCode: "48104",
    city: "Ann Arbor",
    countryCode: "USA",
    region: "MI")

let davidMalickeGitHub = Profile(
    id: UUID().uuidString,
    network: nil,
    username: "sans-connaissance",
    url: "https://cdn-icons-png.flaticon.com/512/25/25231.png")



struct ContentView: View {
    
    let resume = davidMalicke
    
    var body: some View {
        if let test = davidMalickeGitHub.url {
            Text(test)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
