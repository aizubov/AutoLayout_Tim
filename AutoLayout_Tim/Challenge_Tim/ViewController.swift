//
//  ViewController.swift
//  Challenge_Tim
//
//  Created by user228564 on 4/2/23.
//

import UIKit

final class ViewController: UIViewController {
    
    var widthConstraint: NSLayoutConstraint!
    var heightConstraint: NSLayoutConstraint!

    private let customView: CustomView = {
        let view = CustomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
        
        customView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthConstraint = customView.widthAnchor.constraint(equalToConstant: 0)
        heightConstraint = customView.heightAnchor.constraint(equalToConstant: 0)
        
        widthConstraint.isActive = true
        heightConstraint.isActive = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.orientationChanged), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    @objc func orientationChanged()  {
        switch UIDevice.current.orientation {
        case .portrait:
            widthConstraint.constant = 180
            heightConstraint.constant = 600
        case .portraitUpsideDown:
            widthConstraint.constant = 600
            heightConstraint.constant = 180
        case .landscapeLeft:
            widthConstraint.constant = 600
            heightConstraint.constant = 210
        case .landscapeRight:
            widthConstraint.constant = 50
            heightConstraint.constant = 200
        default:
            widthConstraint.constant = 10
            heightConstraint.constant = 10
            print("Device is in an unknown orientation")
        }
        
    }

    
}


