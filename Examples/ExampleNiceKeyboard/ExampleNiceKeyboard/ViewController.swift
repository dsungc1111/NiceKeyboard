//
//  ViewController.swift
//  ExampleNiceKeyboard
//
//  Created by 최대성 on 12/20/24.
//

import UIKit
import NiceKeyboard

class ViewController: UIViewController {
    private let textField = UITextField()
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Setup UI
        setupUI()

        // Configure NiceKeyboard
        NiceKeyboard.shared.configure(
            observingView: self.view,
//            excludedViews: [button],  >> 제외할 뷰에 버튼을 추가하면 버튼 클릭 시, 키보드 hide 불가능
            keyboardWillShow: { height in
                print("Keyboard will show with height: \(height)")
            },
            keyboardWillHide: {
                print("Keyboard will hide")
            },
            dismissOnTap: true
        )
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    private func setupUI() {
        textField.frame = CGRect(x: 50, y: 200, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        textField.placeholder = "Type something"
        view.addSubview(textField)

        button.frame = CGRect(x: 50, y: 260, width: 300, height: 50)
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        view.addSubview(button)
    }
    
    @objc
    private func buttonTapped() {
        print("tapped!!")
    }
}
