//
//  LoginController.swift
//  FireChat
//
//  Created by deep chandan on 29/06/21.
//

import UIKit
class LoginController: UIViewController {
    //MARK:- Properties
    private let iconImage : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "bubble.right")
        iv.tintColor = .white
        return iv
    }()
    //MARK:- LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.barStyle = .black
    }
    func configureUI()
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemPurple.cgColor , UIColor.systemPink.cgColor]
        gradientLayer.locations = [0,1]
        gradientLayer.frame = view.frame
        view.layer.addSublayer(gradientLayer)
        view.addSubview(iconImage)
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iconImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        iconImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        iconImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
