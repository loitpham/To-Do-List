//
//  HideKeyboardExtension.swift
//  Todo List
//
//  Created by Loi Pham on 4/10/21.
//

import SwiftUI

// Only run this part if we can import UIKit
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
