import Foundation

public extension String{
    func trimmed() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func toNumber()->NSNumber? {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf.number(from: self)
    }
    
    func toFloat() -> Float? {
        return self.toNumber()?.floatValue
    }
    
    func toDouble() -> Double? {
        return self.toNumber()?.doubleValue
    }
    
    func toInt() -> Int? {
        return self.toNumber()?.intValue
    }
    
    func toBool() -> Bool {
        let trimmed = self.trimmed().lowercased()
        switch trimmed {
        case "true", "yes", "1":
            return true
        case "false", "no", "0":
            return false
        default:
            return false
        }
    }
}
