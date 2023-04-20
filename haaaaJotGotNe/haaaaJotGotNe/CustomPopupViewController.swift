//
//  CustomPopupViewController.swift
//  haaaaJotGotNe
//
//  Created by 이용수 on 2023/04/20.
//

import UIKit

class CustomPopupViewController: UIViewController{
    
    @IBOutlet weak var naverBtn : UIButton!
    @IBOutlet weak var googleBtn : UIButton!
    
    var myPopupDelegate : PopupDelete?
    var naverBtnCompletionClosure: (()-> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopupViewController - ViewDidLoad() is called")
        naverBtn.layer.cornerRadius = 10
        googleBtn.layer.cornerRadius = 30
    }
    //MARK: IBActions
    @IBAction func goToNaver(_ sender: UIButton) {
        print("CustomPopupViewController - goToNaver() - called")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goToGoogle(_ sender: UIButton) {
        print("CustomPopupViewController - goToGoogle() called")
        self.dismiss(animated: true, completion: nil)
       //지금 goToNaver 버튼을 누른것임.
        myPopupDelegate?.goToNaver()
    }
    
   
    
}

