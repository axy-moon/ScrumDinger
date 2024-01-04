//
//  testApp.swift
//  test
//
//  Created by Kiran Gutta on 03/01/24.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: DailyScrum.sampleData)
        }
    }
}
