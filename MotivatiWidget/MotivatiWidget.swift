//
//  MotivatiWidget.swift
//  MotivatiWidget
//
//  Created by Reşat Kut on 22.02.2023.
//

import WidgetKit
import SwiftUI

struct MotivatiWidget: Widget {
    let kind: String = "MotivatiWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an motivation widget.")
        .supportedFamilies([.systemMedium,.systemLarge,.systemSmall,.systemExtraLarge,.accessoryInline,.accessoryRectangular])
    }
}

struct MotivatiWidget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView(entry: SimpleEntry(date: Date(), moti: "My Motivation"))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
