//
//  WidgetView.swift
//  MotivatiWidgetExtension
//
//  Created by Reşat Kut on 22.02.2023.
//

import SwiftUI
import WidgetKit

struct WidgetView: View {
    @Environment(\.widgetFamily) var widgetFamily
    var entry:Provider.Entry
    var body: some View {
        switch widgetFamily{
        case .systemSmall :
            SmallSize(entry: entry)
        case .systemMedium:
            MediumSize(entry: entry)
        case .systemLarge:
            LargeSize(entry: entry)
        case .systemExtraLarge:
            ExtraLargeSize(entry: entry)
        case .accessoryInline:
            AccessoryInline(entry: entry)
        case .accessoryRectangular:
            AccessoryRectangular(entry: entry)
            
        default :
            Text("Not Motivation ")
            
        }
    }
}

struct SmallSize: View {
   
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .padding()
            
            HStack{Spacer()}
            Spacer()
        }
        .background(Color.yellow)
        
        
    }
}

struct MediumSize: View {
    
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
            
            HStack{Spacer()}
            Spacer()
   
        
        }
        .padding()
        .background(Color.yellow)
        
        
    }
}
struct LargeSize: View {
    
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                
            HStack{Spacer()}
            Spacer()
          
        }
        .padding()
        .background(Color.yellow)
        
     
    }
}
struct ExtraLargeSize: View {
    
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                
            
            HStack{Spacer()}
            Spacer()
           
        }
        .padding()
        .background(Color.yellow)
       
     
    }
}
struct AccessoryInline: View {
   
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .padding()
        }
    }
}

struct AccessoryRectangular: View {
   
    var entry:SimpleEntry
    
    var body: some View {
        VStack(alignment:.center){
            Text(entry.moti)
                .bold()
                .font(.subheadline)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .padding()
            
        }
    }
}
