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
    var basics: Basics?
    var work: [Work]?
    var volunteer: [Volunteer]?
    var education: [Education]?
    
}

struct Basics: Identifiable {
    var id: String
    var name: String?
    var label: String?
    var image: String?
    var email: String?
    var phone: String?
    var url: String?
    var summary: String?
    var location: Location?
    var profiles: [Profile]?
    var video: Video?
}

struct Location: Identifiable {
    var id: String
    var address: String?
    var postalCode: String?
    var city: String?
    var countryCode: String?
    var region: String?
}

struct Profile: Identifiable {
    var id: String
    var network: String?
    var username: String?
    var url: String?
    var thumbnail: String?
}

struct Work: Identifiable {
    var id: String
    var name: String?
    var department: String?
    var position: String?
    var url: String?
    var startDate: String?
    var endDate: String?
    var summary: String?
    var highlights: [String]?
    var thumbnail: String?
}

struct Volunteer: Identifiable {
    var id: String
    var organization: String?
    var position: String?
    var url: String?
    var startDate: String?
    var endDate: String?
    var summary: String?
    var highlights: [String]?
    var thumbnail: String?
    
}

struct Education: Identifiable {
    var id: String
    var institution: String?
    var schoolName: String?
    var degreeName: String?
    var specialization: String?
    var url: String?
    var area: String?
    var studyType: String?
    var startDate: String?
    var endDate: String?
    var score: String?
    var courses: [String]?
    var thumbnail: String?

}

struct Video: Identifiable {
    var id: String
    var name: String?
    var videoURL: String?
    var thumbnail: String?
}


///STORE

let davidMalicke = Resume(
    id: UUID().uuidString,
    basics: basics,
    work: [frankfurtIndustries],
    volunteer: nil)
    

let basics = Basics(
    id: UUID().uuidString,
    name: "David Malicke",
    label: nil,
    image: "https://picsum.photos/200/303",
    email: "davemalicke@gmail.com",
    phone: "734-231-6980",
    url: "https://www.linkedin.com/in/david-malicke-ios/",
    summary: "Experienced iOS Developer, Operations Lead, and Project Manager.",
    location: location,
    profiles: [gitHub],
    video: nil)

let location = Location(
    id: UUID().uuidString,
    address: "1715 South BLVD",
    postalCode: "48104",
    city: "Ann Arbor",
    countryCode: "USA",
    region: "MI")

let gitHub = Profile(
    id: UUID().uuidString,
    network: nil,
    username: "sans-connaissance",
    url: "https://cdn-icons-png.flaticon.com/512/25/25231.png",
    thumbnail: nil)

let frankfurtIndustries = Work(
    id: UUID().uuidString,
    name: "Frankfurt Industries",
    department: "Mobile Development",
    position: "iOS Mobile Developer",
    url: nil,
    startDate: "2021-02-01",
    endDate: "Present",
    summary: "Design, develop, and publish iOS apps for Frankfurt Industries, LLC.",
    highlights: ["Design, develop and publish UM SalaryPub on the App Store.", "UM SalaryPub is a native iOS app for searching, reviewing and comparing over 470,000 unique salary records.", "Built UM SalaryPub with SwiftUI following MVVM, and designed the CoreData model from the ground up. UM SalaryPub also takes advantage of an imported UIKit Charts package, which combined with SwiftUI and CoreData delivers a fast and responsive user experience."],
    thumbnail: "https://frankfurtindustries.neocities.org/images/bg.jpg")



struct ContentView: View {
    
    let resume = davidMalicke
    
    var body: some View {
        if let test = resume.work![0].name {
            Text(test)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
