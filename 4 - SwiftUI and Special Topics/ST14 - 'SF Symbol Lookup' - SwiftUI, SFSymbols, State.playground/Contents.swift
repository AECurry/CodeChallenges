//  🏔️ MTECH Code Challenge ST14: "SF Symbol Lookup"
//  Concept: Practice modifying SF Symbol images' properties to see the range of options they have for improving your app's visual design.

//  Instructions:
    //  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
    //  Add an interface that allows you to change the following properties of SF Symbols:
        //  Scale
        //  Weight (Bold/Not bold)
        //  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
        //  Color/Palette (primary, secondary, and tertiary options)
            //  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
        //  Variable coloring percentage
            //  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

    //  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg

//  ⌺ Black Diamond Challenge:
    //  Add all symbols from the SF Symbols app to your app (you can copy all symbol names by selecting all of them from the "All" category, right click, and copy names)
    //  Replace the Picker to better accommodate the new large list--what would be a better interface to sort through so many choices?
    //  Add an interface that uses the .symbolVariant(_: SymbolVariants) modifier to allow you to switch between available symbol variants

import SwiftUI
import PlaygroundSupport


enum RenderingModeChoice: String, CaseIterable, Hashable {
    case multicolor = "Multicolor"
    case monochrome = "Monochrome"
    case hierarchical = "Hierarchical"
    case palette = "Palette"

    var symbolMode: SymbolRenderingMode {
        switch self {
        case .multicolor: return .multicolor
        case .monochrome: return .monochrome
        case .hierarchical: return .hierarchical
        case .palette: return .palette
        }
    }
}

struct ContentView: View {
    
    
    let symbolChoices = [
        "cloud.rainbow.half.fill",
        "apple.terminal.on.rectangle.fill",
        "badge.plus.radiowaves.right",
        "sun.rain.fill"
    ]
    
    @State private var selectedSymbol = "cloud.rainbow.half.fill"
    
    
    @State private var scale: Image.Scale = .large
    @State private var isBold = false
    @State private var renderingMode: RenderingModeChoice = .multicolor
    
    @State private var primaryColor: Color = .blue
    @State private var secondaryColor: Color = .green
    @State private var tertiaryColor: Color = .orange
    
    @State private var variableValue: Double = 0.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                
                Picker("Select a Symbol", selection: $selectedSymbol) {
                    ForEach(symbolChoices, id: \.self) { symbol in
                        Text(symbol).tag(symbol)
                    }
                }
                .pickerStyle(.wheel)
                .padding()
                
                
                Image(systemName: selectedSymbol, variableValue: variableValue)
                    .font(.system(size: 80, weight: isBold ? .bold : .regular))
                    .imageScale(scale)
                    .symbolRenderingMode(renderingMode.symbolMode)
                    .foregroundStyle(primaryColor, secondaryColor, tertiaryColor)
                    .padding()
                
                
                Form {
                    
                    Picker("Scale", selection: $scale) {
                        Text("Small").tag(Image.Scale.small)
                        Text("Medium").tag(Image.Scale.medium)
                        Text("Large").tag(Image.Scale.large)
                    }
                    
                    Toggle("Bold Weight", isOn: $isBold)
                    
                    Picker("Rendering Mode", selection: $renderingMode) {
                        ForEach(RenderingModeChoice.allCases, id: \.self) { mode in
                            Text(mode.rawValue).tag(mode)
                        }
                    }
                    
                    Section("Colors") {
                        ColorPicker("Primary", selection: $primaryColor)
                        ColorPicker("Secondary", selection: $secondaryColor)
                        ColorPicker("Tertiary", selection: $tertiaryColor)
                    }
                    
                    Section("Variable Coloring") {
                        Slider(value: $variableValue, in: 0...1)
                        Text("Value: \(variableValue, specifier: "%.2f")")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .padding()
        }
    }
}
    
    PlaygroundPage.current.setLiveView(ContentView())
