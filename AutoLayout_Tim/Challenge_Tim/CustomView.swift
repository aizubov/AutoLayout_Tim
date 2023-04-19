//
//  CustomView.swift
//  Challenge_Tim
//
//  Created by user228564 on 4/2/23.
//

import UIKit

final class CustomView: UIView {
    private let padding: CGFloat = 30.0

    private let blueView = UIView.makeView(color: .blue)
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
        addSubview(greenView)
        
        
        NSLayoutConstraint.activate([
            blueView.centerXAnchor.constraint(equalTo: centerXAnchor),
            blueView.centerYAnchor.constraint(equalTo: centerYAnchor),
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            redView.bottomAnchor.constraint(equalTo: blueView.topAnchor, constant: -padding),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            redView.topAnchor.constraint(equalTo: topAnchor),
            
            greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: padding),
            greenView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            greenView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
