//
//  File.swift
//  FireChat
//
//  Created by naresh banavath on 29/06/21.
//

import UIKit

extension UIView
{
    func anchor(top : NSLayoutYAxisAnchor? = nil , left : NSLayoutXAxisAnchor? = nil , bottom : NSLayoutYAxisAnchor? = nil , right : NSLayoutXAxisAnchor? = nil , paddingTop : CGFloat = 0 , paddingLeft : CGFloat = 0 , paddingBottom : CGFloat = 0, paddingRight : CGFloat = 0 , width : CGFloat? = nil , height : CGFloat? = nil)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top
        {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left
        {
            self.leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom
        {
            self.topAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right
        {
            self.leadingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if let width = width
        {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height
        {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    //func setDimension(
}
