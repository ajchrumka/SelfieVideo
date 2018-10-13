import UIKit

class ShareButton:UIButton{
    var onClick:()->Void = { Swift.print("Default onClick()")}
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font =  .systemFont(ofSize: 14)
        self.setTitle("Save", for: .normal)
        self.layer.cornerRadius = frame.height/2
        self.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
    }
    @objc func buttonTouched(sender:UIButton) {
        print(questionIndex)
        if (questionIndex < 3) {print(showText[questionIndex])}
        questionIndex = questionIndex + 1
        print(questionIndex)
        if (questionIndex < 3) {print(showText[questionIndex])}
 // I would call the function here if that was required to update the question
        onClick()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

