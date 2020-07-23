//
//  UserDetailView.swift
//  SwiftUI-Combine-Example
//
//  Created by Nahuel Jose Roldan on 23/07/2020.
//  Copyright © 2020 Ryo Aoyama. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    
    var user: User
    
    var body: some View {
        Text("Detail")
            .navigationBarTitle(user.login)
    }
}
