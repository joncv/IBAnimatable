//
//  Created by Jake Lin on 11/19/15.
//  Copyright © 2015 Jake Lin. All rights reserved.
//

import UIKit

@IBDesignable public class AnimatableImageView: UIImageView, BorderDesignable, BoxShadowDesignable, BlurDesignable, TintDesignable {
  
  // MARK: - BorderDesignable
  @IBInspectable public var borderColor: UIColor = UIColor.clearColor() {
    didSet {
      configBorderColor()
    }
  }
  
  @IBInspectable public var borderWidth: CGFloat = 0 {
    didSet {
      configBorderWidth()
    }
  }
  
  @IBInspectable public var borderRadius: CGFloat = 0 {
    didSet {
      configBorderRadius()
    }
  }
  
  // MARK: - BoxShadowDesignable
  @IBInspectable public var shadowColor: UIColor = UIColor.clearColor() {
    didSet {
      configShadowColor()
    }
  }
  
  @IBInspectable public var shadowRadius: CGFloat = 0 {
    didSet {
      configShadowRadius()
    }
  }
  
  @IBInspectable public var shadowOpacity: CGFloat = 0 {
    didSet {
      configShadowOpacity()
    }
  }
  
  @IBInspectable public var shadowOffsetX: CGFloat = 0 {
    didSet {
      configShadowOffsetX()
    }
  }
  
  @IBInspectable public var shadowOffsetY: CGFloat = 0 {
    didSet {
      configShadowOffsetY()
    }
  }
  
  // MARK: - BlurDesignable
  @IBInspectable public var blurEffectStyle: String = ""
  
  // MARK: - TintDesignable
  @IBInspectable public var tintedColor: UIColor = UIColor.clearColor()
  @IBInspectable public var tintOpacity: CGFloat = 0
  
  // MARK: - Life cycle
  
  override public func prepareForInterfaceBuilder() {
    configTintedColor()
    configBlurEffectStyle()
  }
  
  public override func awakeFromNib() {
    configTintedColor()
    configBlurEffectStyle()
  }
  
  public override func layoutSubviews() {
    super.layoutSubviews()
  }
}