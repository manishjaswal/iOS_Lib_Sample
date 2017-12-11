//
//  MyButton.swift
//  SampleApp
//
//  Created by Manish Jaswal on 12/11/17.
//  Copyright © 2017 learnings. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
@objc open class MyButton: UIView {
    
    // Connect the custom button to the custom class
    @IBOutlet weak var view: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
   public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
   open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    
    func setup() {
        view = loadViewFromNib() as! UIView!
        view.frame = bounds
        
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth,
                                 UIViewAutoresizing.flexibleHeight]
        
        addSubview(view)
        
        // Add our border here and every custom setup
        //view.layer.borderWidth = 2
        //view.layer.borderColor = UIColor.white.cgColor
        //view.titleLabel!.font = UIFont.systemFont(ofSize: 40)
    }
    
    func loadViewFromNib() -> UIView! {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
}
