//
//  UserDetailView.swift
//  SwiftUI-Combine-Example
//
//  Created by Nahuel Jose Roldan on 23/07/2020.
//  Copyright © 2020 Ryo Aoyama. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    @ObservedObject var viewModel = UserDetailViewModel()
    
    var user: User
    
    var body: some View {
        VStack {
            Image(uiImage: viewModel.userImage)
                .resizable()
                .frame(width: CGFloat(200.0), height: CGFloat(200.0))
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 5, trailing: 0))
                .onAppear { self.viewModel.fetchImage(for: self.user) }
            Text(user.login)
                .font(Font.system(size: 20).bold())
            Text(String(user.id))
                .font(Font.system(size: 16))
                .foregroundColor(.gray)
            Spacer()
        }
        .navigationBarTitle("Profile Detail", displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User.mockUser())
    }
}
