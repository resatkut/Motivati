//
//  Provider.swift
//  MotivatiWidgetExtension
//
//  Created by Reşat Kut on 22.02.2023.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    @AppStorage("motivation",store: UserDefaults(suiteName: "group.motivati")) private var motiData : String = ""
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), moti: "Example Motivation")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), moti: motiData)
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        var entries: [SimpleEntry] = []

        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, moti: motiData)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
