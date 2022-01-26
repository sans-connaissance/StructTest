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
    var awards: [Award]?
    var certificates: [Certificate]?
    var publications: [Publication]?
    var skills: [Skill]?
    var languages: [Language]?
    var interests: [Interest]?
    var references: [Reference]?
    var projects: [Project]?
    
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

struct Award: Identifiable {
    var id: String
    var title: String?
    var date: String?
    var awarder: String?
    var summary: String?
    var thumbnail: String?
}

struct Certificate: Identifiable {
    var id: String
    var name: String?
    var date: String?
    var issuer: String?
    var url: String?
    var thumbnail: String?
}

struct Publication: Identifiable {
    var id: String
    var name: String?
    var publisher: String?
    var releaseDate: String?
    var url: String?
    var summary: String?
    var thumbnail: String?
}

struct Skill: Identifiable {
    var id: String
    var name: String?
    var level: String?
    var keywords: [String]?
}

struct Language: Identifiable {
    var id: String
    var language: String?
    var fluency: String?
}

struct Interest: Identifiable {
    var id: String
    var name: String?
    var keywords: [String]?
}

struct Reference: Identifiable {
    var id: String
    var name: String?
    var reference: String?
}

struct Project: Identifiable {
    var id: String
    var name: String?
    var description: String?
    var highlights: [String]?
    var keywords: [String]?
    var startDate: String?
    var endDate: String?
    var url: String?
    var roles: [String]?
    var entity: String?
    var type: String?
    var thumbnails: [String]?
    var videos: [Video]?
    
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
    volunteer: nil,
    education: [masterDegree, bachelorDegree, associateDegree, hackingWithSwift],
    awards: nil, // are the academic things worth putting here?
    certificates: nil,
    publications: nil,
    skills: nil,
    languages: nil,
    interests: nil,
    references: nil,
    projects: nil)
    

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

let masterDegree = Education(
    id: UUID().uuidString,
    institution: "University of Michigan",
    schoolName: "School of Information",
    degreeName: "Master of Science in Information",
    specialization: "Archives and Records Management",
    url: "https://www.si.umich.edu",
    area: "Ann Arbor, MI",
    studyType: "formal", //maybe this should be an enum later
    startDate: "2009-01-03",
    endDate: "2011-04-15",
    score: "3.8",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems"], //add all courses
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg/640px-Horace_H._Rackham_School_of_Graduate_Studies_%28March_2008%29.jpg")

let bachelorDegree = Education(
    id: UUID().uuidString,
    institution: "Siena Heights University",
    schoolName: nil,
    degreeName: "Bachelor of Business Administration",
    specialization: "Marketing",
    url: "https://www.sienaheights.edu",
    area: "Adrian, MI",
    studyType: "formal",
    startDate: nil,
    endDate: "2007-12-15",
    score: "3.8",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
               "SI 502: Networked Computing: Storage, Communication, and Processing",
               "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
               "SI 543: Introductory Programming",
               "SI 572: Database Application Design",
               "SI 622: Needs Assessment and Usability Evaluation",
               "SI 631: Content Management Systems"],
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Siena_Heights_University_Campus.JPG/640px-Siena_Heights_University_Campus.JPG")

let associateDegree = Education(
    id: UUID().uuidString,
    institution: "Macomb Community College",
    schoolName: nil,
    degreeName: "Associate of Media and Communications Arts",
    specialization: "Digital Art and Animation",
    url: "https://www.macomb.edu",
    area: "Macomb, MI",
    studyType: "formal",
    startDate: nil,
    endDate: "2004-12-15",
    score: "3.8",
    courses: ["SI 501: Contextual Inquiry and Consulting Foundations",
              "SI 502: Networked Computing: Storage, Communication, and Processing",
              "SI 510: Data Security and Privacy: Legal, Policy and Enterprise Issues",
              "SI 543: Introductory Programming",
              "SI 572: Database Application Design",
              "SI 622: Needs Assessment and Usability Evaluation",
              "SI 631: Content Management Systems"],
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/MacombcommunitycollegeMIUSA.jpg/640px-MacombcommunitycollegeMIUSA.jpg")

let hackingWithSwift = Education(
    id: UUID().uuidString,
    institution: "Hacking with Swift",
    schoolName: nil,
    degreeName: nil,
    specialization: nil,
    url: "https://www.hackingwithswift.com",
    area: nil,
    studyType: "self-paced learning",
    startDate: nil,
    endDate: nil,
    score: nil,
    courses: ["100 Days of Swift"],
    thumbnail: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/MacombcommunitycollegeMIUSA.jpg/640px-MacombcommunitycollegeMIUSA.jpg")





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
