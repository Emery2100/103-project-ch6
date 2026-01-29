//
//  ShoppingListView.swift
//  103-project-ch6
//
//  Created by David Emery on 1/27/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Bananas", "Apples", "Carrots", "Tomatoes", "Onions", "Bread", "Milk", "Eggs"]
    @State private var item: String = ""
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                // Main Container
                VStack{
                    
                    Text("Shopping List")
                        .font(.largeTitle)
                        .foregroundStyle(Color.blue)
                        .bold()

                    // List of items
                    List{
                        ForEach(shoppingList, id: \.self) { item in
                            Text(item)
                        }
                    }
                    
                    HStack{
                        TextField("Type an item name", text: $item)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                        Button(action: {
                            shoppingList.append(item)
                            item = ""
                            
                        }){
                            Image(systemName: "arrowshape.up.fill")
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                    }
                    
                }// END: Vstack - Main container
                
            }//END/: Zstack - Background Color
            .navigationBarTitle("My Shopping App", displayMode: .inline)
            
            .toolbar{
                Menu{
                    
                    Button("Sort A -> Z"){
                       // shoppingList.sort()
                        //sorted()
                        
                        shoppingList = shoppingList.sorted(by: <)
                        
                    }// END: Sort a-z button
                    
                    Button("Reverse"){
                        shoppingList.reverse()
                        //reversed()
                    }// END: reverse button
                    
                }// End: Menu
                label:{
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                }// End: label
            }// END: toolbar
        }// END: NavView
    } // END: body
}// END: ShoppingListView

#Preview {
    ShoppingListView()
}
