//
//  DetailView.swift
//  test
//
//  Created by Kiran Gutta on 04/01/24.
//

import SwiftUI

struct DetailView: View {
    let scrum : DailyScrum
    var body: some View {
    List {
                Section(header: Text("Meeting Info")) {
                    NavigationLink(destination:MeetingView()) {
                        Label("Start Meeting", systemImage: "timer")
                            .font(.headline)
                        .foregroundColor(.accentColor) }
                    HStack {
                        Label("Length", systemImage: "clock")
                        Spacer()
                        Text("\(scrum.lengthInMinutes) minutes")
                    }
                    .accessibilityElement(children: .combine)
                    HStack {
                        Label("Theme", systemImage: "paintpalette")
                        Spacer()
                        Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                    }
                    
                }
                Section(header: Text("Attendees")){
                    ForEach(scrum.attendees) {
                        attendee in Label(attendee.name, systemImage: "person")
                    }
                }
            }
    .navigationTitle(scrum.title)
        }
    }


#Preview {
    NavigationView{
        DetailView(scrum: DailyScrum.sampleData[0])
    }
    
}