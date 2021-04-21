//
//  Learn.swift
//  CupcakeCorner
//
//  Created by Student on 4/21/21.
//

//import Foundation
/*
 import SwiftUI
 /*
  class User: Observable Object, Codable {
     enum CodingKeys: CodingKey {
         case name
     }
  
     @Published var name = "Paul Hudson"
  
     required init(from decoder: Decoder) throws {
         let container = try decoder.container(keyedBy: CodingKeys.self)
         name = try container.decode(String.self, forKey: .name)
     }
  
     func encode(to encoder: Encoder) throws {
         var container = encoder.container(keyedBy: CodingKeys.self)
         try container.encode(name, forKey: name)
     }
  }
  
  //class goes above Content View struct
  struct ContentView....
  */
  //structs go above ContentView struct
  
  struct Response: Codable {
     var results: [Result]
  }
  
 struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
    var trackExplicitness: String
    var primaryGenreName: String
 }
 
 struct ContentView: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
                Text("Genre: \(item.primaryGenreName)")
            }
        }
        .onAppear(perform: loadData)
    }
  
     func loadData() {
         guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
             print("Invalid URL")
             return
         }
  
         let request = URLRequest(url: url)
  
         URLSession.shared.dataTask(with: request) { data, response, error in
             // step 4
             if let data = data {
                 if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                     //we have good data- go back to main thread
                     DispatchQueue.main.async {
                         //update our UI
                         self.results = decodedResponse.results
                     }
  
                     //everything is good, we can exit
                     return
                 }
             }
  
             //if we're still here it means there was a problem
             print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
         }.resume()
     }
  }
  
  struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
  }
 
 //creating a form for username and email
 import SwiftUI

 struct ContentView: View {
     
     @State private var username = ""
     @State private var email = ""
     
     var disableForm: Bool {
         username.count < 5 || email.count < 5
     }
     
     var body: some View {
         Form {
             Section {
                 TextField("Username", text: $username)
                 TextField("Email", text: $email)
             }
             
             Section {
                 Button("Create account") {
                     print("Creating account...")
                 }
             }
             .disabled(disableForm)
         }
     }
 }

  
  struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
  }
 */
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
