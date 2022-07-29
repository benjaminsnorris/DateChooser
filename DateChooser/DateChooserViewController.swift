/*
 |  _   ____   ____   _
 | | |‾|  ⚈ |-| ⚈  |‾| |
 | | |  ‾‾‾‾| |‾‾‾‾  | |
 |  ‾        ‾        ‾
 */

import UIKit

public protocol DateChooserViewControllerDelegate: AnyObject {
    func backgroundTapped()
}

open class DateChooserViewController: UIViewController {
    
    // MARK: - IB properties
    
    @IBOutlet public weak var dateChooser: DateChooser!
    
    
    // MARK: - Public properties
    
    public weak var delegate: DateChooserViewControllerDelegate?
    
    
    // MARK: - Internal functions
    
    @IBAction func backgroundTapped() {
        delegate?.backgroundTapped()
    }
    
}
