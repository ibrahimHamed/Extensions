import UIKit


// Extension that round decimal number to x of digits decimal number

extension Double {
    func round(to places : Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}
var pi = 3.1415926535
pi.round(to: 3) // = 3.142




// Extension that convert button to circle

extension UIButton {
    func makeCircle(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .blue
button.makeCircle()






