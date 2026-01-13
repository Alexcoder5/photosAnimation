//
//  UICoordinator.swift
//  photosAnimation
//
//  Created by Alexandr Gutul on 10/01/2026.
//

import SwiftUI

@Observable
class UICoordinator {
    var items: [Item] = sampleItems.compactMap({
        Item(title: $0.title, image: $0.image, previewImage: $0.image)
    })
    
    /// Animation
    var selectedItem: Item?
    var animatedView: Bool = false
    var showDetailView: Bool = false
    /// Scroll Positions
    var detailScrolPosition: String?
    var detailIndicatorPosition: String?
    /// Gesture
    var offset: CGSize = .zero
    var dragProgress: CGFloat = 0
    
    func didDetailPageChanged() {
        if let updatedItem = items.first(where: { $0.id == detailScrolPosition }) {
            selectedItem = updatedItem
            withAnimation(.easeInOut(duration: 0.1)) {
                detailIndicatorPosition = updatedItem.id
            }
        }
    }
    
    func didDetailIndicatorPageChanged() {
        if let updatedItem = items.first(where: { $0.id == detailIndicatorPosition }) {
            selectedItem = updatedItem
            detailScrolPosition = updatedItem.id
        }
    }
    
    func toggleView(show: Bool) {
        if show {
            detailScrolPosition = selectedItem?.id
            detailIndicatorPosition = selectedItem?.id
            withAnimation(.easeInOut(duration: 0.15), completionCriteria: .removed) {
                animatedView = true
            } completion: {
                self.showDetailView = true
            }
        } else {
            showDetailView = false
            withAnimation(.easeInOut(duration: 0), completionCriteria: .removed) {
                animatedView = false
                offset = .zero
            }  completion: {
                self.resetAnimationProperties()
            }
        }
    }
    
    func resetAnimationProperties() {
        selectedItem = nil
        detailScrolPosition = nil
        offset = .zero
        dragProgress = 0
        detailIndicatorPosition = nil
    }
}

