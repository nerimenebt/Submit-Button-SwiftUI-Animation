//
//  HapticManager.swift
//  SubmitView
//
//  Created by Nerimene on 4/5/2021.
//

import UIKit

struct HapticManager {
    
    enum NotificationFeedbackType {
        case success, info, failure
    }
    
    enum ImpactFeedbackType {
        case light, medium, heavy
    }
    
    // MARK:- functions
    func makeNotifiationFeedback(mode: NotificationFeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        
        if (mode == .success) {
            generator.notificationOccurred(.success)
        } else if (mode == .failure) {
            generator.notificationOccurred(.error)
        } else {
            generator.notificationOccurred(.warning)
        }
    }
    
    func makeSelectionFeedback() {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
    func makeImpactFeedback(mode: ImpactFeedbackType) {
        var generator: UIImpactFeedbackGenerator
        if (mode == .light) {
            generator = UIImpactFeedbackGenerator(style: .light)
        } else if (mode == .medium) {
            generator = UIImpactFeedbackGenerator(style: .medium)
        } else {
            generator = UIImpactFeedbackGenerator(style: .heavy)
        }
        generator.prepare()
        generator.impactOccurred()
    }
}
