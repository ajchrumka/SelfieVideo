import UIKit

class TopBar:UIView{
    lazy var exitButton:ExitButton = createExitButton()
 //   lazy var flipButton:FlipButton = createFlipButton()
    lazy var flashButton:FlashButton = createFlashButton()
    lazy var questionBox:QuestionBox = createQuestionBox()

    override init(frame:CGRect){
        super.init(frame: frame)
        _ = exitButton
   //     _ = flipButton
        _ = flashButton
        _ = questionBox
    }
    /**
     * Boilerplate
     */
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension TopBar{
    func createExitButton() -> ExitButton{
        let btn = ExitButton()
        self.addSubview(btn)
        return btn
    }
    func createFlashButton() -> FlashButton{
        let btn = FlashButton()
        self.addSubview(btn)
        return btn
    }
    func createFlipButton() -> FlipButton{
        let btn = FlipButton()
        self.addSubview(btn)
        return btn
    }
    func createQuestionBox() -> QuestionBox{
        let box = QuestionBox()
        box.updateText(newText: showText[questionIndex])
        self.addSubview(box)
        return box
    }
// This another function that will update the question
//    func updateQuestionBox(updateText: String) {
//        questionBox.updateText(newText: updateText)
//    }
}
