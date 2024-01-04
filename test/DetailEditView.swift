//
//  DetailEditView.swift
//  test
//
//  Created by Kiran Gutta on 04/01/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title",text : $scrum.title)
                
                HStack{
                    Slider(value : $scrum.lengthInMinutesAsDouble,in :  5...30, step : 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            Section(heder:Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
