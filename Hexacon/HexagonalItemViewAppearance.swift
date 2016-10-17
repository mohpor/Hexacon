//
//  HexagonalViewItemAppearance.swift
//  Hexacon
//
//  Created by Gautier Gdx on 05/03/16.
//  Copyright © 2016 Gautier. All rights reserved.
//

import UIKit

public enum HexagonalAnimationType { case spiral, circle, none }

public struct HexagonalItemViewAppearance {
    
    //item appearance
    public let needToConfigureItem: Bool
    public let itemSize: CGFloat
    public let itemSpacing: CGFloat
    public let itemBorderWidth: CGFloat
    public let itemBorderColor: UIColor
    
    //animation
    public let animationType: HexagonalAnimationType
    public let animationDuration: TimeInterval
    
    public init(needToConfigureItem: Bool,
            itemSize: CGFloat,
            itemSpacing: CGFloat,
            itemBorderWidth: CGFloat,
            itemBorderColor: UIColor,
            animationType: HexagonalAnimationType,
            animationDuration: TimeInterval) {
        
        self.needToConfigureItem = needToConfigureItem
        self.itemSize = itemSize
        self.itemSpacing = itemSpacing
        self.itemBorderWidth = itemBorderWidth
        self.itemBorderColor = itemBorderColor
        self.animationType = animationType
        self.animationDuration = animationDuration
    }
    
    static func defaultAppearance() -> HexagonalItemViewAppearance {
        return HexagonalItemViewAppearance(needToConfigureItem: false,
            itemSize: 50,
            itemSpacing: 10,
            itemBorderWidth: 5,
            itemBorderColor: UIColor.gray,
            animationType: .circle,
            animationDuration: 0.2)
    }
}

