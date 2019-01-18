//
//  ViewController.swift
//  HYRectCorner-swift
//
//  Created by Mac on 2019/1/18.
//  Copyright © 2019年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label = UILabel(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        label.backgroundColor = UIColor.orange
        label.textColor = UIColor.white
        label.text = "圆角设置"
        label.textAlignment = .center
        
        label.layer.mask = self.configRectCorner(view: label, corner: [.topRight, .bottomRight], radii: CGSize(width: 15, height: 15))
        
        self.view.addSubview(label)
    }
    
    
    /// 圆角设置
    ///
    /// - Parameters:
    ///   - view: 需要设置的控件
    ///   - corner: 哪些圆角
    ///   - radii: 圆角半径
    /// - Returns: layer图层
    func configRectCorner(view: UIView, corner: UIRectCorner, radii: CGSize) -> CALayer {
        
        let maskPath = UIBezierPath.init(roundedRect: view.bounds, byRoundingCorners: corner, cornerRadii: radii)
        
        let maskLayer = CAShapeLayer.init()
        maskLayer.frame = view.bounds
        maskLayer.path = maskPath.cgPath
        
        return maskLayer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

