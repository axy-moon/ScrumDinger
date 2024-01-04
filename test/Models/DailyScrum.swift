import Foundation


struct DailyScrum : Identifiable {
    let id : UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
            self.id = id
            self.title = title
        self.attendees = attendees.map {Attendee(name: $0)}
            self.lengthInMinutes = lengthInMinutes
            self.theme = theme
        }
}

extension DailyScrum {
    struct Attendee : Identifiable {
        let id : UUID
        var name : String
        
        init(id: UUID = UUID(), name: String) {
                    self.id = id
                    self.name = name
                }
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Web Dev",
                   attendees: ["Ram Prakash","Rohit", "Dharani", "Hariharen"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "iOS Dev",
                   attendees: ["Shyam","Murali", "Kowshi", "Augxy"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Android Dev",
                   attendees: ["Shivram","Sathya", "Sneha", "Syed"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
