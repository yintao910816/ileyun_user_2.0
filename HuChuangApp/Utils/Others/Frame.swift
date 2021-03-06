//
//  MacroPublic.swift
//  StoryReader
//
//  Created by 020-YinTao on 2016/10/28.
//  Copyright © 2016年 020-YinTao. All rights reserved.
//

import UIKit

// MARK: - 适配

public func adaptationWidth(_ width: CGFloat) -> CGFloat {
    return (PPScreenW/375.0) * width
}

public func adaptationHeight(_ height: CGFloat) -> CGFloat {
    return (PPScreenH/667.0) * height
}

struct LayoutSize {
    
    static func height(containsTop viewController: UIViewController) ->CGFloat {
        return PPScreenH - UIApplication.shared.statusBarFrame.height - (viewController.navigationController?.navigationBar.height ?? 0)
    }
    
    static func height(containsTopAndBottom viewController: UIViewController) ->CGFloat {
        return PPScreenH - UIApplication.shared.statusBarFrame.height - (viewController.navigationController?.navigationBar.height ?? 0) - (viewController.tabBarController?.tabBar.height ?? 0)
    }
    
    static func bottomHeight(_ viewController: UIViewController) ->CGFloat {
        return viewController.tabBarController?.tabBar.height ?? 0
    }
    
    static var bottomVirtualArea: CGFloat {
        get {
            return UIDevice.current.isX == true ? 34.0 : 0
        }
    }
    
    static var topVirtualArea: CGFloat {
        get {
            //            return UIDevice.current.isX == true ? UIApplication.shared.statusBarFrame.height : 0
            return UIDevice.current.isX == true ? 44 : 0
        }
    }
    
    static var topVirtualArea_1: CGFloat {
        get {
            return UIDevice.current.isX == true ? 44 : 24
        }
    }
    
    static var fitTopArea: CGFloat {
        get {
            return UIDevice.current.isX == true ? 24 : 0
        }
    }
    
    static var saveAreaHeight: CGFloat { get { return (PPScreenH - topVirtualArea - bottomVirtualArea) } }
    
    static var saveAreaFrame: CGRect {
        get {
            return CGRect.init(x: 0, y: topVirtualArea, width: PPScreenW, height: saveAreaHeight)
        }
    }
    
}
