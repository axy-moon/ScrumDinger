//
//  ContentView.swift
//  test
//
//  Created by Kiran Gutta on 03/01/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value:10,total: 15)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300",systemImage: "hourglass.tophalf.filled")
                    
                    
                }
                Spacer()
                VStack(alignment: .trailing)  {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600",systemImage: "hourglass.bottomhalf.filled")
                }
                
            }
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "forward.fill")
                }
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
