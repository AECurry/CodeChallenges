//  🏔️ MTECH Code Challenge ST18: "CoreData Debug"
//  Concept: Practice tracking down the source of an error; review CoreData skills

//  Instructions:
    //  Something has gone wrong with your chicken database app, the app you use to track and sort your chickens.
    //  It was probably your intern, Parker. He's always messing things like this up.
    //  Track down and fix the bug(s).

//  Notes:
    //  Getting CoreData compatible apps to run in preview can be tricky. Use Simulator for this app.

//  ⌺ Black Diamond Challenge:
    //  Expand the functionality of the chicken tracker app as you see fit:
        //  Add new properties to chickens,
        //  Add sorting functionality to the list view,
        //  etc.

//
// ContentView.swift
//  ST18 - 'CoreData Debug' - Debugging, CoreData
//
//  Created by Jane Madsen on 6/7/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    // @FetchRequest works directly in Views - this is the SwiftUI way!
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Chicken.name, ascending: true)],
        animation: .default)
    private var chickens: FetchedResults<Chicken>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(chickens) { chicken in
                    NavigationLink {
                        VStack {
                            Image(systemName: "bird")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .foregroundColor(.orange)
                            Text("Chicken: \(chicken.name ?? "No Name")")
                                .font(.title)
                                .padding()
                        }
                        .padding()
                    } label: {
                        HStack {
                            Image(systemName: "bird")
                                .foregroundColor(.orange)
                            Text(chicken.name ?? "Chicken")
                        }
                    }
                }
                .onDelete(perform: deleteChickens)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addChicken) {
                        Label("Add Chicken", systemImage: "plus")
                    }
                }
            }
            .navigationTitle("My Chickens 🐔")
            
            Text("Select a chicken")
        }
    }
    
    private func addChicken() {
        withAnimation {
            let newChicken = Chicken(context: viewContext)
            newChicken.name = ChickenNames.list.randomElement() ?? "Chicken"
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                print("Error saving chicken: \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    private func deleteChickens(offsets: IndexSet) {
        withAnimation {
            offsets.map { chickens[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                print("Error deleting chicken: \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
