//
//  Profile.swift
//  money-manage
//
//  Created by kekeli on 20/11/2022.
//

import SwiftUI
struct FavoriteCities: Identifiable {
    var id: String = UUID().uuidString
    var city: String
    var icon: String
}

struct Profile: View {
    
 
    
    @State var favoriteCities = [
        FavoriteCities(city: "Credit Card", icon: "creditcard.and.123"),
        FavoriteCities(city: "address", icon: "location"),
        FavoriteCities(city: "Notification", icon: "bell"),
        FavoriteCities(city: "Verification", icon: "checkmark.seal"),
        FavoriteCities(city: "Customers suppoort", icon: "phone"),
        FavoriteCities(city: "About us", icon: "person.2"),
        FavoriteCities(city: "Logout", icon: "arrowshape.turn.up.left.2"),
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 400, height: 900)
                    .cornerRadius(55)
                    .padding(.top, 300)
                    .shadow(color: .white.opacity(0.2), radius: 20, x: 0.0, y: 0)
                VStack{
                    Text("Profile")
                        .foregroundColor(.white)
                        .bold()
                        .font(.largeTitle)
                        .padding(.bottom, 700)
                    
                    
                    
                }
                
                VStack{
                    
                    Image("keli")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .cornerRadius(30)
                        .padding(.bottom, 500)
                        .padding(.trailing,280)
                    
                    
                }
                
                Text("FENUKU KEKELI")
                    .bold()
                    .font(.headline)
                    .padding(.trailing,40)
                    .padding(.bottom, 480)
                
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 130, height: 3)
                    .padding(.trailing,40)
                    .padding(.bottom, 450)
                
                
                
                
                Button {
                    
                    Text("Edit profile")
                    
                } label: {
                    Text("Edit profile")
                        .foregroundColor(.gray)
                    
                        .padding(.leading,280)
                        .padding(.bottom, 430)
                }
//
                List{
                    
                    ForEach(favoriteCities) {favorite in
                         
                        NavigationLink(
                            
                            destination: Text(favorite.city), label: {
                                
                                HStack{
                                    Image(systemName: favorite.icon)
                                    Text(favorite.city)
                         
                                        .foregroundColor(Color.black)
                                        .font(.headline)
                                        .bold()
                                       
                                }
                                .padding(.top,30)
                                
                            })
                       
                    }
                    .listRowSeparator(.hidden)
                   
                }
                .padding(.top, 400.0)
            }
                
                
                    }
                    }
                }
                    
                
                
            
    


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
