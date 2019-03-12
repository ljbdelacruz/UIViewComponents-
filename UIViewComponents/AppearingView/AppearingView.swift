//
//  AppearingView.swift
//  UIViewComponents
//
//  Created by Lainel John Dela Cruz on 12/03/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import UIKit

public enum AnimationDirection{
    case up;
    case down;
}

public class AppearingView: UIView {
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {}
    public var duration:TimeInterval=0.5;
    public var animationDirection:AnimationDirection = .up;
    
    public func hide(){
        UIView.animate(withDuration: self.duration, animations: {
            self.setPosition(value: self.animationDirection == .up ? -130 : +130);
            self.alpha=0;
        })
    }
    public func show(){
        UIView.animate(withDuration: self.duration, animations: {
            self.setPosition(value: self.animationDirection == .up ? +130 : -130)
            self.alpha=1;
        })
    }
    public func myinit(animationDir:AnimationDirection){
        self.alpha=0;
        self.setPosition(value: animationDir == .up ? +130 : -130)
    }
    private func setPosition(value:CGFloat){
        self.frame.origin.y = self.frame.origin.y - value;
    }

}
