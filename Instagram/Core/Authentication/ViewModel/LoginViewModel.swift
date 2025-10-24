//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Devon Connelly on 2024-02-11.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
