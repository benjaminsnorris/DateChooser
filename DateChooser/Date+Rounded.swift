/*
 |  _   ____   ____   _
 | | |‾|  ⚈ |-| ⚈  |‾| |
 | | |  ‾‾‾‾| |‾‾‾‾  | |
 |  ‾        ‾        ‾
 */

import Foundation

public extension Date {
    
    /**
     Rounds down a date by the specified minutes. For use with `UIDatePicker` to
     determine the display date when using a `minuteInterval` greater than 1.
     
     - parameter minutes: Number of minutes to use in rounding. When used together
     with `UIDatePicker`, this should match the `minuteInterval`.
     */
    func rounded(minutes: Int) -> Date {
        let calendar = NSCalendar.current
        var components = calendar.dateComponents([.minute], from: self)
        guard let originalMinutes = components.minute else { return self }
        let extraMinutes = originalMinutes % minutes
        let rounded = extraMinutes / minutes
        let adjustedMinutes: Int
        if rounded == 0 {
            adjustedMinutes = -extraMinutes
        } else {
            adjustedMinutes = minutes - extraMinutes
        }
        components.minute = adjustedMinutes
        guard let roundedDate = calendar.date(byAdding: components, to: self) else { return self }
        return roundedDate
    }

}
