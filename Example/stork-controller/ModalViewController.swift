import UIKit

class ModalViewController: UIViewController {
    
    let navBar = SPFakeBarView(style: .stork)
    
    var txtf = UITextField(frame: CGRect(x: 0, y: 0,width: 100,height: 40))
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeFrame), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        
        self.view.backgroundColor = UIColor.white
        self.modalPresentationCapturesStatusBarAppearance = true
        
        self.navBar.titleLabel.text = "View"
        self.navBar.leftButton.setTitle("Cancel", for: .normal)
        self.navBar.leftButton.addTarget(self, action: #selector(self.dismissAction), for: .touchUpInside)
        self.view.addSubview(self.navBar)
        
        
        self.view.addSubview(txtf)
        txtf.becomeFirstResponder()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
//            self.presentationController?.edgeOffset(346.0)
//        }
    }
    
    @objc func dismissAction() {
        self.dismiss()
    }
    
    @objc func keyboardWillChangeFrame(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgRectValue.size.height
            
            self.presentationController?.keyboardFrameDidChanged(keyboardHeight)
        }
    }
}

