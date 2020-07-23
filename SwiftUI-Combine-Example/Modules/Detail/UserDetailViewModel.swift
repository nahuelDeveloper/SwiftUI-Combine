//
//  UserDetailViewModel.swift
//  SwiftUI-Combine-Example
//
//  Created by Nahuel Jose Roldan on 23/07/2020.
//  Copyright © 2020 Ryo Aoyama. All rights reserved.
//

import SwiftUI
import Combine

class UserDetailViewModel: ObservableObject {
    
    @Published var userImage: UIImage = UIImage()
    
    func fetchImage(for user: User) {
        let request = URLRequest(url: user.avatar_url)
        _ = URLSession.shared.dataTaskPublisher(for: request)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: RunLoop.main)
            .sink(receiveValue: { [weak self] image in
                self?.userImage = image!
            })
    }
}
